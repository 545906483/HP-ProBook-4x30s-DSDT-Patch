// SSDT for EliteBook 1030 G1 (Skylake)

DefinitionBlock("", "SSDT", 2, "hack", "_1030G1s", 0)
{
    #define OVERRIDE_XPEE 1
    #include "SSDT-RMCF.asl"
    #include "SSDT-PEG0_PEGP_RDSS.asl"
    #include "SSDT-HACK.asl"
    #include "include/layout7_HDEF.asl"
    #include "include/disable_HECI.asl"
    //#include "include/standard_PS2K.asl"
    External(_SB.PCI0.LPCB.PS2K, DeviceObj)
    Scope (_SB.PCI0.LPCB.PS2K)
    {
        Name(RMCF, Package()
        {
            #include "include/standard_PS2K_data.asl"
            #include "include/enable_mouse.asl"
        })
    }
    #include "SSDT-KEY87.asl"
    #include "SSDT-USB-1030-G1.asl"
    #include "SSDT-XHC.asl"
    #include "SSDT-BATT-G4.asl" //REVIEW: using SSDT-BATT-G4 instead of SSDT-BATT-G3
    #include "SSDT-USBX.asl"

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
