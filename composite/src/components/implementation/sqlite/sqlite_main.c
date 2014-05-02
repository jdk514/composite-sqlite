#include <cos_component.h>
#include <print.h>
#include <sched.h>
#include <cbuf.h>
#include <evt.h>
#include <torrent.h>
#include <cos_synchronization.h>
#include <cos_alloc.h>
#include "sqlite3.h"

char *query = "query";
char *response = "response";
char response_buffer[1024];
char buffer[1024];
char *sql;
static volatile int test_thd = 0;

/*Read Query Response*/
int read_query() {
	td_t read_tor;
	long evt;
	unsigned int ret;

	printc("SQLITE: Begin Reading Query\n");
	evt = evt_split(cos_spd_id(), 0, 0);
	read_tor = tsplit(cos_spd_id(), td_root, query, strlen(query), TOR_ALL, evt);
	if (read_tor < 1) {
		printc("SQLITE: split failed %d\n", read_tor);
		return 1;
	}
	ret = tread_pack(cos_spd_id(), read_tor, buffer, 1023);
	if (ret > 0) buffer[ret] = '\0';
	printc("SQLITE: READ %d : %s\n", ret,  buffer);
	strcpy(sql, buffer);
	buffer[0] = '\0';
	trelease(cos_spd_id(), read_tor);
	return 0;
}

/*Send Query Response*/
int write_response() {
	td_t write_tor;
	long evt;
	unsigned int ret;

	printc("SQLITE: Begin querying db\n");
	evt = evt_split(cos_spd_id(), 0, 0);
	write_tor = tsplit(cos_spd_id(), td_root, response, strlen(response), TOR_ALL, evt);
	if (write_tor < 1) {
		printc("SQLITE: split failed %d\n", write_tor);
		return 1;
	}
	ret = twrite_pack(cos_spd_id(), write_tor, response_buffer, strlen(response_buffer));
	printc("SQLITE: WROTE %d (%s), ret %d\n", strlen(response_buffer), response_buffer, ret);
	trelease(cos_spd_id(), write_tor);
	return 0;
}

static int callback(void *NotUsed, int argc, char **argv, char **azColName){
	int i;
	char *response = "";
	response_buffer[0] = '\0';
	for(i=0; i<argc; i++){
		printc("SQLITE: %s = %s\n", azColName[i], argv[i] ? argv[i] : "NULL");
		if ((1024 - strlen(response_buffer)) < strlen("%s = %s\n", azColName[i], argv[i] ? argv[i] : "NULL")) {
			strcat(response_buffer, ("%s = %s\n", azColName[i], argv[i] ? argv[i] : "NULL"));		
		} else {
			return 1;
		}
  }
  printc("\n");
  return 0;
}

void run_sqlite() {
	sqlite3 *db;
	char *zErrMsg = 0;
	int rc;

	/* Open database */
	rc = sqlite3_open(":memory:", &db);
	if (rc) {
		printc("SQLITE: Can't open database: %s\n", sqlite3_errmsg(db));
		return;
	} else {
		printc("SQLITE: Opened database successfully\n");
	}

	while(1) {
		rc = read_query();
		if (rc > 0) {
			pritnc("SQLITE: Error Reading Query\n");
		}
		if (sql == "SQLITE: Close DB") {
			sqlite3_close(db);
			return;
		}
		rc = sqlite3_exec(db, sql, callback, 0, &zErrMsg);
			if( rc != SQLITE_OK ){
				printc("SQLITE: SQL error: %s\n", zErrMsg);
				sqlite3_free(zErrMsg);
			}else{
				printc("SQLITE: Data Queried\n");	
			}
		write_response();
		if (rc > 0) {
			printc("SQLITE: Error Writing Response\n");
		}
	}
	return;
}

void cos_init(void) {
	union sched_param sp;
	sp.c.type  = SCHEDP_PRIO;
	sp.c.value = 4;

    test_thd = cos_thd_create(run_sqlite, NULL, sp.v, 0, 0);
    return;
}

