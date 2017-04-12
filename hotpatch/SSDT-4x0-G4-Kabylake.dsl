// SSDT for ProBook 4x0 G4 (Kabylake)

DefinitionBlock ("", "SSDT", 2, "hack", "4x0g4k", 0)
{
    #include "SSDT-HACK.dsl"
    #include "include/disable_HECI.asl"
    #include "include/layout20_HDEF.asl"
    #include "include/key86_PS2K.asl"
    #include "SSDT-KEY87.dsl"
    #include "SSDT-USB-4x0-G4.dsl"
    #include "SSDT-XHC.dsl"
    #include "SSDT-BATT-G4.dsl"
    #include "SSDT-RP01_PXSX_RDSS.dsl"

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
