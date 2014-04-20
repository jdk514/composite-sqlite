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
static volatile int test_thd = 0;

static void torrent_test() {
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

	/*Start the sqlite Query*/
	write_tor = tsplit(cos_spd_id(), td_root, query, strlen(query), TOR_ALL, evt1);
	if (write_tor < 1) {
		printc("UNIT TEST FAILED: split failed %d\n", write_tor);
		return;
	}
	ret1 = twrite_pack(cos_spd_id(), write_tor, send_data, strlen(send_data));
	printc("WROTE %d (%s), ret %d\n", strlen(send_data), send_data, ret1);

	trelease(cos_spd_id(), write_tor);
	printc("UNIT TEST PASSED: 1 split -> 1 write -> 1 release\n");
	/*End the sqlite Query*/

	/*Start reading response*/
	read_tor = tsplit(cos_spd_id(), td_root, response, strlen(response), TOR_ALL, evt2);
	if (read_tor < 1) {
		printc("UNIT TEST FAILED: split failed %d\n", read_tor);
		return;
	}
	ret2 = tread_pack(cos_spd_id(), read_tor, buffer, 1023);
	if (ret2 > 0) buffer[ret2] = '\0';
	printc("READ %d : %s\n", ret2,  buffer);
	buffer[0] = '\0';
	trelease(cos_spd_id(), read_tor);
	printc("UNIT TEST PASSED: 1 split -> 1 read -> 1 release\n");
	/*End reading response*/
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

