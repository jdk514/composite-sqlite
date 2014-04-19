/**
 * Copyright 2009 by Gabriel Parmer, gabep1@cs.bu.edu
 *
 * Redistribution of this file is permitted under the GNU General
 * Public License v2.
 */

#include <cos_asm_server_stub.h>
//#include <cos_asm_server_stub_simple_stack.h>

.text

cos_asm_server_stub(sqlite3_exec)
cos_asm_server_stub(sqlite3_free)
cos_asm_server_stub(sqlite3_close)
cos_asm_server_stub(sqlite3_open)
cos_asm_server_stub(sqlite3_errmsg)
