.global _ZN12kernelThread13contextSwitchEPNS_7ContextES1_
.type _ZN12kernelThread13contextSwitchEPNS_7ContextES1_, @function
#.align 4

_ZN12kernelThread13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    sd sp, 1 * 8(a0)

    ld ra, 0 * 8(a1)
    ld sp, 1 * 8(a1)

    ret