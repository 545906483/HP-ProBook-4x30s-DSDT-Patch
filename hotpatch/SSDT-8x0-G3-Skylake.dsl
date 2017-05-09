// SSDT for EliteBook 8x0 G3 (Skylake)

DefinitionBlock ("", "SSDT", 2, "hack", "8x0g3s", 0)
{
    #include "SSDT-PluginType1.asl"
    #include "SSDT-HACK.asl"
    #include "include/layout7_HDEF.asl"
    #include "include/disable_HECI.asl"
    #include "include/key86_PS2K.asl"
    #include "SSDT-KEY102.asl"
    #include "SSDT-USB-8x0-G3.asl"
    #include "SSDT-XHC.asl"
    #include "SSDT-BATT-G3.asl"
    #include "SSDT-RP05_PEGP_RDSS.asl"

    // This USWE code is specific to the Skylake G3
    External(USWE, FieldUnitObj)
    Device(RMD3)
    {
        Name(_HID, "RMD30000")
        Method(_INI)
        {
            // disable wake on XHC (XHC._PRW checks USWE and enables wake if it is 1)
            If (CondRefOf(\USWE)) { \USWE = 0 }
        }
    }
}
//EOF
