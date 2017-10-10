// SSDT for ZBook G2 (Haswell)

DefinitionBlock ("", "SSDT", 2, "hack", "zbg2h", 0)
{
    //#define NO_DISABLE_DGPU
    #include "SSDT-RMCF.asl"
    #include "SSDT-PluginType1.asl"
    #include "SSDT-HACK.asl"
    #include "include/layout17_HDEF.asl"
    #include "include/layout17_HDAU.asl"
    #include "include/standard_PS2K.asl"
    #include "SSDT-KEY87.asl"
    #include "SSDT-USB-ZBook-G2.asl"
    #include "SSDT-XHC.asl"
    #include "SSDT-BATT-G2.asl"
}
//EOF
