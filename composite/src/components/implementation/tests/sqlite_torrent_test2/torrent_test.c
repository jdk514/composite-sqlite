#include <cos_component.h>
#include <print.h>
#include <sched.h>
#include <cbuf.h>
#include <evt.h>
#include <torrent.h>
#include <timed_blk.h>
#include <cos_synchronization.h>

//#define VERBOSE 1
#ifdef VERBOSE
#define printv(fmt,...) printc(fmt, ##__VA_ARGS__)
#else
#define printv(fmt,...) 
#endif

char buffer[1024];
char response_buffer[1024];
char *query = "query";
char *response = "response";
static volatile int test_thd = 0;

/*Read Query Response*/
int db_read() {
	td_t read_tor;
	long evt;
	unsigned int ret;

	printc("SQLITE: Begin reading response\n");
	evt = evt_split(cos_spd_id(), 0, 0);
	read_tor = tsplit(cos_spd_id(), td_root, response, strlen(response), TOR_ALL, evt);
	if (read_tor < 1) {
		printc("SQLITE: split failed %d\n", read_tor);
		return 1;
	}
	ret = tread_pack(cos_spd_id(), read_tor, buffer, 1023);
	if (ret > 0) buffer[ret] = '\0';
	printc("SQLITE: READ %d : %s\n", ret,  buffer);
	strcpy(response_buffer, buffer);
	buffer[0] = '\0';
	trelease(cos_spd_id(), read_tor);
	return 0;
}

/*Query the DB*/
int db_query(sql_statement) {
	td_t write_tor;
	long evt;
	unsigned int ret;

	printc("SQLITE: Begin querying db\n");
	evt = evt_split(cos_spd_id(), 0, 0);
	write_tor = tsplit(cos_spd_id(), td_root, query, strlen(query), TOR_ALL, evt);
	if (write_tor < 1) {
		printc("SQLITE: split failed %d\n", write_tor);
		return 1;
	}
	ret = twrite_pack(cos_spd_id(), write_tor, sql_statement, strlen(sql_statement));
	printc("SQLITE: WROTE %d (%s), ret %d\n", strlen(sql_statement), sql_statement, ret);
	trelease(cos_spd_id(), write_tor);
	return 0;
}

static void torrent_test() {
	int rc;

	db_query("SELECT * FROM PEOPLE");
	if (rc > 0) {
		printc("SQLITE: Error Writing Query\n");
		return;
	}
	db_read();
	if (rc > 0) {
		printc("SQLITE: Error Reading Response Torrent\n");
		return;
	}
	printc("%s\n", response_buffer);

	return;
}

void cos_init(void)
{	
	union sched_param sp;
	sp.c.type  = SCHEDP_PRIO;
	sp.c.value = 4;

    test_thd = cos_thd_create(torrent_test, NULL, sp.v, 0, 0);
    return;
}

