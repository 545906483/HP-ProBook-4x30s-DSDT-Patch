// SSDT for ZBook G2 (Broadwell)

DefinitionBlock ("", "SSDT", 2, "hack", "zbg2b", 0)
{
    #include "SSDT-HACK.dsl"
    #include "include/layout4_HDEF.asl"
    #include "include/layout4_HDAU.asl"
    #include "include/standard_PS2K.asl"
    #include "SSDT-KEY87.dsl"
    #include "SSDT-USB-ZBook-G2.dsl"
    #include "SSDT-XHC.dsl"
    #include "SSDT-BATT-G2.dsl"
    #include "SSDT-RP05_DGFX_RDSS.dsl"
}
//EOF
