// SSDT for 8x60

DefinitionBlock ("", "SSDT", 2, "hack", "8x60", 0)
{
    #include "SSDT-HACK.asl"
    #include "include/layout18_HDEF.asl"
    #include "include/standard_PS2K.asl"
    #include "SSDT-KEY87.asl"
    #include "SSDT-USB-8x60.asl"
    #include "SSDT-EH01.asl"
    #include "SSDT-EH02.asl"
    #include "SSDT-BATT.asl"
}
//EOF
