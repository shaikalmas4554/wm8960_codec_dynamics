cmd_/home/mirafra/nxp-audio/wm8960_module/wm8960.o := aarch64-poky-linux-gcc -Wp,-MMD,/home/mirafra/nxp-audio/wm8960_module/.wm8960.o.d -nostdinc -I/home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include -I./arch/arm64/include/generated -I/home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include -I./include -I/home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi -I/home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi -I./include/generated/uapi -include /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/compiler-version.h -include /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/kconfig.h -include /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/compiler_types.h -D__KERNEL__ -mlittle-endian -DKASAN_SHADOW_SCALE_SHIFT= -fmacro-prefix-map=/home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/= -Wall -Wundef -Werror=strict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -fno-PIE -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Wno-format-security -std=gnu11 -mgeneral-regs-only -DCONFIG_CC_HAS_K_CONSTRAINT=1 -Wno-psabi -mabi=lp64 -fno-asynchronous-unwind-tables -fno-unwind-tables -mbranch-protection=pac-ret+leaf -Wa,-march=armv8.5-a -DARM64_ASM_ARCH='"armv8.5-a"' -DKASAN_SHADOW_SCALE_SHIFT= -fno-delete-null-pointer-checks -Wno-frame-address -Wno-format-truncation -Wno-format-overflow -Wno-address-of-packed-member -O2 -fno-allow-store-data-races -Wframe-larger-than=2048 -fstack-protector-strong -Wno-main -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-dangling-pointer -fno-omit-frame-pointer -fno-optimize-sibling-calls -ftrivial-auto-var-init=zero -fno-stack-clash-protection -Wdeclaration-after-statement -Wvla -Wno-pointer-sign -Wcast-function-type -Wno-stringop-truncation -Wno-stringop-overflow -Wno-restrict -Wno-maybe-uninitialized -Wno-array-bounds -Wno-alloc-size-larger-than -Wimplicit-fallthrough=5 -fno-strict-overflow -fno-stack-check -fconserve-stack -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init -Wno-packed-not-aligned -g -fno-var-tracking -femit-struct-debug-baseonly --sysroot=/home/mirafra/imx-sdk/sysroots/armv8a-poky-linux -mstack-protector-guard=sysreg -mstack-protector-guard-reg=sp_el0 -mstack-protector-guard-offset=1168  -DMODULE  -DKBUILD_BASENAME='"wm8960"' -DKBUILD_MODNAME='"snd_soc_wm8960"' -D__KBUILD_MODNAME=kmod_snd_soc_wm8960 -c -o /home/mirafra/nxp-audio/wm8960_module/wm8960.o /home/mirafra/nxp-audio/wm8960_module/wm8960.c  

source_/home/mirafra/nxp-audio/wm8960_module/wm8960.o := /home/mirafra/nxp-audio/wm8960_module/wm8960.c

deps_/home/mirafra/nxp-audio/wm8960_module/wm8960.o := \
    $(wildcard include/config/OF) \
    $(wildcard include/config/ACPI) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/compiler-version.h \
    $(wildcard include/config/CC_VERSION_TEXT) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/kconfig.h \
    $(wildcard include/config/CPU_BIG_ENDIAN) \
    $(wildcard include/config/BOOGER) \
    $(wildcard include/config/FOO) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/compiler_types.h \
    $(wildcard include/config/DEBUG_INFO_BTF) \
    $(wildcard include/config/PAHOLE_HAS_BTF_TAG) \
    $(wildcard include/config/HAVE_ARCH_COMPILER_H) \
    $(wildcard include/config/CC_HAS_ASM_INLINE) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/compiler_attributes.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/compiler-gcc.h \
    $(wildcard include/config/RETPOLINE) \
    $(wildcard include/config/ARCH_USE_BUILTIN_BSWAP) \
    $(wildcard include/config/SHADOW_CALL_STACK) \
    $(wildcard include/config/KCOV) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/compiler.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/module.h \
    $(wildcard include/config/MODULES) \
    $(wildcard include/config/SYSFS) \
    $(wildcard include/config/MODULES_TREE_LOOKUP) \
    $(wildcard include/config/LIVEPATCH) \
    $(wildcard include/config/STACKTRACE_BUILD_ID) \
    $(wildcard include/config/ARCH_USES_CFI_TRAPS) \
    $(wildcard include/config/MODULE_SIG) \
    $(wildcard include/config/ARCH_WANTS_MODULES_DATA_IN_VMALLOC) \
    $(wildcard include/config/GENERIC_BUG) \
    $(wildcard include/config/KALLSYMS) \
    $(wildcard include/config/SMP) \
    $(wildcard include/config/TRACEPOINTS) \
    $(wildcard include/config/TREE_SRCU) \
    $(wildcard include/config/BPF_EVENTS) \
    $(wildcard include/config/DEBUG_INFO_BTF_MODULES) \
    $(wildcard include/config/JUMP_LABEL) \
    $(wildcard include/config/TRACING) \
    $(wildcard include/config/EVENT_TRACING) \
    $(wildcard include/config/FTRACE_MCOUNT_RECORD) \
    $(wildcard include/config/KPROBES) \
    $(wildcard include/config/HAVE_STATIC_CALL_INLINE) \
    $(wildcard include/config/KUNIT) \
    $(wildcard include/config/PRINTK_INDEX) \
    $(wildcard include/config/MODULE_UNLOAD) \
    $(wildcard include/config/CONSTRUCTORS) \
    $(wildcard include/config/FUNCTION_ERROR_INJECTION) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/list.h \
    $(wildcard include/config/DEBUG_LIST) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/container_of.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/build_bug.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/compiler.h \
    $(wildcard include/config/TRACE_BRANCH_PROFILING) \
    $(wildcard include/config/PROFILE_ALL_BRANCHES) \
    $(wildcard include/config/OBJTOOL) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/compiler_types.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/rwonce.h \
    $(wildcard include/config/LTO) \
    $(wildcard include/config/AS_HAS_LDAPR) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/rwonce.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/kasan-checks.h \
    $(wildcard include/config/KASAN_GENERIC) \
    $(wildcard include/config/KASAN_SW_TAGS) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/types.h \
    $(wildcard include/config/HAVE_UID16) \
    $(wildcard include/config/UID16) \
    $(wildcard include/config/ARCH_DMA_ADDR_T_64BIT) \
    $(wildcard include/config/PHYS_ADDR_T_64BIT) \
    $(wildcard include/config/64BIT) \
    $(wildcard include/config/ARCH_32BIT_USTAT_F_TINODE) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/types.h \
  arch/arm64/include/generated/uapi/asm/types.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/asm-generic/types.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/int-ll64.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/asm-generic/int-ll64.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/uapi/asm/bitsperlong.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/bitsperlong.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/asm-generic/bitsperlong.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/posix_types.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/stddef.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/stddef.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/uapi/asm/posix_types.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/asm-generic/posix_types.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/kcsan-checks.h \
    $(wildcard include/config/KCSAN) \
    $(wildcard include/config/KCSAN_WEAK_MEMORY) \
    $(wildcard include/config/KCSAN_IGNORE_ATOMICS) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/err.h \
  arch/arm64/include/generated/uapi/asm/errno.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/asm-generic/errno.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/asm-generic/errno-base.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/poison.h \
    $(wildcard include/config/ILLEGAL_POINTER_VALUE) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/const.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/vdso/const.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/const.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/barrier.h \
    $(wildcard include/config/ARM64_PSEUDO_NMI) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/barrier.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/stat.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/stat.h \
    $(wildcard include/config/COMPAT) \
  arch/arm64/include/generated/uapi/asm/stat.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/asm-generic/stat.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/time.h \
    $(wildcard include/config/POSIX_TIMERS) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/cache.h \
    $(wildcard include/config/ARCH_HAS_CACHE_LINE_SIZE) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/kernel.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/sysinfo.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/cache.h \
    $(wildcard include/config/KASAN_HW_TAGS) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/bitops.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/bits.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/vdso/bits.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/typecheck.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/bitops/generic-non-atomic.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/bitops.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/bitops/builtin-__ffs.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/bitops/builtin-ffs.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/bitops/builtin-__fls.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/bitops/builtin-fls.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/bitops/ffz.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/bitops/fls64.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/bitops/sched.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/bitops/hweight.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/bitops/arch_hweight.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/bitops/const_hweight.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/bitops/atomic.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/atomic.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/atomic.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/cmpxchg.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/lse.h \
    $(wildcard include/config/ARM64_LSE_ATOMICS) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/atomic_ll_sc.h \
    $(wildcard include/config/CC_HAS_K_CONSTRAINT) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/stringify.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/export.h \
    $(wildcard include/config/MODVERSIONS) \
    $(wildcard include/config/HAVE_ARCH_PREL32_RELOCATIONS) \
    $(wildcard include/config/TRIM_UNUSED_KSYMS) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/jump_label.h \
    $(wildcard include/config/HAVE_ARCH_JUMP_LABEL_RELATIVE) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/jump_label.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/insn.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/insn-def.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/brk-imm.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/alternative.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/alternative-macros.h \
  arch/arm64/include/generated/asm/cpucaps.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/init.h \
    $(wildcard include/config/STRICT_KERNEL_RWX) \
    $(wildcard include/config/STRICT_MODULE_RWX) \
    $(wildcard include/config/LTO_CLANG) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/atomic_lse.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/atomic/atomic-arch-fallback.h \
    $(wildcard include/config/GENERIC_ATOMIC64) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/atomic/atomic-long.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/atomic/atomic-instrumented.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/instrumented.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/kmsan-checks.h \
    $(wildcard include/config/KMSAN) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/bitops/instrumented-atomic.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/bitops/lock.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/bitops/instrumented-lock.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/bitops/non-atomic.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/bitops/non-instrumented-non-atomic.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/bitops/le.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/uapi/asm/byteorder.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/byteorder/little_endian.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/byteorder/little_endian.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/swab.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/swab.h \
  arch/arm64/include/generated/uapi/asm/swab.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/asm-generic/swab.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/byteorder/generic.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/bitops/ext2-atomic-setbit.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/kasan-enabled.h \
    $(wildcard include/config/KASAN) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/static_key.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/cputype.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/sysreg.h \
    $(wildcard include/config/BROKEN_GAS_INST) \
    $(wildcard include/config/ARM64_PA_BITS_52) \
    $(wildcard include/config/ARM64_4K_PAGES) \
    $(wildcard include/config/ARM64_16K_PAGES) \
    $(wildcard include/config/ARM64_64K_PAGES) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/kasan-tags.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/gpr-num.h \
  arch/arm64/include/generated/asm/sysreg-defs.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/bitfield.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/mte-def.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/math64.h \
    $(wildcard include/config/ARCH_SUPPORTS_INT128) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/math.h \
  arch/arm64/include/generated/asm/div64.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/div64.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/vdso/math64.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/time64.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/vdso/time64.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/time.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/time_types.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/time32.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/timex.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/timex.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/param.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/uapi/asm/param.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/param.h \
    $(wildcard include/config/HZ) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/asm-generic/param.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/timex.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/arch_timer.h \
    $(wildcard include/config/ARM_ARCH_TIMER_OOL_WORKAROUND) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/hwcap.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/uapi/asm/hwcap.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/cpufeature.h \
    $(wildcard include/config/ARM64_PAN) \
    $(wildcard include/config/ARM64_SW_TTBR0_PAN) \
    $(wildcard include/config/ARM64_SVE) \
    $(wildcard include/config/ARM64_SME) \
    $(wildcard include/config/ARM64_CNP) \
    $(wildcard include/config/ARM64_PTR_AUTH) \
    $(wildcard include/config/ARM64_MTE) \
    $(wildcard include/config/ARM64_DEBUG_PRIORITY_MASKING) \
    $(wildcard include/config/ARM64_BTI) \
    $(wildcard include/config/ARM64_TLB_RANGE) \
    $(wildcard include/config/ARM64_PA_BITS) \
    $(wildcard include/config/ARM64_HW_AFDBM) \
    $(wildcard include/config/ARM64_AMU_EXTN) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/bug.h \
    $(wildcard include/config/BUG_ON_DATA_CORRUPTION) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/bug.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/asm-bug.h \
    $(wildcard include/config/DEBUG_BUGVERBOSE) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/bug.h \
    $(wildcard include/config/BUG) \
    $(wildcard include/config/GENERIC_BUG_RELATIVE_POINTERS) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/instrumentation.h \
    $(wildcard include/config/NOINSTR_VALIDATION) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/once_lite.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/panic.h \
    $(wildcard include/config/PANIC_TIMEOUT) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/printk.h \
    $(wildcard include/config/MESSAGE_LOGLEVEL_DEFAULT) \
    $(wildcard include/config/CONSOLE_LOGLEVEL_DEFAULT) \
    $(wildcard include/config/CONSOLE_LOGLEVEL_QUIET) \
    $(wildcard include/config/EARLY_PRINTK) \
    $(wildcard include/config/PRINTK) \
    $(wildcard include/config/DYNAMIC_DEBUG) \
    $(wildcard include/config/DYNAMIC_DEBUG_CORE) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/stdarg.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/kern_levels.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/linkage.h \
    $(wildcard include/config/ARCH_USE_SYM_ANNOTATIONS) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/linkage.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/ratelimit_types.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/spinlock_types_raw.h \
    $(wildcard include/config/DEBUG_SPINLOCK) \
    $(wildcard include/config/DEBUG_LOCK_ALLOC) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/spinlock_types.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/qspinlock_types.h \
    $(wildcard include/config/NR_CPUS) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/qrwlock_types.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/lockdep_types.h \
    $(wildcard include/config/PROVE_RAW_LOCK_NESTING) \
    $(wildcard include/config/LOCKDEP) \
    $(wildcard include/config/LOCK_STAT) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/kernel.h \
    $(wildcard include/config/PREEMPT_VOLUNTARY_BUILD) \
    $(wildcard include/config/PREEMPT_DYNAMIC) \
    $(wildcard include/config/HAVE_PREEMPT_DYNAMIC_CALL) \
    $(wildcard include/config/HAVE_PREEMPT_DYNAMIC_KEY) \
    $(wildcard include/config/PREEMPT_) \
    $(wildcard include/config/DEBUG_ATOMIC_SLEEP) \
    $(wildcard include/config/MMU) \
    $(wildcard include/config/PROVE_LOCKING) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/align.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/limits.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/limits.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/vdso/limits.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/kstrtox.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/log2.h \
    $(wildcard include/config/ARCH_HAS_ILOG2_U32) \
    $(wildcard include/config/ARCH_HAS_ILOG2_U64) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/minmax.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/static_call_types.h \
    $(wildcard include/config/HAVE_STATIC_CALL) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/instruction_pointer.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/smp.h \
    $(wildcard include/config/UP_LATE_INIT) \
    $(wildcard include/config/DEBUG_PREEMPT) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/errno.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/errno.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/cpumask.h \
    $(wildcard include/config/FORCE_NR_CPUS) \
    $(wildcard include/config/HOTPLUG_CPU) \
    $(wildcard include/config/DEBUG_PER_CPU_MAPS) \
    $(wildcard include/config/CPUMASK_OFFSTACK) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/threads.h \
    $(wildcard include/config/BASE_SMALL) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/bitmap.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/find.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/string.h \
    $(wildcard include/config/BINARY_PRINTF) \
    $(wildcard include/config/FORTIFY_SOURCE) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/string.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/string.h \
    $(wildcard include/config/ARCH_HAS_UACCESS_FLUSHCACHE) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/gfp_types.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/numa.h \
    $(wildcard include/config/NODES_SHIFT) \
    $(wildcard include/config/NUMA_KEEP_MEMINFO) \
    $(wildcard include/config/NUMA) \
    $(wildcard include/config/HAVE_ARCH_NODE_DEV_GROUP) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/sparsemem.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/smp_types.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/llist.h \
    $(wildcard include/config/ARCH_HAVE_NMI_SAFE_CMPXCHG) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/preempt.h \
    $(wildcard include/config/PREEMPT_RT) \
    $(wildcard include/config/PREEMPT_COUNT) \
    $(wildcard include/config/TRACE_PREEMPT_TOGGLE) \
    $(wildcard include/config/PREEMPTION) \
    $(wildcard include/config/PREEMPT_NOTIFIERS) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/preempt.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/thread_info.h \
    $(wildcard include/config/THREAD_INFO_IN_TASK) \
    $(wildcard include/config/GENERIC_ENTRY) \
    $(wildcard include/config/HAVE_ARCH_WITHIN_STACK_FRAMES) \
    $(wildcard include/config/HARDENED_USERCOPY) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/restart_block.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/current.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/thread_info.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/memory.h \
    $(wildcard include/config/ARM64_VA_BITS) \
    $(wildcard include/config/KASAN_SHADOW_OFFSET) \
    $(wildcard include/config/VMAP_STACK) \
    $(wildcard include/config/DEBUG_VIRTUAL) \
    $(wildcard include/config/ZONE_DMA) \
    $(wildcard include/config/ZONE_DMA32) \
    $(wildcard include/config/EFI) \
    $(wildcard include/config/ARM_GIC_V3_ITS) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/sizes.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/page-def.h \
    $(wildcard include/config/ARM64_PAGE_SHIFT) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/mmdebug.h \
    $(wildcard include/config/DEBUG_VM) \
    $(wildcard include/config/DEBUG_VM_IRQSOFF) \
    $(wildcard include/config/DEBUG_VM_PGFLAGS) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/memory_model.h \
    $(wildcard include/config/FLATMEM) \
    $(wildcard include/config/SPARSEMEM_VMEMMAP) \
    $(wildcard include/config/SPARSEMEM) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/pfn.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/stack_pointer.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/smp.h \
    $(wildcard include/config/ARM64_ACPI_PARKING_PROTOCOL) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/percpu.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/percpu.h \
    $(wildcard include/config/HAVE_SETUP_PER_CPU_AREA) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/percpu-defs.h \
    $(wildcard include/config/DEBUG_FORCE_WEAK_PER_CPU) \
    $(wildcard include/config/AMD_MEM_ENCRYPT) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/clocksource/arm_arch_timer.h \
    $(wildcard include/config/ARM_ARCH_TIMER) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/timecounter.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/timex.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/vdso/time32.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/vdso/time.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/compat.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/compat.h \
    $(wildcard include/config/COMPAT_FOR_U64_ALIGNMENT) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/sched.h \
    $(wildcard include/config/VIRT_CPU_ACCOUNTING_NATIVE) \
    $(wildcard include/config/SCHED_INFO) \
    $(wildcard include/config/SCHEDSTATS) \
    $(wildcard include/config/SCHED_CORE) \
    $(wildcard include/config/FAIR_GROUP_SCHED) \
    $(wildcard include/config/RT_GROUP_SCHED) \
    $(wildcard include/config/RT_MUTEXES) \
    $(wildcard include/config/UCLAMP_TASK) \
    $(wildcard include/config/UCLAMP_BUCKETS_COUNT) \
    $(wildcard include/config/KMAP_LOCAL) \
    $(wildcard include/config/CGROUP_SCHED) \
    $(wildcard include/config/BLK_DEV_IO_TRACE) \
    $(wildcard include/config/PREEMPT_RCU) \
    $(wildcard include/config/TASKS_RCU) \
    $(wildcard include/config/TASKS_TRACE_RCU) \
    $(wildcard include/config/PSI) \
    $(wildcard include/config/MEMCG) \
    $(wildcard include/config/LRU_GEN) \
    $(wildcard include/config/COMPAT_BRK) \
    $(wildcard include/config/CGROUPS) \
    $(wildcard include/config/BLK_CGROUP) \
    $(wildcard include/config/PAGE_OWNER) \
    $(wildcard include/config/EVENTFD) \
    $(wildcard include/config/IOMMU_SVA) \
    $(wildcard include/config/CPU_SUP_INTEL) \
    $(wildcard include/config/TASK_DELAY_ACCT) \
    $(wildcard include/config/STACKPROTECTOR) \
    $(wildcard include/config/ARCH_HAS_SCALED_CPUTIME) \
    $(wildcard include/config/VIRT_CPU_ACCOUNTING_GEN) \
    $(wildcard include/config/NO_HZ_FULL) \
    $(wildcard include/config/POSIX_CPUTIMERS) \
    $(wildcard include/config/POSIX_CPU_TIMERS_TASK_WORK) \
    $(wildcard include/config/KEYS) \
    $(wildcard include/config/SYSVIPC) \
    $(wildcard include/config/DETECT_HUNG_TASK) \
    $(wildcard include/config/IO_URING) \
    $(wildcard include/config/AUDIT) \
    $(wildcard include/config/AUDITSYSCALL) \
    $(wildcard include/config/DEBUG_MUTEXES) \
    $(wildcard include/config/TRACE_IRQFLAGS) \
    $(wildcard include/config/UBSAN) \
    $(wildcard include/config/UBSAN_TRAP) \
    $(wildcard include/config/COMPACTION) \
    $(wildcard include/config/TASK_XACCT) \
    $(wildcard include/config/CPUSETS) \
    $(wildcard include/config/X86_CPU_RESCTRL) \
    $(wildcard include/config/FUTEX) \
    $(wildcard include/config/PERF_EVENTS) \
    $(wildcard include/config/NUMA_BALANCING) \
    $(wildcard include/config/RSEQ) \
    $(wildcard include/config/FAULT_INJECTION) \
    $(wildcard include/config/LATENCYTOP) \
    $(wildcard include/config/FUNCTION_GRAPH_TRACER) \
    $(wildcard include/config/UPROBES) \
    $(wildcard include/config/BCACHE) \
    $(wildcard include/config/SECURITY) \
    $(wildcard include/config/BPF_SYSCALL) \
    $(wildcard include/config/GCC_PLUGIN_STACKLEAK) \
    $(wildcard include/config/X86_MCE) \
    $(wildcard include/config/KRETPROBES) \
    $(wildcard include/config/RETHOOK) \
    $(wildcard include/config/ARCH_HAS_PARANOID_L1D_FLUSH) \
    $(wildcard include/config/RV) \
    $(wildcard include/config/ARCH_TASK_STRUCT_ON_STACK) \
    $(wildcard include/config/PREEMPT_NONE) \
    $(wildcard include/config/PREEMPT_VOLUNTARY) \
    $(wildcard include/config/PREEMPT) \
    $(wildcard include/config/DEBUG_RSEQ) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/sched.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/pid.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/rculist.h \
    $(wildcard include/config/PROVE_RCU_LIST) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/rcupdate.h \
    $(wildcard include/config/TINY_RCU) \
    $(wildcard include/config/RCU_STRICT_GRACE_PERIOD) \
    $(wildcard include/config/TASKS_RCU_GENERIC) \
    $(wildcard include/config/RCU_STALL_COMMON) \
    $(wildcard include/config/KVM_XFER_TO_GUEST_WORK) \
    $(wildcard include/config/RCU_NOCB_CPU) \
    $(wildcard include/config/TASKS_RUDE_RCU) \
    $(wildcard include/config/TREE_RCU) \
    $(wildcard include/config/DEBUG_OBJECTS_RCU_HEAD) \
    $(wildcard include/config/PROVE_RCU) \
    $(wildcard include/config/ARCH_WEAK_RELEASE_ACQUIRE) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/irqflags.h \
    $(wildcard include/config/IRQSOFF_TRACER) \
    $(wildcard include/config/PREEMPT_TRACER) \
    $(wildcard include/config/DEBUG_IRQFLAGS) \
    $(wildcard include/config/TRACE_IRQFLAGS_SUPPORT) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/irqflags.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/ptrace.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/uapi/asm/ptrace.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/uapi/asm/sve_context.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/bottom_half.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/lockdep.h \
    $(wildcard include/config/DEBUG_LOCKING_API_SELFTESTS) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/processor.h \
    $(wildcard include/config/KUSER_HELPERS) \
    $(wildcard include/config/ARM64_FORCE_52BIT) \
    $(wildcard include/config/HAVE_HW_BREAKPOINT) \
    $(wildcard include/config/ARM64_PTR_AUTH_KERNEL) \
    $(wildcard include/config/ARM64_TAGGED_ADDR_ABI) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/vdso/processor.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/vdso/processor.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/hw_breakpoint.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/virt.h \
    $(wildcard include/config/KVM) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/sections.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/sections.h \
    $(wildcard include/config/HAVE_FUNCTION_DESCRIPTORS) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/kasan.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/mte-kasan.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/pgtable-types.h \
    $(wildcard include/config/PGTABLE_LEVELS) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/pgtable-nop4d.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/pgtable-hwdef.h \
    $(wildcard include/config/ARM64_CONT_PTE_SHIFT) \
    $(wildcard include/config/ARM64_CONT_PMD_SHIFT) \
    $(wildcard include/config/ARM64_VA_BITS_52) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/pointer_auth.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/prctl.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/random.h \
    $(wildcard include/config/VMGENID) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/once.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/random.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/ioctl.h \
  arch/arm64/include/generated/uapi/asm/ioctl.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/ioctl.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/asm-generic/ioctl.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/irqnr.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/irqnr.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/prandom.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/percpu.h \
    $(wildcard include/config/NEED_PER_CPU_EMBED_FIRST_CHUNK) \
    $(wildcard include/config/NEED_PER_CPU_PAGE_FIRST_CHUNK) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/archrandom.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/arm-smccc.h \
    $(wildcard include/config/ARM64) \
    $(wildcard include/config/HAVE_ARM_SMCCC) \
    $(wildcard include/config/ARM) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/spectre.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/fpsimd.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/uapi/asm/sigcontext.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/context_tracking_irq.h \
    $(wildcard include/config/CONTEXT_TRACKING_IDLE) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/rcutree.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/wait.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/spinlock.h \
  arch/arm64/include/generated/asm/mmiowb.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/mmiowb.h \
    $(wildcard include/config/MMIOWB) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/spinlock_types.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/rwlock_types.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/spinlock.h \
  arch/arm64/include/generated/asm/qspinlock.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/qspinlock.h \
  arch/arm64/include/generated/asm/qrwlock.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/qrwlock.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/rwlock.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/spinlock_api_smp.h \
    $(wildcard include/config/INLINE_SPIN_LOCK) \
    $(wildcard include/config/INLINE_SPIN_LOCK_BH) \
    $(wildcard include/config/INLINE_SPIN_LOCK_IRQ) \
    $(wildcard include/config/INLINE_SPIN_LOCK_IRQSAVE) \
    $(wildcard include/config/INLINE_SPIN_TRYLOCK) \
    $(wildcard include/config/INLINE_SPIN_TRYLOCK_BH) \
    $(wildcard include/config/UNINLINE_SPIN_UNLOCK) \
    $(wildcard include/config/INLINE_SPIN_UNLOCK_BH) \
    $(wildcard include/config/INLINE_SPIN_UNLOCK_IRQ) \
    $(wildcard include/config/INLINE_SPIN_UNLOCK_IRQRESTORE) \
    $(wildcard include/config/GENERIC_LOCKBREAK) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/rwlock_api_smp.h \
    $(wildcard include/config/INLINE_READ_LOCK) \
    $(wildcard include/config/INLINE_WRITE_LOCK) \
    $(wildcard include/config/INLINE_READ_LOCK_BH) \
    $(wildcard include/config/INLINE_WRITE_LOCK_BH) \
    $(wildcard include/config/INLINE_READ_LOCK_IRQ) \
    $(wildcard include/config/INLINE_WRITE_LOCK_IRQ) \
    $(wildcard include/config/INLINE_READ_LOCK_IRQSAVE) \
    $(wildcard include/config/INLINE_WRITE_LOCK_IRQSAVE) \
    $(wildcard include/config/INLINE_READ_TRYLOCK) \
    $(wildcard include/config/INLINE_WRITE_TRYLOCK) \
    $(wildcard include/config/INLINE_READ_UNLOCK) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK) \
    $(wildcard include/config/INLINE_READ_UNLOCK_BH) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK_BH) \
    $(wildcard include/config/INLINE_READ_UNLOCK_IRQ) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK_IRQ) \
    $(wildcard include/config/INLINE_READ_UNLOCK_IRQRESTORE) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK_IRQRESTORE) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/wait.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/refcount.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/sem.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/sem.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/ipc.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/uidgid.h \
    $(wildcard include/config/MULTIUSER) \
    $(wildcard include/config/USER_NS) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/highuid.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/rhashtable-types.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/mutex.h \
    $(wildcard include/config/MUTEX_SPIN_ON_OWNER) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/osq_lock.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/debug_locks.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/workqueue.h \
    $(wildcard include/config/DEBUG_OBJECTS_WORK) \
    $(wildcard include/config/FREEZER) \
    $(wildcard include/config/WQ_WATCHDOG) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/timer.h \
    $(wildcard include/config/DEBUG_OBJECTS_TIMERS) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/ktime.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/jiffies.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/vdso/jiffies.h \
  include/generated/timeconst.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/vdso/ktime.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/timekeeping.h \
    $(wildcard include/config/GENERIC_CMOS_UPDATE) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/clocksource_ids.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/debugobjects.h \
    $(wildcard include/config/DEBUG_OBJECTS) \
    $(wildcard include/config/DEBUG_OBJECTS_FREE) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/ipc.h \
  arch/arm64/include/generated/uapi/asm/ipcbuf.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/asm-generic/ipcbuf.h \
  arch/arm64/include/generated/uapi/asm/sembuf.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/asm-generic/sembuf.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/shm.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/page.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/personality.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/personality.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/getorder.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/shm.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/asm-generic/hugetlb_encode.h \
  arch/arm64/include/generated/uapi/asm/shmbuf.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/asm-generic/shmbuf.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/shmparam.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/shmparam.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/kmsan_types.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/plist.h \
    $(wildcard include/config/DEBUG_PLIST) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/hrtimer.h \
    $(wildcard include/config/HIGH_RES_TIMERS) \
    $(wildcard include/config/TIME_LOW_RES) \
    $(wildcard include/config/TIMERFD) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/hrtimer_defs.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/rbtree.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/rbtree_types.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/seqlock.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/timerqueue.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/seccomp.h \
    $(wildcard include/config/SECCOMP) \
    $(wildcard include/config/HAVE_ARCH_SECCOMP_FILTER) \
    $(wildcard include/config/SECCOMP_FILTER) \
    $(wildcard include/config/CHECKPOINT_RESTORE) \
    $(wildcard include/config/SECCOMP_CACHE_DEBUG) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/seccomp.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/seccomp.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/unistd.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/uapi/asm/unistd.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/asm-generic/unistd.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/seccomp.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/unistd.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/nodemask.h \
    $(wildcard include/config/HIGHMEM) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/resource.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/resource.h \
  arch/arm64/include/generated/uapi/asm/resource.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/resource.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/asm-generic/resource.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/latencytop.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/sched/prio.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/sched/types.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/signal_types.h \
    $(wildcard include/config/OLD_SIGACTION) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/signal.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/signal.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/uapi/asm/signal.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/signal.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/asm-generic/signal.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/asm-generic/signal-defs.h \
  arch/arm64/include/generated/uapi/asm/siginfo.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/asm-generic/siginfo.h \
  arch/arm64/include/generated/uapi/asm/siginfo.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/syscall_user_dispatch.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/mm_types_task.h \
    $(wildcard include/config/ARCH_WANT_BATCHED_UNMAP_TLB_FLUSH) \
    $(wildcard include/config/SPLIT_PTLOCK_CPUS) \
    $(wildcard include/config/ARCH_ENABLE_SPLIT_PMD_PTLOCK) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/task_io_accounting.h \
    $(wildcard include/config/TASK_IO_ACCOUNTING) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/posix-timers.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/alarmtimer.h \
    $(wildcard include/config/RTC_CLASS) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/rseq.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/kcsan.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/rv.h \
    $(wildcard include/config/RV_REACTORS) \
  arch/arm64/include/generated/asm/kmap_size.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/kmap_size.h \
    $(wildcard include/config/DEBUG_KMAP_LOCAL) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/sched/task_stack.h \
    $(wildcard include/config/STACK_GROWSUP) \
    $(wildcard include/config/DEBUG_STACK_USAGE) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/magic.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/stat.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/buildid.h \
    $(wildcard include/config/CRASH_CORE) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/mm_types.h \
    $(wildcard include/config/HAVE_ALIGNED_STRUCT_PAGE) \
    $(wildcard include/config/USERFAULTFD) \
    $(wildcard include/config/SWAP) \
    $(wildcard include/config/HAVE_ARCH_COMPAT_MMAP_BASES) \
    $(wildcard include/config/MEMBARRIER) \
    $(wildcard include/config/AIO) \
    $(wildcard include/config/MMU_NOTIFIER) \
    $(wildcard include/config/TRANSPARENT_HUGEPAGE) \
    $(wildcard include/config/HUGETLB_PAGE) \
    $(wildcard include/config/KSM) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/auxvec.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/auxvec.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/uapi/asm/auxvec.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/kref.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/maple_tree.h \
    $(wildcard include/config/MAPLE_RCU_DISABLED) \
    $(wildcard include/config/DEBUG_MAPLE_TREE_VERBOSE) \
    $(wildcard include/config/DEBUG_MAPLE_TREE) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/rwsem.h \
    $(wildcard include/config/RWSEM_SPIN_ON_OWNER) \
    $(wildcard include/config/DEBUG_RWSEMS) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/completion.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/swait.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/uprobes.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/page-flags-layout.h \
  include/generated/bounds.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/mmu.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/kmod.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/umh.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/gfp.h \
    $(wildcard include/config/ZONE_DEVICE) \
    $(wildcard include/config/PM_SLEEP) \
    $(wildcard include/config/CONTIG_ALLOC) \
    $(wildcard include/config/CMA) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/mmzone.h \
    $(wildcard include/config/ARCH_FORCE_MAX_ORDER) \
    $(wildcard include/config/MEMORY_ISOLATION) \
    $(wildcard include/config/ZSMALLOC) \
    $(wildcard include/config/LRU_GEN_STATS) \
    $(wildcard include/config/MEMORY_HOTPLUG) \
    $(wildcard include/config/PAGE_EXTENSION) \
    $(wildcard include/config/DEFERRED_STRUCT_PAGE_INIT) \
    $(wildcard include/config/HAVE_MEMORYLESS_NODES) \
    $(wildcard include/config/SPARSEMEM_EXTREME) \
    $(wildcard include/config/HAVE_ARCH_PFN_VALID) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/pageblock-flags.h \
    $(wildcard include/config/HUGETLB_PAGE_SIZE_VARIABLE) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/page-flags.h \
    $(wildcard include/config/ARCH_USES_PG_UNCACHED) \
    $(wildcard include/config/MEMORY_FAILURE) \
    $(wildcard include/config/PAGE_IDLE_FLAG) \
    $(wildcard include/config/HUGETLB_PAGE_OPTIMIZE_VMEMMAP) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/local_lock.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/local_lock_internal.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/memory_hotplug.h \
    $(wildcard include/config/HAVE_ARCH_NODEDATA_EXTENSION) \
    $(wildcard include/config/ARCH_HAS_ADD_PAGES) \
    $(wildcard include/config/MEMORY_HOTREMOVE) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/notifier.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/srcu.h \
    $(wildcard include/config/TINY_SRCU) \
    $(wildcard include/config/SRCU) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/rcu_segcblist.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/srcutree.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/rcu_node_tree.h \
    $(wildcard include/config/RCU_FANOUT) \
    $(wildcard include/config/RCU_FANOUT_LEAF) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/mmzone.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/numa.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/topology.h \
    $(wildcard include/config/ACPI_CPPC_LIB) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/arch_topology.h \
    $(wildcard include/config/GENERIC_ARCH_TOPOLOGY) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/topology.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/numa.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/topology.h \
    $(wildcard include/config/USE_PERCPU_NUMA_NODE_ID) \
    $(wildcard include/config/SCHED_SMT) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/sysctl.h \
    $(wildcard include/config/SYSCTL) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/sysctl.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/elf.h \
    $(wildcard include/config/ARCH_USE_GNU_PROPERTY) \
    $(wildcard include/config/ARCH_HAVE_ELF_PROT) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/elf.h \
    $(wildcard include/config/COMPAT_VDSO) \
  arch/arm64/include/generated/asm/user.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/user.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/elf.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/elf-em.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/fs.h \
    $(wildcard include/config/READ_ONLY_THP_FOR_FS) \
    $(wildcard include/config/FS_POSIX_ACL) \
    $(wildcard include/config/CGROUP_WRITEBACK) \
    $(wildcard include/config/IMA) \
    $(wildcard include/config/FILE_LOCKING) \
    $(wildcard include/config/FSNOTIFY) \
    $(wildcard include/config/FS_ENCRYPTION) \
    $(wildcard include/config/FS_VERITY) \
    $(wildcard include/config/EPOLL) \
    $(wildcard include/config/UNICODE) \
    $(wildcard include/config/QUOTA) \
    $(wildcard include/config/FS_DAX) \
    $(wildcard include/config/BLOCK) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/wait_bit.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/kdev_t.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/kdev_t.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/dcache.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/rculist_bl.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/list_bl.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/bit_spinlock.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/lockref.h \
    $(wildcard include/config/ARCH_USE_CMPXCHG_LOCKREF) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/stringhash.h \
    $(wildcard include/config/DCACHE_WORD_ACCESS) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/hash.h \
    $(wildcard include/config/HAVE_ARCH_HASH) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/path.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/list_lru.h \
    $(wildcard include/config/MEMCG_KMEM) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/shrinker.h \
    $(wildcard include/config/SHRINKER_DEBUG) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/xarray.h \
    $(wildcard include/config/XARRAY_MULTI) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/kconfig.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/sched/mm.h \
    $(wildcard include/config/ARCH_HAS_MEMBARRIER_CALLBACKS) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/sync_core.h \
    $(wildcard include/config/ARCH_HAS_SYNC_CORE_BEFORE_USERMODE) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/ioasid.h \
    $(wildcard include/config/IOASID) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/radix-tree.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/capability.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/capability.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/semaphore.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/fcntl.h \
    $(wildcard include/config/ARCH_32BIT_OFF_T) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/fcntl.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/uapi/asm/fcntl.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/asm-generic/fcntl.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/openat2.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/migrate_mode.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/percpu-rwsem.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/rcuwait.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/sched/signal.h \
    $(wildcard include/config/SCHED_AUTOGROUP) \
    $(wildcard include/config/BSD_PROCESS_ACCT) \
    $(wildcard include/config/TASKSTATS) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/signal.h \
    $(wildcard include/config/DYNAMIC_SIGFRAME) \
    $(wildcard include/config/PROC_FS) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/sched/jobctl.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/sched/task.h \
    $(wildcard include/config/HAVE_EXIT_THREAD) \
    $(wildcard include/config/ARCH_WANTS_DYNAMIC_TASK_STRUCT) \
    $(wildcard include/config/HAVE_ARCH_THREAD_STRUCT_WHITELIST) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/uaccess.h \
    $(wildcard include/config/ARCH_HAS_SUBPAGE_FAULTS) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/fault-inject-usercopy.h \
    $(wildcard include/config/FAULT_INJECTION_USERCOPY) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/uaccess.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/kernel-pgtable.h \
    $(wildcard include/config/RANDOMIZE_BASE) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/boot.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/asm-extable.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/mte.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/extable.h \
    $(wildcard include/config/BPF_JIT) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/access_ok.h \
    $(wildcard include/config/ALTERNATE_USER_ADDRESS_SPACE) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/cred.h \
    $(wildcard include/config/DEBUG_CREDENTIALS) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/key.h \
    $(wildcard include/config/KEY_NOTIFICATIONS) \
    $(wildcard include/config/NET) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/assoc_array.h \
    $(wildcard include/config/ASSOCIATIVE_ARRAY) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/sched/user.h \
    $(wildcard include/config/VFIO_PCI_ZDEV_KVM) \
    $(wildcard include/config/WATCH_QUEUE) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/percpu_counter.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/ratelimit.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/rcu_sync.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/delayed_call.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/uuid.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/uuid.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/errseq.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/ioprio.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/sched/rt.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/iocontext.h \
    $(wildcard include/config/BLK_ICQ) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/ioprio.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/fs_types.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/mount.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/mnt_idmapping.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/slab.h \
    $(wildcard include/config/DEBUG_SLAB) \
    $(wildcard include/config/FAILSLAB) \
    $(wildcard include/config/KFENCE) \
    $(wildcard include/config/SLAB) \
    $(wildcard include/config/SLUB) \
    $(wildcard include/config/SLOB) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/overflow.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/percpu-refcount.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/kasan.h \
    $(wildcard include/config/KASAN_STACK) \
    $(wildcard include/config/KASAN_VMALLOC) \
    $(wildcard include/config/KASAN_INLINE) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/fs.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/quota.h \
    $(wildcard include/config/QUOTA_NETLINK_INTERFACE) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/dqblk_xfs.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/dqblk_v1.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/dqblk_v2.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/dqblk_qtree.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/projid.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/quota.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/nfs_fs_i.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/kobject.h \
    $(wildcard include/config/UEVENT_HELPER) \
    $(wildcard include/config/DEBUG_KOBJECT_RELEASE) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/sysfs.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/kernfs.h \
    $(wildcard include/config/KERNFS) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/idr.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/kobject_ns.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/moduleparam.h \
    $(wildcard include/config/ALPHA) \
    $(wildcard include/config/IA64) \
    $(wildcard include/config/PPC64) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/rbtree_latch.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/error-injection.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/error-injection.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/tracepoint-defs.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/module.h \
    $(wildcard include/config/ARM64_MODULE_PLTS) \
    $(wildcard include/config/DYNAMIC_FTRACE) \
    $(wildcard include/config/ARM64_ERRATUM_843419) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/module.h \
    $(wildcard include/config/HAVE_MOD_ARCH_SPECIFIC) \
    $(wildcard include/config/MODULES_USE_ELF_REL) \
    $(wildcard include/config/MODULES_USE_ELF_RELA) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/delay.h \
  arch/arm64/include/generated/asm/delay.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/delay.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/pm.h \
    $(wildcard include/config/VT_CONSOLE_SLEEP) \
    $(wildcard include/config/CXL_SUSPEND) \
    $(wildcard include/config/PM) \
    $(wildcard include/config/PM_CLK) \
    $(wildcard include/config/PM_GENERIC_DOMAINS) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/clk.h \
    $(wildcard include/config/COMMON_CLK) \
    $(wildcard include/config/HAVE_CLK_PREPARE) \
    $(wildcard include/config/HAVE_CLK) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/i2c.h \
    $(wildcard include/config/I2C) \
    $(wildcard include/config/I2C_SLAVE) \
    $(wildcard include/config/I2C_BOARDINFO) \
    $(wildcard include/config/I2C_MUX) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/acpi.h \
    $(wildcard include/config/ACPI_DEBUGGER) \
    $(wildcard include/config/ACPI_TABLE_LIB) \
    $(wildcard include/config/X86) \
    $(wildcard include/config/LOONGARCH) \
    $(wildcard include/config/ACPI_PROCESSOR_CSTATE) \
    $(wildcard include/config/ACPI_HOTPLUG_CPU) \
    $(wildcard include/config/ACPI_HOTPLUG_IOAPIC) \
    $(wildcard include/config/X86_IO_APIC) \
    $(wildcard include/config/PCI) \
    $(wildcard include/config/ACPI_WMI) \
    $(wildcard include/config/ACPI_NUMA) \
    $(wildcard include/config/HIBERNATION) \
    $(wildcard include/config/ACPI_HOTPLUG_MEMORY) \
    $(wildcard include/config/ACPI_CONTAINER) \
    $(wildcard include/config/ACPI_GTDT) \
    $(wildcard include/config/GPIOLIB) \
    $(wildcard include/config/ACPI_TABLE_UPGRADE) \
    $(wildcard include/config/ACPI_WATCHDOG) \
    $(wildcard include/config/ACPI_SPCR_TABLE) \
    $(wildcard include/config/ACPI_GENERIC_GSI) \
    $(wildcard include/config/ACPI_LPIT) \
    $(wildcard include/config/ACPI_PPTT) \
    $(wildcard include/config/ACPI_PCC) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/ioport.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/irqdomain.h \
    $(wildcard include/config/IRQ_DOMAIN_HIERARCHY) \
    $(wildcard include/config/GENERIC_IRQ_DEBUGFS) \
    $(wildcard include/config/IRQ_DOMAIN) \
    $(wildcard include/config/IRQ_DOMAIN_NOMAP) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/irqhandler.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/of.h \
    $(wildcard include/config/OF_DYNAMIC) \
    $(wildcard include/config/SPARC) \
    $(wildcard include/config/OF_PROMTREE) \
    $(wildcard include/config/OF_KOBJ) \
    $(wildcard include/config/OF_NUMA) \
    $(wildcard include/config/OF_OVERLAY) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/mod_devicetable.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/property.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/fwnode.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/resource_ext.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/device.h \
    $(wildcard include/config/GENERIC_MSI_IRQ_DOMAIN) \
    $(wildcard include/config/GENERIC_MSI_IRQ) \
    $(wildcard include/config/ENERGY_MODEL) \
    $(wildcard include/config/PINCTRL) \
    $(wildcard include/config/DMA_OPS) \
    $(wildcard include/config/DMA_DECLARE_COHERENT) \
    $(wildcard include/config/DMA_CMA) \
    $(wildcard include/config/SWIOTLB) \
    $(wildcard include/config/ARCH_HAS_SYNC_DMA_FOR_DEVICE) \
    $(wildcard include/config/ARCH_HAS_SYNC_DMA_FOR_CPU) \
    $(wildcard include/config/ARCH_HAS_SYNC_DMA_FOR_CPU_ALL) \
    $(wildcard include/config/DMA_OPS_BYPASS) \
    $(wildcard include/config/DEVTMPFS) \
    $(wildcard include/config/SYSFS_DEPRECATED) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/dev_printk.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/energy_model.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/sched/cpufreq.h \
    $(wildcard include/config/CPU_FREQ) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/sched/topology.h \
    $(wildcard include/config/SCHED_DEBUG) \
    $(wildcard include/config/SCHED_CLUSTER) \
    $(wildcard include/config/SCHED_MC) \
    $(wildcard include/config/CPU_FREQ_GOV_SCHEDUTIL) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/sched/idle.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/sched/sd_flags.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/klist.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/device/bus.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/device/class.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/device/driver.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/device.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/pm_wakeup.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/acpi/acpi.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/acpi/platform/acenv.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/acpi/platform/acgcc.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/acpi/platform/aclinux.h \
    $(wildcard include/config/ACPI_REDUCED_HARDWARE_ONLY) \
    $(wildcard include/config/ACPI_DEBUG) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/ctype.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/acenv.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/acpi/acnames.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/acpi/actypes.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/acpi/acexcep.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/acpi/actbl.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/acpi/actbl1.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/acpi/actbl2.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/acpi/actbl3.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/acpi/acrestyp.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/acpi/platform/acenvex.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/acpi/platform/aclinuxex.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/acpi/platform/acgccex.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/acpi/acoutput.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/acpi/acpiosxf.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/acpi/acpixf.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/acpi/acconfig.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/acpi/acbuffer.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/dynamic_debug.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/acpi/acpi_bus.h \
    $(wildcard include/config/X86_ANDROID_TABLETS) \
    $(wildcard include/config/ACPI_SYSTEM_POWER_STATES_SUPPORT) \
    $(wildcard include/config/ACPI_SLEEP) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/acpi/acpi_drivers.h \
    $(wildcard include/config/ACPI_DOCK) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/acpi/acpi_numa.h \
    $(wildcard include/config/ACPI_HMAT) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/acpi/acpi_io.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/io.h \
    $(wildcard include/config/HAS_IOPORT_MAP) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/io.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/pgtable.h \
    $(wildcard include/config/HIGHPTE) \
    $(wildcard include/config/ARCH_HAS_NONLEAF_PMD_YOUNG) \
    $(wildcard include/config/GUP_GET_PTE_LOW_HIGH) \
    $(wildcard include/config/HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD) \
    $(wildcard include/config/HAVE_ARCH_SOFT_DIRTY) \
    $(wildcard include/config/ARCH_ENABLE_THP_MIGRATION) \
    $(wildcard include/config/ARCH_HAS_PTE_DEVMAP) \
    $(wildcard include/config/HAVE_ARCH_HUGE_VMAP) \
    $(wildcard include/config/X86_ESPFIX64) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/pgtable.h \
    $(wildcard include/config/PAGE_TABLE_CHECK) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/proc-fns.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/pgtable-prot.h \
    $(wildcard include/config/ARM64_BTI_KERNEL) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/tlbflush.h \
    $(wildcard include/config/ARM64_WORKAROUND_REPEAT_TLBI) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/fixmap.h \
    $(wildcard include/config/ACPI_APEI_GHES) \
    $(wildcard include/config/ARM_SDE_INTERFACE) \
    $(wildcard include/config/UNMAP_KERNEL_AT_EL0) \
    $(wildcard include/config/RELOCATABLE) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/fixmap.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/page_table_check.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/pgtable_uffd.h \
    $(wildcard include/config/HAVE_ARCH_USERFAULTFD_WP) \
  arch/arm64/include/generated/asm/early_ioremap.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/early_ioremap.h \
    $(wildcard include/config/GENERIC_EARLY_IOREMAP) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/io.h \
    $(wildcard include/config/GENERIC_IOMAP) \
    $(wildcard include/config/TRACE_MMIO_ACCESS) \
    $(wildcard include/config/GENERIC_IOREMAP) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/pci_iomap.h \
    $(wildcard include/config/NO_GENERIC_PCI_IOPORT_MAP) \
    $(wildcard include/config/GENERIC_PCI_IOMAP) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/logic_pio.h \
    $(wildcard include/config/INDIRECT_PIO) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/vmalloc.h \
    $(wildcard include/config/HAVE_ARCH_HUGE_VMALLOC) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/vmalloc.h \
    $(wildcard include/config/PTDUMP_DEBUGFS) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/acpi.h \
    $(wildcard include/config/ACPI_APEI) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/efi.h \
    $(wildcard include/config/X86_64) \
    $(wildcard include/config/X86_32) \
    $(wildcard include/config/EFI_ESRT) \
    $(wildcard include/config/EFI_FAKE_MEMMAP) \
    $(wildcard include/config/EFI_PCDP) \
    $(wildcard include/config/EFI_SOFT_RESERVE) \
    $(wildcard include/config/EFI_CAPSULE_LOADER) \
    $(wildcard include/config/EFI_RUNTIME_MAP) \
    $(wildcard include/config/EFI_EMBEDDED_FIRMWARE) \
    $(wildcard include/config/LOAD_UEFI_KEYS) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/proc_fs.h \
    $(wildcard include/config/PROC_PID_ARCH_STATUS) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/rtc.h \
    $(wildcard include/config/RTC_INTF_DEV_UIE_EMUL) \
    $(wildcard include/config/RTC_HCTOSYS_DEVICE) \
    $(wildcard include/config/RTC_NVMEM) \
    $(wildcard include/config/RTC_INTF_SYSFS) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/interrupt.h \
    $(wildcard include/config/IRQ_FORCED_THREADING) \
    $(wildcard include/config/GENERIC_IRQ_PROBE) \
    $(wildcard include/config/IRQ_TIMINGS) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/irqreturn.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/hardirq.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/context_tracking_state.h \
    $(wildcard include/config/CONTEXT_TRACKING_USER) \
    $(wildcard include/config/CONTEXT_TRACKING) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/ftrace_irq.h \
    $(wildcard include/config/HWLAT_TRACER) \
    $(wildcard include/config/OSNOISE_TRACER) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/vtime.h \
    $(wildcard include/config/VIRT_CPU_ACCOUNTING) \
    $(wildcard include/config/IRQ_TIME_ACCOUNTING) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/hardirq.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/irq.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/irq.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/kvm_arm.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/esr.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/hardirq.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/irq.h \
    $(wildcard include/config/GENERIC_IRQ_EFFECTIVE_AFF_MASK) \
    $(wildcard include/config/GENERIC_IRQ_IPI) \
    $(wildcard include/config/DEPRECATED_IRQ_CPU_ONOFFLINE) \
    $(wildcard include/config/GENERIC_IRQ_MIGRATION) \
    $(wildcard include/config/GENERIC_PENDING_IRQ) \
    $(wildcard include/config/HARDIRQS_SW_RESEND) \
    $(wildcard include/config/GENERIC_IRQ_LEGACY) \
    $(wildcard include/config/GENERIC_IRQ_MULTI_HANDLER) \
  arch/arm64/include/generated/asm/irq_regs.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/irq_regs.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/irqdesc.h \
    $(wildcard include/config/SPARSE_IRQ) \
  arch/arm64/include/generated/asm/hw_irq.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/hw_irq.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/nvmem-provider.h \
    $(wildcard include/config/NVMEM) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/gpio/consumer.h \
    $(wildcard include/config/OF_GPIO) \
    $(wildcard include/config/GPIO_SYSFS) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/rtc.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/seq_file.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/string_helpers.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/cdev.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/poll.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/poll.h \
  arch/arm64/include/generated/uapi/asm/poll.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/asm-generic/poll.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/eventpoll.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/pstore.h \
    $(wildcard include/config/ARM_THUMB) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/kmsg_dump.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/range.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/reboot.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/reboot.h \
  arch/arm64/include/generated/asm/emergency-restart.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/emergency-restart.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/screen_info.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/screen_info.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/memblock.h \
    $(wildcard include/config/ARCH_KEEP_MEMBLOCK) \
    $(wildcard include/config/HAVE_MEMBLOCK_PHYS_MAP) \
    $(wildcard include/config/MEMTEST) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/mm.h \
    $(wildcard include/config/HAVE_ARCH_MMAP_RND_BITS) \
    $(wildcard include/config/HAVE_ARCH_MMAP_RND_COMPAT_BITS) \
    $(wildcard include/config/MEM_SOFT_DIRTY) \
    $(wildcard include/config/ARCH_USES_HIGH_VMA_FLAGS) \
    $(wildcard include/config/ARCH_HAS_PKEYS) \
    $(wildcard include/config/PPC) \
    $(wildcard include/config/PARISC) \
    $(wildcard include/config/SPARC64) \
    $(wildcard include/config/HAVE_ARCH_USERFAULTFD_MINOR) \
    $(wildcard include/config/SHMEM) \
    $(wildcard include/config/MIGRATION) \
    $(wildcard include/config/ARCH_HAS_PTE_SPECIAL) \
    $(wildcard include/config/DEBUG_VM_RB) \
    $(wildcard include/config/HAVE_FAST_GUP) \
    $(wildcard include/config/PAGE_POISONING) \
    $(wildcard include/config/INIT_ON_ALLOC_DEFAULT_ON) \
    $(wildcard include/config/INIT_ON_FREE_DEFAULT_ON) \
    $(wildcard include/config/DEBUG_PAGEALLOC) \
    $(wildcard include/config/HUGETLBFS) \
    $(wildcard include/config/MAPPING_DIRTY_HELPERS) \
    $(wildcard include/config/ANON_VMA_NAME) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/mmap_lock.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/page_ext.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/stacktrace.h \
    $(wildcard include/config/ARCH_STACKWALK) \
    $(wildcard include/config/STACKTRACE) \
    $(wildcard include/config/HAVE_RELIABLE_STACKTRACE) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/stackdepot.h \
    $(wildcard include/config/STACKDEPOT) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/page_ref.h \
    $(wildcard include/config/DEBUG_PAGE_REF) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/memremap.h \
    $(wildcard include/config/DEVICE_PRIVATE) \
    $(wildcard include/config/PCI_P2PDMA) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/huge_mm.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/sched/coredump.h \
    $(wildcard include/config/CORE_DUMP_DEFAULT_ELF_HEADERS) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/vmstat.h \
    $(wildcard include/config/VM_EVENT_COUNTERS) \
    $(wildcard include/config/DEBUG_TLBFLUSH) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/vm_event_item.h \
    $(wildcard include/config/MEMORY_BALLOON) \
    $(wildcard include/config/BALLOON_COMPACTION) \
    $(wildcard include/config/ZSWAP) \
  arch/arm64/include/generated/asm/dma.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/dma.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/psci.h \
    $(wildcard include/config/ARM_PSCI_FW) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/smp_plat.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/regulator/consumer.h \
    $(wildcard include/config/REGULATOR) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/suspend.h \
    $(wildcard include/config/VT) \
    $(wildcard include/config/SUSPEND) \
    $(wildcard include/config/HIBERNATION_SNAPSHOT_DEV) \
    $(wildcard include/config/PM_SLEEP_DEBUG) \
    $(wildcard include/config/PM_AUTOSLEEP) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/swap.h \
    $(wildcard include/config/PTE_MARKER) \
    $(wildcard include/config/FRONTSWAP) \
    $(wildcard include/config/THP_SWAP) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/memcontrol.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/cgroup.h \
    $(wildcard include/config/CGROUP_CPUACCT) \
    $(wildcard include/config/SOCK_CGROUP_DATA) \
    $(wildcard include/config/CGROUP_DATA) \
    $(wildcard include/config/CGROUP_BPF) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/cgroupstats.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/taskstats.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/ns_common.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/nsproxy.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/user_namespace.h \
    $(wildcard include/config/INOTIFY_USER) \
    $(wildcard include/config/FANOTIFY) \
    $(wildcard include/config/PERSISTENT_KEYRINGS) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/kernel_stat.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/cgroup-defs.h \
    $(wildcard include/config/CGROUP_NET_CLASSID) \
    $(wildcard include/config/CGROUP_NET_PRIO) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/u64_stats_sync.h \
  arch/arm64/include/generated/asm/local64.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/local64.h \
  arch/arm64/include/generated/asm/local.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/local.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/bpf-cgroup-defs.h \
    $(wildcard include/config/BPF_LSM) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/psi_types.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/kthread.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/cgroup_subsys.h \
    $(wildcard include/config/CGROUP_DEVICE) \
    $(wildcard include/config/CGROUP_FREEZER) \
    $(wildcard include/config/CGROUP_PERF) \
    $(wildcard include/config/CGROUP_HUGETLB) \
    $(wildcard include/config/CGROUP_PIDS) \
    $(wildcard include/config/CGROUP_RDMA) \
    $(wildcard include/config/CGROUP_MISC) \
    $(wildcard include/config/CGROUP_DEBUG) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/page_counter.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/vmpressure.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/eventfd.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/writeback.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/flex_proportions.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/backing-dev-defs.h \
    $(wildcard include/config/DEBUG_FS) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/blk_types.h \
    $(wildcard include/config/FAIL_MAKE_REQUEST) \
    $(wildcard include/config/BLK_CGROUP_IOCOST) \
    $(wildcard include/config/BLK_INLINE_ENCRYPTION) \
    $(wildcard include/config/BLK_DEV_INTEGRITY) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/bvec.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/highmem.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/cacheflush.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/cacheflush.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/kgdb.h \
    $(wildcard include/config/HAVE_ARCH_KGDB) \
    $(wildcard include/config/KGDB) \
    $(wildcard include/config/SERIAL_KGDB_NMI) \
    $(wildcard include/config/KGDB_HONOUR_BLOCKLIST) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/kprobes.h \
    $(wildcard include/config/KRETPROBE_ON_RETHOOK) \
    $(wildcard include/config/KPROBES_SANITY_TEST) \
    $(wildcard include/config/OPTPROBES) \
    $(wildcard include/config/KPROBES_ON_FTRACE) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/ftrace.h \
    $(wildcard include/config/FUNCTION_TRACER) \
    $(wildcard include/config/HAVE_DYNAMIC_FTRACE_WITH_ARGS) \
    $(wildcard include/config/DYNAMIC_FTRACE_WITH_REGS) \
    $(wildcard include/config/DYNAMIC_FTRACE_WITH_DIRECT_CALLS) \
    $(wildcard include/config/HAVE_DYNAMIC_FTRACE_WITH_DIRECT_CALLS) \
    $(wildcard include/config/STACK_TRACER) \
    $(wildcard include/config/FRAME_POINTER) \
    $(wildcard include/config/FUNCTION_PROFILER) \
    $(wildcard include/config/FTRACE_SYSCALLS) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/trace_recursion.h \
    $(wildcard include/config/FTRACE_RECORD_RECURSION) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/trace_clock.h \
  arch/arm64/include/generated/asm/trace_clock.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/trace_clock.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/kallsyms.h \
    $(wildcard include/config/KALLSYMS_ALL) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/ptrace.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/pid_namespace.h \
    $(wildcard include/config/PID_NS) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/ptrace.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/ftrace.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/compat.h \
    $(wildcard include/config/ARCH_HAS_SYSCALL_WRAPPER) \
    $(wildcard include/config/X86_X32_ABI) \
    $(wildcard include/config/COMPAT_OLD_SIGACTION) \
    $(wildcard include/config/ODD_RT_SIGACTION) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/socket.h \
  arch/arm64/include/generated/uapi/asm/socket.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/asm-generic/socket.h \
  arch/arm64/include/generated/uapi/asm/sockios.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/asm-generic/sockios.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/sockios.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/uio.h \
    $(wildcard include/config/ARCH_HAS_COPY_MC) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/uio.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/socket.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/if.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/libc-compat.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/hdlc/ioctl.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/aio_abi.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/syscall_wrapper.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/freelist.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/rethook.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/kprobes.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/kprobes.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/kgdb.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/arch/arm64/include/asm/debug-monitors.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/asm-generic/cacheflush.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/kmsan.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/dma-direction.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/highmem-internal.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/bio.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/mempool.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/node.h \
    $(wildcard include/config/HMEM_REPORTING) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/pagemap.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/hugetlb_inline.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/mempolicy.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/freezer.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/rtmutex.h \
    $(wildcard include/config/DEBUG_RT_MUTEXES) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/linux/i2c.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/sound/core.h \
    $(wildcard include/config/SND_DYNAMIC_MINORS) \
    $(wildcard include/config/SND_MAX_CARDS) \
    $(wildcard include/config/SND_MAJOR) \
    $(wildcard include/config/SND_CTL_FAST_LOOKUP) \
    $(wildcard include/config/SND_DEBUG) \
    $(wildcard include/config/SND_MIXER_OSS) \
    $(wildcard include/config/SND_OSSEMUL) \
    $(wildcard include/config/ISA_DMA_API) \
    $(wildcard include/config/SND_VERBOSE_PRINTK) \
    $(wildcard include/config/SND_DEBUG_VERBOSE) \
    $(wildcard include/config/GAMEPORT) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/sound/pcm.h \
    $(wildcard include/config/SND_PCM_OSS) \
    $(wildcard include/config/SND_VERBOSE_PROCFS) \
    $(wildcard include/config/SND_PCM_XRUN_DEBUG) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/sound/asound.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/sound/asound.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/sound/memalloc.h \
    $(wildcard include/config/GENERIC_ALLOCATOR) \
    $(wildcard include/config/SND_DMA_SGBUF) \
    $(wildcard include/config/HAS_DMA) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/sound/minors.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/pm_qos.h \
    $(wildcard include/config/CPU_IDLE) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/sound/pcm_params.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/sound/soc.h \
    $(wildcard include/config/SND_SOC_COMPRESS) \
    $(wildcard include/config/DMI) \
    $(wildcard include/config/SND_SOC_AC97_BUS) \
    $(wildcard include/config/SND_SOC_TOPOLOGY) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/platform_device.h \
    $(wildcard include/config/HIBERNATE_CALLBACKS) \
    $(wildcard include/config/SUPERH) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/regmap.h \
    $(wildcard include/config/REGMAP) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/iopoll.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/sound/compress_driver.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/sound/compress_offload.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/sound/compress_params.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/sound/control.h \
    $(wildcard include/config/SND_CTL_DEBUG) \
    $(wildcard include/config/SND_CTL_LED) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/linux/nospec.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/sound/ac97_codec.h \
    $(wildcard include/config/SND_AC97_POWER_SAVE) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/sound/ac97/regs.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/sound/info.h \
    $(wildcard include/config/SND_PROC_FS) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/sound/soc-dapm.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/sound/soc-topology.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/sound/asoc.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/sound/soc-dpcm.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/sound/soc-dai.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/sound/soc-component.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/sound/soc-card.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/sound/soc-jack.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/sound/initval.h \
    $(wildcard include/config/PNP) \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/sound/tlv.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/uapi/sound/tlv.h \
  /home/mirafra/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-source/include/sound/wm8960.h \
  /home/mirafra/nxp-audio/wm8960_module/wm8960.h \

/home/mirafra/nxp-audio/wm8960_module/wm8960.o: $(deps_/home/mirafra/nxp-audio/wm8960_module/wm8960.o)

$(deps_/home/mirafra/nxp-audio/wm8960_module/wm8960.o):
