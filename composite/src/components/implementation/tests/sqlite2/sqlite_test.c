#include <cos_component.h>
#include <print.h>
#include <sched.h>
#include <cbuf.h>
#include <evt.h>
#include <torrent.h>
#include <cos_synchronization.h>
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
	
	rc = sqlite3_prepare_v2(db, sql, -1, &stmt, NULL);
	printc("prepared the table creation\n");
	if (rc == SQLITE_OK) {
		rc = sqlite3_step(stmt);
		if (rc == SQLITE_ERROR) {
			printc("Error creating the table\n");
			return;
		}
		printc("successfully created the table\n");
	}
	if(sqlite3_finalize(stmt) == SQLITE_OK) {
		printc("Finalized\n");
	} else {
		printc("Falied to finalize\n");
	}

	sql = "INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY)" \
         "VALUES (4, 'Mark', 25, 'Rich-Mond ', 65000.00 );";

	rc = sqlite3_prepare_v2(db, sql, -1, &stmt, NULL);
	if (rc == SQLITE_OK) {
		rc = sqlite3_step(stmt);
		if (rc == SQLITE_ERROR) {
			printc("Error inserting into the table\n");
			return;
		}
		printc("successfully inserted into the table\n");
	}
	if(sqlite3_finalize(stmt) == SQLITE_OK) {
		printc("Finalized\n");
	} else {
		printc("Falied to finalize\n");
	}

	sql = "SELECT * from COMPANY";

	rc = sqlite3_prepare_v2(db, sql, -1, &stmt, NULL);
	if (rc == SQLITE_OK) {
		int nCols = sqlite3_column_count(stmt);
		printc("The sql statement is okay\n");
		printc("ncols is %d\n", nCols);
				if (nCols) {
					int nCol;
					printc("Found ncols\n");
					for (nCol = 0; nCol <= nCols; nCol++) {
						printc("column name: %s\n", sqlite3_column_name(stmt, nCol));
					}
					printc("\n");
					while ((rc = sqlite3_step(stmt)) == SQLITE_ROW) {
						for (nCol = 0; nCol < nCols; nCol++) {
							printc("column text: %s\n", sqlite3_column_text(stmt, nCol));
						}
					}
					printc("\n");
				} else {
					rc = sqlite3_step(stmt);
					if (rc == SQLITE_ERROR) {
						printc("Did not Query the db\n");
						return;
					} else {
						printc("Queried the db\n");
					}
				}
	} else {
		printc("Sql statement is not okay\n");
	}

	if(sqlite3_finalize(stmt) == SQLITE_OK) {
		printc("Finalized\n");
	} else {
		printc("Falied to finalize\n");
	}

	/* Execute SQL statement */
	/*rc = sqlite3_exec(db, "CREATE TABLE IF NOT EXISTS test (id INTEGER NOT NULL PRIMARY KEY, text VARCHAR(100))", 0, 0, 0);
	printc("it passed\n");
	if (rc != SQLITE_OK) printc("SQL error\n");
	*/

/*   if( rc != SQLITE_OK ){
	printc("SQL error: %s\n", zErrMsg);
		sqlite3_free(zErrMsg);
	}else{
		printc("Table created successfully\n");
	}*/
	sqlite3_close(db);
	return;
}

