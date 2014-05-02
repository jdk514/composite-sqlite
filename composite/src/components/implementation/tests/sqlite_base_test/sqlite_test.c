/**
 *This file contains a combination of basic tests for sqlite
 *use the runscript sqlite_base_test.sh in runscripts folder to
 *run this component
 */

#include <cos_component.h>
#include <print.h>
#include <sched.h>
#include <cbuf.h>
#include <evt.h>
#include <torrent.h>
#include <cos_synchronization.h>
#include <cos_alloc.h>
#include "sqlite3.h"

/*Callback provides an output for the results of a query*/
static int callback(void *NotUsed, int argc, char **argv, char **azColName){
  int i;
	 for(i=0; i<argc; i++){
		printc("SQLITE: %s = %s\n", azColName[i], argv[i] ? argv[i] : "NULL");
  }
  printc("\n");
  return 0;
}

/*Create a database and run through the basic queries*/
void cos_init(void) {
	sqlite3 *db;
	char *zErrMsg = 0;
	int rc;
	char *sql;
	int *ptr;
	/* Open database */
	printc("Sqlite: Begin Sqlite Base Test\n");
	rc = sqlite3_open(":memory:", &db);
	if (rc) {
		printc("SQLITE: Can't open database: %s\n", sqlite3_errmsg(db));
		return;
	} else {
		printc("SQLITE: Opened database successfully\n");
	}

	
	/* Create Table */
	sql = "CREATE TABLE PEOPLE("  \
			"ID INT PRIMARY KEY     NOT NULL," \
			"NAME           TEXT    NOT NULL," \
			"AGE            INT     NOT NULL," \
			"ADDRESS        CHAR(50));";
	rc = sqlite3_exec(db, sql, callback, 0, &zErrMsg);
	if( rc != SQLITE_OK ){
		printc("SQLITE: SQL error: %s\n", zErrMsg);
		sqlite3_free(zErrMsg);
	}else{
		printc("SQLITE: Table created successfully\n");
	}

	/*Insert Table Data*/
	printc("SQLITE: Insert 3 rows into the table (Joel, Kevin, Mike)\n");
	sql = "INSERT INTO PEOPLE (ID,NAME,AGE,ADDRESS) "	\
         "VALUES (1, 'Joel', 21, 'Washington DC');"	\
         "INSERT INTO PEOPLE (ID,NAME,AGE,ADDRESS) "	\
         "VALUES (2, 'Kevin', 30, 'Rio');"	\
         "INSERT INTO PEOPLE (ID,NAME,AGE,ADDRESS)"	\
         "VALUES (3, 'Mike', 23, 'New York');";
    rc = sqlite3_exec(db, sql, callback, 0, &zErrMsg);
	if( rc != SQLITE_OK ){
		printc("SQLITE: SQL error: %s\n", zErrMsg);
		sqlite3_free(zErrMsg);
	}else{
		printc("SQLITE: Data inserted successfully\n");
	}

	/*Query the Database*/
	printc("SQLITE: Select * From the table\n");
	sql = "SELECT * FROM PEOPLE";
	rc = sqlite3_exec(db, sql, callback, 0, &zErrMsg);
	if( rc != SQLITE_OK ){
		printc("SQLITE: SQL error: %s\n", zErrMsg);
		sqlite3_free(zErrMsg);
	}else{
		printc("SQLITE: Data Queried\n");	
	}

	/*Update a field*/
	printc("SQLITE: Update Joel to Age 22\n");
	sql = "UPDATE PEOPLE set AGE = 22 where ID=1; " \
			"SELECT * from PEOPLE";
	rc = sqlite3_exec(db, sql, callback, 0, &zErrMsg);
	if( rc != SQLITE_OK ){
    	printc("SQLITE: SQL error: %s\n", zErrMsg);
    	sqlite3_free(zErrMsg);
	}else{
    	printc("SQLITE: Update done successfully\n");
	}

	/*Remove a field*/
	printc("SQLITE: Remove Kevin from the table\n");
	sql = "DELETE from PEOPLE where ID=2; " \
		"SELECT * from PEOPLE";
	rc = sqlite3_exec(db, sql, callback, 0, &zErrMsg);
	if( rc != SQLITE_OK ){
    	printc("SQLITE: SQL error: %s\n", zErrMsg);
    	sqlite3_free(zErrMsg);
	}else{
    	printc("SQLITE: Removal done successfully\n");
	}

	sqlite3_close(db);
	printc("SQLITE: Database Closed\n");
	printc("SQLITE: Test Complete\n");
	return;
}

