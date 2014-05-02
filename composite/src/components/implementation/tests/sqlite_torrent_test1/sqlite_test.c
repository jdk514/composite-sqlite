#include <cos_component.h>
#include <print.h>
#include <sched.h>
#include <cbuf.h>
#include <evt.h>
#include <torrent.h>
#include <cos_synchronization.h>
#include <cos_alloc.h>
#include "sqlite3.h"

static int callback(void *NotUsed, int argc, char **argv, char **azColName){
  int i;
	 for(i=0; i<argc; i++){
		printc("%s = %s\n", azColName[i], argv[i] ? argv[i] : "NULL");
  }
  printc("\n");
  return 0;
}

void cos_init(void) {
	sqlite3 *db;
	char *zErrMsg = 0;
	int rc;
	char *sql;
	int *ptr;
	printc("step1\n");
	/* Open database */
	rc = sqlite3_open(":memory:", &db);
	if (rc) {
		printc("Can't open database: %s\n", sqlite3_errmsg(db));
		return;
	} else {
		printc("Opened database successfully\n");
	}

	sqlite3_stmt *stmt;
	sql = "CREATE TABLE COMPANY("  \
			"ID INT PRIMARY KEY     NOT NULL," \
			"NAME           TEXT    NOT NULL," \
			"AGE            INT     NOT NULL," \
			"ADDRESS        CHAR(50)," \
			"SALARY         REAL );";
	
	/* Create Table */
	rc = sqlite3_exec(db, sql, callback, 0, &zErrMsg);
	printc("it passed\n");
	if( rc != SQLITE_OK ){
		printc("SQL error: %s\n", zErrMsg);
		sqlite3_free(zErrMsg);
	}else{
		printc("Table created successfully\n");
	}

	/*Insert Table Data*/
	sql = "INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY) "	\
         "VALUES (1, 'Paul', 32, 'California', 20000.00 );"	\
         "INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY)"	\
         "VALUES (2, 'Allen', 25, 'Texas', 15000.00 );";
    rc = sqlite3_exec(db, sql, callback, 0, &zErrMsg);
	printc("it passed\n");
	if( rc != SQLITE_OK ){
		printc("SQL error: %s\n", zErrMsg);
		sqlite3_free(zErrMsg);
	}else{
		printc("Data inserted successfully\n");
	}

	/*Query the Database*/
	sql = "SELECT * FROM COMPANY";
	rc = sqlite3_exec(db, sql, callback, 0, &zErrMsg);
	printc("it passed\n");
	if( rc != SQLITE_OK ){
		printc("SQL error: %s\n", zErrMsg);
		sqlite3_free(zErrMsg);
	}else{
		printc("Data Queried\n");	
	}

	sqlite3_close(db);
	return;
}

