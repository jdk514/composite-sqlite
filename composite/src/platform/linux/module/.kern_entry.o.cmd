cmd_/home/cos/git/Composite/src/platform/linux/module/kern_entry.o := gcc -Wp,-MD,/home/cos/git/Composite/src/platform/linux/module/.kern_entry.o.d  -nostdinc -isystem /usr/lib/gcc/i486-linux-gnu/4.4.3/include -I/home/cos/research/linux-2.6.36/arch/x86/include -Iinclude  -include include/generated/autoconf.h -D__KERNEL__ -D__ASSEMBLY__ -m32 -DCONFIG_AS_CFI=1 -DCONFIG_AS_CFI_SIGNAL_FRAME=1 -DCONFIG_AS_CFI_SECTIONS=1  -gdwarf-2      -DMODULE  -c -o /home/cos/git/Composite/src/platform/linux/module/kern_entry.o /home/cos/git/Composite/src/platform/linux/module/kern_entry.S

deps_/home/cos/git/Composite/src/platform/linux/module/kern_entry.o := \
  /home/cos/git/Composite/src/platform/linux/module/kern_entry.S \
  /home/cos/research/linux-2.6.36/arch/x86/include/asm/asm-offsets.h \
  include/generated/asm-offsets.h \
  /home/cos/research/linux-2.6.36/arch/x86/include/asm/segment.h \
    $(wildcard include/config/x86/32.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/cc/stackprotector.h) \
    $(wildcard include/config/paravirt.h) \
  /home/cos/research/linux-2.6.36/arch/x86/include/asm/thread_info.h \
    $(wildcard include/config/debug/stack/usage.h) \
  include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  /home/cos/research/linux-2.6.36/arch/x86/include/asm/page.h \
    $(wildcard include/config/x86/64.h) \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  /home/cos/research/linux-2.6.36/arch/x86/include/asm/types.h \
    $(wildcard include/config/highmem64g.h) \
  include/asm-generic/types.h \
  include/asm-generic/int-ll64.h \
  /home/cos/research/linux-2.6.36/arch/x86/include/asm/bitsperlong.h \
  include/asm-generic/bitsperlong.h \
  /home/cos/research/linux-2.6.36/arch/x86/include/asm/page_types.h \
  include/linux/const.h \
  /home/cos/research/linux-2.6.36/arch/x86/include/asm/page_32_types.h \
    $(wildcard include/config/highmem4g.h) \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/4kstacks.h) \
    $(wildcard include/config/x86/pae.h) \
  /home/cos/research/linux-2.6.36/arch/x86/include/asm/page_32.h \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/debug/virtual.h) \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/x86/use/3dnow.h) \
    $(wildcard include/config/x86/3dnow.h) \
  include/asm-generic/memory_model.h \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
    $(wildcard include/config/sparsemem.h) \
  include/asm-generic/getorder.h \
  /home/cos/research/linux-2.6.36/arch/x86/include/asm/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/debug/lock/alloc.h) \
  /home/cos/research/linux-2.6.36/arch/x86/include/asm/processor-flags.h \
    $(wildcard include/config/vm86.h) \
  include/linux/linkage.h \
  /home/cos/research/linux-2.6.36/arch/x86/include/asm/linkage.h \
    $(wildcard include/config/x86/alignment/16.h) \
  include/linux/stringify.h \
  /home/cos/git/Composite/src/platform/linux/module/asym_exec_dom.h \
  /home/cos/git/Composite/src/platform/linux/module/../../../kernel/include/asm_ipc_defs.h \
  /home/cos/git/Composite/src/platform/linux/module/../../../kernel/include/shared/cos_config.h \
    $(wildcard include/config/h.h) \
  /home/cos/git/Composite/src/platform/linux/module/../../../kernel/include/shared/cpu_ghz.h \
  /home/cos/git/Composite/src/platform/linux/module/cos_irq_vectors.h \

/home/cos/git/Composite/src/platform/linux/module/kern_entry.o: $(deps_/home/cos/git/Composite/src/platform/linux/module/kern_entry.o)

$(deps_/home/cos/git/Composite/src/platform/linux/module/kern_entry.o):
