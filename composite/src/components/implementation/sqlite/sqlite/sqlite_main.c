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
	char *ret_data = "thiworks1";
	unsigned int ret1, ret2;

	int a = 0, b = 0, c = 0;
	c = treadp(cos_spd_id(), 0, &a, &b);

	printc("UNIT TEST Unit tests for sqlite...\n");

	printc("%d %d %d\n", a, b, c);

	evt1 = evt_split(cos_spd_id(), 0, 0);
	evt2 = evt_split(cos_spd_id(), 0, 0);
	assert(evt1 > 0 && evt2 > 0);

	read_tor = tsplit(cos_spd_id(), td_root, query, strlen(query), TOR_ALL, evt1);
	ret1 = tread_pack(cos_spd_id(), read_tor, buffer, 1023);
	if (ret1 > 0) buffer[ret1] = '\0';
	printv("read %d : %s\n", ret1,  buffer);
	buffer[0] = '\0';
	trelease(cos_spd_id(), query);

	write_tor = tsplit(cos_spd_id(), td_root, response, strlen(response), TOR_ALL, evt2);
	ret2 = twrite_pack(cos_spd_id(), write_tor, ret_data, strlen(ret_data));
	printv("wrote %d, ret %d\n", strlen(ret_data), ret2);

	trelease(cos_spd_id(), write_tor);

	return;
}

