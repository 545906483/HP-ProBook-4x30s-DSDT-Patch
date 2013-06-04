DefinitionBlock("ssdt.aml", "SSDT", 2, "HPQOEM", "general", 0x00001000)
{
    Method(_SB.PCI0.RP04.WNIC._DSM, 4, NotSerialized)
    {
        If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
        Return (Package()
        {
            "device-id",
            Buffer() { 0x2A, 0x00, 0x00, 0x00 },
        })
    }
}
