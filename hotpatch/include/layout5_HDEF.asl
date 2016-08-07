// inject properties for audio

    External(_SB.PCI0.HDEF, DeviceObj)
    Method(_SB.PCI0.HDEF._DSM, 4)
    {
        If (!Arg2) { Return (Buffer() { 0x03 } ) }
        Return(Package()
        {
            "layout-id", Buffer(4) { 5, 0, 0, 0 },
            "hda-gfx", Buffer() { "onboard-1" },
            "PinConfigurations", Buffer() { },
        })
    }

// CodecCommander configuration

    Name(_SB.PCI0.HDEF.RMCF, Package()
    {
        "CodecCommanderProbeInit", Package()
        {
            "Version", 0x020600,
            "14f1_50f4", Package()
            {
                "PinConfigDefault", Package()
                {
                    Package(){},
                    Package()   // Mirone version
                    {
                        "LayoutID", 5,
                        "PinConfigs", Package()
                        {
                            Package(){},
                            0x16, 0x02211010,
                            0x17, 0x91170020,
                            0x19, 0x02811030,
                            0x1a, 0x90a60040,
                        },
                    },
                    Package()   // alternate layout-id=7, InsanelyDeepak version
                    {
                        "LayoutID", 7,
                        "PinConfigs", Package()
                        {
                            Package(){},
                            0x17, 0x91170110,
                            0x19, 0x048b1030,
                            0x1a, 0x95a00120,
                            0x1d, 0x042b1040,
                        },
                    },
                },
            },
        },
    })

//EOF
