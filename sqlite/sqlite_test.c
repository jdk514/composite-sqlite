#include <stdio.h>
#include "sqlite3.h"

int main() {
	sqlite3 *db;
	char *zErrMsg = 0;
	int rc;

	rc = sqlite3_open(NULL, &db);
	if (rc) {
		fprintf(stderr, "Can't open database: %s\n", sqlite3_errmsg(db));
		return;
	} else {
		fprintf(stderr, "Opened database successfully\n");
	}
	sqlite3_close(db);
	return;
}
