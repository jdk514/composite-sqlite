cmd_/home/cos/git/composite-sqlite/composite/src/platform/linux/module/hw_ints.o := gcc -Wp,-MD,/home/cos/git/composite-sqlite/composite/src/platform/linux/module/.hw_ints.o.d  -nostdinc -isystem /usr/lib/gcc/i486-linux-gnu/4.4.3/include -I/home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include -Iinclude  -include include/generated/autoconf.h -D__KERNEL__ -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -O2 -m32 -msoft-float -mregparm=3 -freg-struct-return -mpreferred-stack-boundary=2 -march=i686 -mtune=core2 -Wa,-mtune=generic32 -ffreestanding -DCONFIG_AS_CFI=1 -DCONFIG_AS_CFI_SIGNAL_FRAME=1 -DCONFIG_AS_CFI_SECTIONS=1 -pipe -Wno-sign-compare -fno-asynchronous-unwind-tables -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -Wframe-larger-than=1024 -fno-stack-protector -fno-omit-frame-pointer -fno-optimize-sibling-calls -g -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack  -DMODULE  -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(hw_ints)"  -D"KBUILD_MODNAME=KBUILD_STR(cos)"  -c -o /home/cos/git/composite-sqlite/composite/src/platform/linux/module/hw_ints.o /home/cos/git/composite-sqlite/composite/src/platform/linux/module/hw_ints.c

deps_/home/cos/git/composite-sqlite/composite/src/platform/linux/module/hw_ints.o := \
  /home/cos/git/composite-sqlite/composite/src/platform/linux/module/hw_ints.c \
    $(wildcard include/config/x86/f00f/bug.h) \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/desc.h \
    $(wildcard include/config/x86/64.h) \
    $(wildcard include/config/paravirt.h) \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/desc_defs.h \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/types.h \
    $(wildcard include/config/highmem64g.h) \
  include/asm-generic/types.h \
  include/asm-generic/int-ll64.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/bitsperlong.h \
  include/asm-generic/bitsperlong.h \
  include/linux/posix_types.h \
  include/linux/stddef.h \
  include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  include/linux/compiler-gcc4.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/posix_types.h \
    $(wildcard include/config/x86/32.h) \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/posix_types_32.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/ldt.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/mmu.h \
    $(wildcard include/config/smp.h) \
  include/linux/spinlock.h \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/generic/lockbreak.h) \
    $(wildcard include/config/preempt.h) \
    $(wildcard include/config/debug/lock/alloc.h) \
  include/linux/typecheck.h \
  include/linux/preempt.h \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  include/linux/thread_info.h \
    $(wildcard include/config/compat.h) \
  include/linux/bitops.h \
    $(wildcard include/config/generic/find/first/bit.h) \
    $(wildcard include/config/generic/find/last/bit.h) \
    $(wildcard include/config/generic/find/next/bit.h) \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/bitops.h \
    $(wildcard include/config/x86/cmov.h) \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/alternative.h \
  include/linux/stringify.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/asm.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/cpufeature.h \
    $(wildcard include/config/x86/invlpg.h) \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/required-features.h \
    $(wildcard include/config/x86/minimum/cpu/family.h) \
    $(wildcard include/config/math/emulation.h) \
    $(wildcard include/config/x86/pae.h) \
    $(wildcard include/config/x86/cmpxchg64.h) \
    $(wildcard include/config/x86/use/3dnow.h) \
    $(wildcard include/config/x86/p6/nop.h) \
  include/asm-generic/bitops/sched.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/arch_hweight.h \
  include/asm-generic/bitops/const_hweight.h \
  include/asm-generic/bitops/fls64.h \
  include/asm-generic/bitops/ext2-non-atomic.h \
  include/asm-generic/bitops/le.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/byteorder.h \
  include/linux/byteorder/little_endian.h \
  include/linux/swab.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/swab.h \
    $(wildcard include/config/x86/bswap.h) \
  include/linux/byteorder/generic.h \
  include/asm-generic/bitops/minix.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/thread_info.h \
    $(wildcard include/config/debug/stack/usage.h) \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/page.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/page_types.h \
  include/linux/const.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/page_32_types.h \
    $(wildcard include/config/highmem4g.h) \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/4kstacks.h) \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/page_32.h \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/debug/virtual.h) \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/x86/3dnow.h) \
  include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
  /usr/lib/gcc/i486-linux-gnu/4.4.3/include/stdarg.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/string.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/string_32.h \
    $(wildcard include/config/kmemcheck.h) \
  include/asm-generic/memory_model.h \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
    $(wildcard include/config/sparsemem.h) \
  include/asm-generic/getorder.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/processor.h \
    $(wildcard include/config/x86/vsmp.h) \
    $(wildcard include/config/cc/stackprotector.h) \
    $(wildcard include/config/m386.h) \
    $(wildcard include/config/m486.h) \
    $(wildcard include/config/x86/debugctlmsr.h) \
    $(wildcard include/config/cpu/sup/amd.h) \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/processor-flags.h \
    $(wildcard include/config/vm86.h) \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/vm86.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/ptrace.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/ptrace-abi.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/segment.h \
  include/linux/init.h \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/hotplug.h) \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/math_emu.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/sigcontext.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/current.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/percpu.h \
    $(wildcard include/config/x86/64/smp.h) \
  include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/spinlock/sleep.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
    $(wildcard include/config/ring/buffer.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
  include/linux/linkage.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/linkage.h \
    $(wildcard include/config/x86/alignment/16.h) \
  include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  include/linux/dynamic_debug.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/debug/bugverbose.h) \
  include/asm-generic/bug.h \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/div64.h \
  include/asm-generic/percpu.h \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  include/linux/percpu-defs.h \
    $(wildcard include/config/debug/force/weak/per/cpu.h) \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/system.h \
    $(wildcard include/config/ia32/emulation.h) \
    $(wildcard include/config/x86/32/lazy/gs.h) \
    $(wildcard include/config/x86/ppro/fence.h) \
    $(wildcard include/config/x86/oostore.h) \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/cmpxchg.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/cmpxchg_32.h \
    $(wildcard include/config/x86/cmpxchg.h) \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/nops.h \
    $(wildcard include/config/mk7.h) \
  include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/irqflags.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/pgtable_types.h \
    $(wildcard include/config/compat/vdso.h) \
    $(wildcard include/config/proc/fs.h) \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/pgtable_32_types.h \
    $(wildcard include/config/highmem.h) \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/pgtable-2level_types.h \
  include/asm-generic/pgtable-nopud.h \
  include/asm-generic/pgtable-nopmd.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/msr.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/msr-index.h \
  include/linux/ioctl.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/ioctl.h \
  include/asm-generic/ioctl.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/errno.h \
  include/asm-generic/errno.h \
  include/asm-generic/errno-base.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/cpumask.h \
  include/linux/cpumask.h \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
    $(wildcard include/config/disable/obsolete/cpumask/functions.h) \
  include/linux/bitmap.h \
  include/linux/errno.h \
  include/linux/personality.h \
  include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/cache.h \
    $(wildcard include/config/x86/l1/cache/shift.h) \
    $(wildcard include/config/x86/internode/cache/shift.h) \
  include/linux/math64.h \
  include/linux/err.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/ftrace.h \
    $(wildcard include/config/function/tracer.h) \
    $(wildcard include/config/dynamic/ftrace.h) \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/atomic.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/atomic64_32.h \
  include/asm-generic/atomic-long.h \
  include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
  include/linux/prefetch.h \
  include/linux/bottom_half.h \
  include/linux/spinlock_types.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/spinlock_types.h \
  include/linux/lockdep.h \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/lock/stat.h) \
    $(wildcard include/config/generic/hardirqs.h) \
    $(wildcard include/config/prove/rcu.h) \
  include/linux/rwlock_types.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/spinlock.h \
    $(wildcard include/config/paravirt/spinlocks.h) \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/rwlock.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/paravirt.h \
  include/linux/rwlock.h \
  include/linux/spinlock_api_smp.h \
    $(wildcard include/config/inline/spin/lock.h) \
    $(wildcard include/config/inline/spin/lock/bh.h) \
    $(wildcard include/config/inline/spin/lock/irq.h) \
    $(wildcard include/config/inline/spin/lock/irqsave.h) \
    $(wildcard include/config/inline/spin/trylock.h) \
    $(wildcard include/config/inline/spin/trylock/bh.h) \
    $(wildcard include/config/inline/spin/unlock.h) \
    $(wildcard include/config/inline/spin/unlock/bh.h) \
    $(wildcard include/config/inline/spin/unlock/irq.h) \
    $(wildcard include/config/inline/spin/unlock/irqrestore.h) \
  include/linux/rwlock_api_smp.h \
    $(wildcard include/config/inline/read/lock.h) \
    $(wildcard include/config/inline/write/lock.h) \
    $(wildcard include/config/inline/read/lock/bh.h) \
    $(wildcard include/config/inline/write/lock/bh.h) \
    $(wildcard include/config/inline/read/lock/irq.h) \
    $(wildcard include/config/inline/write/lock/irq.h) \
    $(wildcard include/config/inline/read/lock/irqsave.h) \
    $(wildcard include/config/inline/write/lock/irqsave.h) \
    $(wildcard include/config/inline/read/trylock.h) \
    $(wildcard include/config/inline/write/trylock.h) \
    $(wildcard include/config/inline/read/unlock.h) \
    $(wildcard include/config/inline/write/unlock.h) \
    $(wildcard include/config/inline/read/unlock/bh.h) \
    $(wildcard include/config/inline/write/unlock/bh.h) \
    $(wildcard include/config/inline/read/unlock/irq.h) \
    $(wildcard include/config/inline/write/unlock/irq.h) \
    $(wildcard include/config/inline/read/unlock/irqrestore.h) \
    $(wildcard include/config/inline/write/unlock/irqrestore.h) \
  include/linux/mutex.h \
    $(wildcard include/config/debug/mutexes.h) \
  include/linux/smp.h \
    $(wildcard include/config/use/generic/smp/helpers.h) \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/smp.h \
    $(wildcard include/config/x86/local/apic.h) \
    $(wildcard include/config/x86/io/apic.h) \
    $(wildcard include/config/x86/32/smp.h) \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/mpspec.h \
    $(wildcard include/config/x86/numaq.h) \
    $(wildcard include/config/mca.h) \
    $(wildcard include/config/eisa.h) \
    $(wildcard include/config/x86/mpparse.h) \
    $(wildcard include/config/acpi.h) \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/mpspec_def.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/x86_init.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/bootparam.h \
  include/linux/screen_info.h \
  include/linux/apm_bios.h \
  include/linux/edd.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/e820.h \
    $(wildcard include/config/nodes/shift.h) \
    $(wildcard include/config/efi.h) \
    $(wildcard include/config/intel/txt.h) \
    $(wildcard include/config/hibernation.h) \
    $(wildcard include/config/memtest.h) \
  include/linux/early_res.h \
  include/linux/range.h \
  include/linux/ioport.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/ist.h \
  include/video/edid.h \
    $(wildcard include/config/x86.h) \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/apic.h \
    $(wildcard include/config/x86/x2apic.h) \
  include/linux/delay.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/delay.h \
  include/linux/pm.h \
    $(wildcard include/config/pm/sleep.h) \
    $(wildcard include/config/pm/runtime.h) \
    $(wildcard include/config/pm/ops.h) \
  include/linux/workqueue.h \
    $(wildcard include/config/debug/objects/work.h) \
    $(wildcard include/config/freezer.h) \
  include/linux/timer.h \
    $(wildcard include/config/timer/stats.h) \
    $(wildcard include/config/debug/objects/timers.h) \
  include/linux/ktime.h \
    $(wildcard include/config/ktime/scalar.h) \
  include/linux/time.h \
    $(wildcard include/config/arch/uses/gettimeoffset.h) \
  include/linux/seqlock.h \
  include/linux/jiffies.h \
  include/linux/timex.h \
  include/linux/param.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/param.h \
  include/asm-generic/param.h \
    $(wildcard include/config/hz.h) \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/timex.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/tsc.h \
    $(wildcard include/config/x86/tsc.h) \
  include/linux/debugobjects.h \
    $(wildcard include/config/debug/objects.h) \
    $(wildcard include/config/debug/objects/free.h) \
  include/linux/wait.h \
  include/linux/completion.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/apicdef.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/fixmap.h \
    $(wildcard include/config/provide/ohci1394/dma/init.h) \
    $(wildcard include/config/x86/visws/apic.h) \
    $(wildcard include/config/x86/cyclone/timer.h) \
    $(wildcard include/config/pci/mmconfig.h) \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/acpi.h \
    $(wildcard include/config/acpi/numa.h) \
  include/acpi/pdc_intel.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/numa.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/numa_32.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/kmap_types.h \
    $(wildcard include/config/debug/highmem.h) \
  include/asm-generic/kmap_types.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/io_apic.h \
  /home/cos/git/composite-sqlite/linux-2.6.36/arch/x86/include/asm/irq_vectors.h \
    $(wildcard include/config/sparse/irq.h) \
  /home/cos/git/composite-sqlite/composite/src/platform/linux/module/../../../kernel/include/shared/cos_config.h \
    $(wildcard include/config/h.h) \
  /home/cos/git/composite-sqlite/composite/src/platform/linux/module/../../../kernel/include/shared/cpu_ghz.h \
  /home/cos/git/composite-sqlite/composite/src/platform/linux/module/cos_irq_vectors.h \

/home/cos/git/composite-sqlite/composite/src/platform/linux/module/hw_ints.o: $(deps_/home/cos/git/composite-sqlite/composite/src/platform/linux/module/hw_ints.o)

$(deps_/home/cos/git/composite-sqlite/composite/src/platform/linux/module/hw_ints.o):
