cmd_/home/cos/git/composite-sqlite/composite/src/platform/linux/module/ipc.o := gcc -Wp,-MD,/home/cos/git/composite-sqlite/composite/src/platform/linux/module/.ipc.o.d  -nostdinc -isystem /usr/lib/gcc/i486-linux-gnu/4.4.3/include -I/home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include -Iinclude  -include include/generated/autoconf.h -D__KERNEL__ -D__ASSEMBLY__ -m32 -DCONFIG_AS_CFI=1 -DCONFIG_AS_CFI_SIGNAL_FRAME=1 -DCONFIG_AS_CFI_SECTIONS=1  -gdwarf-2      -DMODULE  -c -o /home/cos/git/composite-sqlite/composite/src/platform/linux/module/ipc.o /home/cos/git/composite-sqlite/composite/src/platform/linux/module/ipc.S

deps_/home/cos/git/composite-sqlite/composite/src/platform/linux/module/ipc.o := \
  /home/cos/git/composite-sqlite/composite/src/platform/linux/module/ipc.S \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/asm-offsets.h \
  include/generated/asm-offsets.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/segment.h \
    $(wildcard include/config/x86/32.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/cc/stackprotector.h) \
    $(wildcard include/config/paravirt.h) \
  /home/cos/git/composite-sqlite/composite/src/platform/linux/module/../../../kernel/include/asm_ipc_defs.h \

/home/cos/git/composite-sqlite/composite/src/platform/linux/module/ipc.o: $(deps_/home/cos/git/composite-sqlite/composite/src/platform/linux/module/ipc.o)

$(deps_/home/cos/git/composite-sqlite/composite/src/platform/linux/module/ipc.o):