/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200110 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/shuntan/Desktop/macOS-Dell-5411-5511-master/EFI/OC/ACPI/SSDT-DELL-TB3HP.aml, Thu Jul  1 16:57:17 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000837 (2103)
 *     Revision         0x02
 *     Checksum         0x3E
 *     OEM ID           "CASEY"
 *     OEM Table ID     "TBTXTRME"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 2, "CASEY", "TBTXTRME", 0x00000000)
{
    External (_SB_.PCI0.RP01, DeviceObj)
    External (_SB_.PCI0.RP01.PXSX, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    If (_OSI ("Darwin"))
    {
        Scope (\_SB.PCI0.RP01)
        {
            Scope (PXSX)
            {
                Name (_STA, Zero)  // _STA: Status
            }

            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
            {
                Return (Zero)
            }

            Device (UPSB)
            {
                Name (_ADR, Zero)  // _ADR: Address
                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                Field (A1E0, ByteAcc, NoLock, Preserve)
                {
                    AVND,   32, 
                    BMIE,   3, 
                    Offset (0x18), 
                    PRIB,   8, 
                    SECB,   8, 
                    SUBB,   8, 
                    Offset (0x1E), 
                        ,   13, 
                    MABT,   1
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (Package (0x02)
                    {
                        0x69, 
                        0x03
                    })
                }

                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                {
                    Return (SECB) /* \_SB_.PCI0.RP01.UPSB.SECB */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Local0 = Package (0x06)
                        {
                            "AAPL,slot-name", 
                            Buffer (0x0C)
                            {
                                "Thunderbolt"
                            }, 

                            "built-in", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }, 

                            "PCI-Thunderbolt", 
                            One
                        }
                    DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                    Return (Local0)
                }

                Device (DSB0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                    Field (A1E0, ByteAcc, NoLock, Preserve)
                    {
                        AVND,   32, 
                        BMIE,   3, 
                        Offset (0x18), 
                        PRIB,   8, 
                        SECB,   8, 
                        SUBB,   8, 
                        Offset (0x1E), 
                            ,   13, 
                        MABT,   1
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }

                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (Package (0x02)
                        {
                            0x69, 
                            0x03
                        })
                    }

                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                    {
                        Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB0.SECB */
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        Local0 = Package (0x06)
                            {
                                "AAPL,slot-name", 
                                Buffer (0x0C)
                                {
                                    "Thunderbolt"
                                }, 

                                "built-in", 
                                Buffer (One)
                                {
                                     0x00                                             // .
                                }, 

                                "PCIHotplugCapable", 
                                Zero
                            }
                        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                        Return (Local0)
                    }

                    Device (NHI0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Name (_STR, Unicode ("Thunderbolt"))  // _STR: Description String
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                        {
                            Return (Package (0x02)
                            {
                                0x69, 
                                0x03
                            })
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }

                        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                        {
                            Local0 = Package (0x11)
                                {
                                    "AAPL,slot-name", 
                                    Buffer (0x0C)
                                    {
                                        "Thunderbolt"
                                    }, 

                                    "name", 
                                    Buffer (0x23)
                                    {
                                        "Titan Ridge Thunderbolt Controller"
                                    }, 

                                    "model", 
                                    Buffer (0x2C)
                                    {
                                        "Intel JHL7540 Titan Ridge Thunderbolt 3 NHI"
                                    }, 

                                    "device_type", 
                                    Buffer (0x17)
                                    {
                                        "Thunderbolt-Controller"
                                    }, 

                                    "ThunderboltDROM", 
                                    Buffer (0x6B)
                                    {
                                        /* 0000 */  0xA4, 0x00, 0x84, 0x18, 0xA1, 0xD4, 0xB9, 0xD3,  // ........
                                        /* 0008 */  0x00, 0x13, 0x7C, 0x5F, 0xBD, 0x01, 0x5E, 0x00,  // ..|_..^.
                                        /* 0010 */  0x01, 0x00, 0x10, 0x00, 0x01, 0x00, 0x08, 0x81,  // ........
                                        /* 0018 */  0x80, 0x02, 0x80, 0x00, 0x00, 0x00, 0x08, 0x82,  // ........
                                        /* 0020 */  0x90, 0x01, 0x80, 0x00, 0x00, 0x00, 0x08, 0x83,  // ........
                                        /* 0028 */  0x80, 0x04, 0x80, 0x01, 0x00, 0x00, 0x08, 0x84,  // ........
                                        /* 0030 */  0x90, 0x03, 0x80, 0x01, 0x00, 0x00, 0x05, 0x85,  // ........
                                        /* 0038 */  0x09, 0x01, 0x00, 0x05, 0x86, 0x09, 0x01, 0x00,  // ........
                                        /* 0040 */  0x02, 0x87, 0x03, 0x88, 0x20, 0x03, 0x89, 0x80,  // .... ...
                                        /* 0048 */  0x02, 0xCA, 0x02, 0xCB, 0x0B, 0x01, 0x47, 0x49,  // ......GI
                                        /* 0050 */  0x47, 0x41, 0x42, 0x59, 0x54, 0x45, 0x00, 0x14,  // GABYTE..
                                        /* 0058 */  0x02, 0x5A, 0x33, 0x39, 0x30, 0x20, 0x41, 0x4F,  // .Z390 AO
                                        /* 0060 */  0x52, 0x55, 0x53, 0x20, 0x58, 0x74, 0x72, 0x65,  // RUS Xtre
                                        /* 0068 */  0x6D, 0x65, 0x00                                 // me.
                                    }, 

                                    "ThunderboltConfig", 
                                    Buffer (0x20)
                                    {
                                        /* 0000 */  0x00, 0x02, 0x1C, 0x00, 0x02, 0x00, 0x05, 0x03,  // ........
                                        /* 0008 */  0x01, 0x00, 0x04, 0x00, 0x05, 0x03, 0x02, 0x00,  // ........
                                        /* 0010 */  0x03, 0x00, 0x05, 0x03, 0x01, 0x00, 0x00, 0x00,  // ........
                                        /* 0018 */  0x03, 0x03, 0x02, 0x00, 0x01, 0x00, 0x02, 0x00   // ........
                                    }, 

                                    "linkDetails", 
                                    Buffer (0x08)
                                    {
                                         0x08, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00   // ........
                                    }, 

                                    "power-save", 
                                    One, 
                                    Buffer (One)
                                    {
                                         0x00                                             // .
                                    }
                                }
                            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                            Return (Local0)
                        }
                    }
                }

                Device (DSB1)
                {
                    Name (_ADR, 0x00010000)  // _ADR: Address
                    OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                    Field (A1E0, ByteAcc, NoLock, Preserve)
                    {
                        AVND,   32, 
                        BMIE,   3, 
                        Offset (0x18), 
                        PRIB,   8, 
                        SECB,   8, 
                        SUBB,   8, 
                        Offset (0x1E), 
                            ,   13, 
                        MABT,   1
                    }

                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (Package (0x02)
                        {
                            0x69, 
                            0x03
                        })
                    }

                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                    {
                        Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB1.SECB */
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }
                }

                Device (DSB2)
                {
                    Name (_ADR, 0x00020000)  // _ADR: Address
                    OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                    Field (A1E0, ByteAcc, NoLock, Preserve)
                    {
                        AVND,   32, 
                        BMIE,   3, 
                        Offset (0x18), 
                        PRIB,   8, 
                        SECB,   8, 
                        SUBB,   8, 
                        Offset (0x1E), 
                            ,   13, 
                        MABT,   1
                    }

                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (Package (0x02)
                        {
                            0x69, 
                            0x03
                        })
                    }

                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                    {
                        Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB2.SECB */
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }

                    Device (XHC3)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }

                        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                        {
                            Local0 = Package (0x18)
                                {
                                    "AAPL,slot-name", 
                                    Buffer (0x0C)
                                    {
                                        "Thunderbolt"
                                    }, 

                                    "built-in", 
                                    Buffer (One)
                                    {
                                         0x00                                             // .
                                    }, 

                                    "name", 
                                    Buffer (0x1F)
                                    {
                                        "Titan Ridge USB 3.1 Controller"
                                    }, 

                                    "model", 
                                    Buffer (0x22)
                                    {
                                        "Intel JHL7540 Titan Ridge USB 3.1"
                                    }, 

                                    "device_type", 
                                    Buffer (0x1F)
                                    {
                                        "USB eXtensible Host-Controller"
                                    }, 

                                    "AAPL,current-available", 
                                    0x0834, 
                                    "AAPL,current-extra", 
                                    0x0A8C, 
                                    "AAPL,current-in-sleep", 
                                    0x0A8C, 
                                    "AAPL,max-port-current-in-sleep", 
                                    0x0834, 
                                    "AAPL,device-internal", 
                                    Zero, 
                                    "AAPL,root-hub-depth", 
                                    0x1A, 
                                    "AAPL,XHC-clock-id", 
                                    One
                                }
                            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                            Return (Local0)
                        }

                        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                        {
                            Return (Package (0x02)
                            {
                                0x69, 
                                0x03
                            })
                        }

                        Device (RHUB)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                Return (Zero)
                            }

                            Device (SSP1)
                            {
                                Name (_ADR, 0x03)  // _ADR: Address
                                Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                                {
                                    0xFF, 
                                    0x09, 
                                    Zero, 
                                    Zero
                                })
                                Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                                {
                                    ToPLD (
                                        PLD_Revision           = 0x1,
                                        PLD_IgnoreColor        = 0x1,
                                        PLD_Red                = 0x0,
                                        PLD_Green              = 0x0,
                                        PLD_Blue               = 0x0,
                                        PLD_Width              = 0x0,
                                        PLD_Height             = 0x0,
                                        PLD_UserVisible        = 0x1,
                                        PLD_Dock               = 0x0,
                                        PLD_Lid                = 0x0,
                                        PLD_Panel              = "UNKNOWN",
                                        PLD_VerticalPosition   = "UPPER",
                                        PLD_HorizontalPosition = "LEFT",
                                        PLD_Shape              = "UNKNOWN",
                                        PLD_GroupOrientation   = 0x0,
                                        PLD_GroupToken         = 0x0,
                                        PLD_GroupPosition      = 0x0,
                                        PLD_Bay                = 0x0,
                                        PLD_Ejectable          = 0x0,
                                        PLD_EjectRequired      = 0x0,
                                        PLD_CabinetNumber      = 0x0,
                                        PLD_CardCageNumber     = 0x0,
                                        PLD_Reference          = 0x0,
                                        PLD_Rotation           = 0x0,
                                        PLD_Order              = 0x0,
                                        PLD_VerticalOffset     = 0x0,
                                        PLD_HorizontalOffset   = 0x0)

                                })
                                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                                {
                                    If ((Arg2 == Zero))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x03                                             // .
                                        })
                                    }

                                    Return (Package (0x04)
                                    {
                                        "UsbCPortNumber", 
                                        One, 
                                        "UsbPowerSource", 
                                        One
                                    })
                                }
                            }

                            Device (SSP2)
                            {
                                Name (_ADR, 0x04)  // _ADR: Address
                                Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                                {
                                    0xFF, 
                                    0x09, 
                                    Zero, 
                                    Zero
                                })
                                Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                                {
                                    ToPLD (
                                        PLD_Revision           = 0x1,
                                        PLD_IgnoreColor        = 0x1,
                                        PLD_Red                = 0x0,
                                        PLD_Green              = 0x0,
                                        PLD_Blue               = 0x0,
                                        PLD_Width              = 0x0,
                                        PLD_Height             = 0x0,
                                        PLD_UserVisible        = 0x1,
                                        PLD_Dock               = 0x0,
                                        PLD_Lid                = 0x0,
                                        PLD_Panel              = "UNKNOWN",
                                        PLD_VerticalPosition   = "UPPER",
                                        PLD_HorizontalPosition = "LEFT",
                                        PLD_Shape              = "UNKNOWN",
                                        PLD_GroupOrientation   = 0x0,
                                        PLD_GroupToken         = 0x0,
                                        PLD_GroupPosition      = 0x0,
                                        PLD_Bay                = 0x0,
                                        PLD_Ejectable          = 0x0,
                                        PLD_EjectRequired      = 0x0,
                                        PLD_CabinetNumber      = 0x0,
                                        PLD_CardCageNumber     = 0x0,
                                        PLD_Reference          = 0x0,
                                        PLD_Rotation           = 0x0,
                                        PLD_Order              = 0x0,
                                        PLD_VerticalOffset     = 0x0,
                                        PLD_HorizontalOffset   = 0x0)

                                })
                                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                                {
                                    If ((Arg2 == Zero))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x03                                             // .
                                        })
                                    }

                                    Return (Package (0x04)
                                    {
                                        "UsbCPortNumber", 
                                        0x02, 
                                        "UsbPowerSource", 
                                        0x02
                                    })
                                }
                            }
                        }
                    }
                }

                Device (DSB4)
                {
                    Name (_ADR, 0x00040000)  // _ADR: Address
                    OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                    Field (A1E0, ByteAcc, NoLock, Preserve)
                    {
                        AVND,   32, 
                        BMIE,   3, 
                        Offset (0x18), 
                        PRIB,   8, 
                        SECB,   8, 
                        SUBB,   8, 
                        Offset (0x1E), 
                            ,   13, 
                        MABT,   1
                    }

                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (Package (0x02)
                        {
                            0x69, 
                            0x03
                        })
                    }

                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                    {
                        Return (SECB) /* \_SB_.PCI0.RP01.UPSB.DSB4.SECB */
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }
                }
            }
        }
    }
}

