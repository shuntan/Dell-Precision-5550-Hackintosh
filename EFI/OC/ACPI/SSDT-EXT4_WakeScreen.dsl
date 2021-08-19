/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200110 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/shuntan/Desktop/macOS-Dell-5411-5511-master/EFI/OC/ACPI/SSDT-EXT4_WakeScreen.aml, Thu Jul  1 16:57:17 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000005D (93)
 *     Revision         0x02
 *     Checksum         0xA5
 *     OEM ID           "OCLT"
 *     OEM Table ID     "EXT4"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200110 (538968336)
 */
DefinitionBlock ("", "SSDT", 2, "OCLT", "EXT4", 0x00000000)
{
    External (_SB_.LID0, DeviceObj)

    Method (EXT4, 1, NotSerialized)
    {
        If ((0x03 == Arg0))
        {
            If (CondRefOf (\_SB.LID0))
            {
                Notify (\_SB.LID0, 0x80) // Status Change
            }
        }
    }
}

