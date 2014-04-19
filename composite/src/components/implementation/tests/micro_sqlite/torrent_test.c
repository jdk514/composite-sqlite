/**
 * Copyright 2011 by Gabriel Parmer, gparmer@gwu.edu
 *
 * Redistribution of this file is permitted under the GNU General
 * Public License v2.
 */

#include <cos_component.h>
#include <print.h>
#include <sched.h>
#include <cbuf.h>
#include <evt.h>
#include <torrent.h>

//#define VERBOSE 1
#ifdef VERBOSE
#define printv(fmt,...) printc(fmt, ##__VA_ARGS__)
#else
#define printv(fmt,...) 
#endif

char buffer[1024];

void cos_init(void)
{
	td_t read_tor, write_tor;
	long evt1, evt2;
	char *query = "query";
	char *response = "response";
	char *send_data = "thisworks2";
	unsigned int ret1, ret2;

	int a = 0, b = 0, c = 0;
	c = treadp(cos_spd_id(), 0, &a, &b);

	printc("UNIT TEST Unit tests for torrent_test...\n");

	printc("%d %d %d\n", a, b, c);

	evt1 = evt_split(cos_spd_id(), 0, 0);
	evt2 = evt_split(cos_spd_id(), 0, 0);
	assert(evt1 > 0 && evt2 > 0);

	write_tor = tsplit(cos_spd_id(), td_root, query, strlen(query), TOR_ALL, evt1);
	if (write_tor < 1) {
		printc("UNIT TEST FAILED: split failed %d\n", write_tor);
		return;
	}
	ret1 = twrite_pack(cos_spd_id(), write_tor, send_data, strlen(send_data));
	printv("wrote %d, ret %d\n", strlen(send_data), ret1);

	trelease(cos_spd_id(), write_tor);
	
	/*
	read_tor = tsplit(cos_spd_id(), td_root, response, strlen(response), TOR_ALL, evt2);
	ret2 = tread_pack(cos_spd_id(), read_tor, buffer, 1023);
	if (ret1 > 0) buffer[ret1] = '\0';
	printv("read %d : %s\n", ret2,  buffer);
	buffer[0] = '\0';
	trelease(cos_spd_id(), query);
	*/

	return;
}
