/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-1.aml, Fri Jul 28 23:52:25 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000001FB (507)
 *     Revision         0x01
 *     Checksum         0xFA
 *     OEM ID           "Intel"
 *     OEM Table ID     "zpodd"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20161210 (538317328)
 */
DefinitionBlock ("", "SSDT", 1, "Intel", "zpodd", 0x00001000)
{
    External (_SB_.PCI0.SAT0, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.SAT0.PRT2, DeviceObj)    // (from opcode)
    External (FDTP, IntObj)    // (from opcode)
    External (GIV0, FieldUnitObj)    // (from opcode)
    External (GL00, FieldUnitObj)    // (from opcode)
    External (GL08, FieldUnitObj)    // (from opcode)
    External (GPE3, FieldUnitObj)    // (from opcode)
    External (GPS3, FieldUnitObj)    // (from opcode)
    External (PFLV, FieldUnitObj)    // (from opcode)
    External (RTD3, FieldUnitObj)    // (from opcode)

    If ((RTD3 == Zero))
    {
        Scope (\_SB.PCI0.SAT0.PRT2)
        {
            Method (XDSM, 4, Serialized)
            {
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                If ((Arg0 == ToUUID ("bdfaef30-aebb-11de-8a39-0800200c9a66")))
                {
                    While (One)
                    {
                        _T_0 = ToInteger (Arg2)
                        If ((_T_0 == Zero))
                        {
                            While (One)
                            {
                                _T_1 = ToInteger (Arg1)
                                If ((_T_1 == One))
                                {
                                    If ((PFLV == FDTP))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                           
                                        })
                                    }

                                    Return (Buffer (One)
                                    {
                                         0x0F                                           
                                    })
                                }
                                Else
                                {
                                    Return (Buffer (One)
                                    {
                                         0x00                                           
                                    })
                                }

                                Break
                            }
                        }
                        ElseIf ((_T_0 == One))
                        {
                            Return (One)
                        }
                        ElseIf ((_T_0 == 0x02))
                        {
                            GPE3 = Zero
                            If (((\GL00 & 0x08) == 0x08))
                            {
                                \GIV0 |= 0x08
                            }
                            Else
                            {
                                \GIV0 &= 0xF7
                            }

                            \GL08 &= 0xEF
                            Sleep (0xC8)
                            GPS3 = One
                            GPE3 = One
                            Return (One)
                        }
                        ElseIf ((_T_0 == 0x03))
                        {
                            GPE3 = Zero
                            GPS3 = One
                            \GL08 |= 0x10
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }

                        Break
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Scope (\_GPE)
        {
            Method (_L13, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                If ((PFLV == FDTP))
                {
                    Return (Zero)
                }

                GPE3 = Zero
                \GL08 |= 0x10
                Notify (\_SB.PCI0.SAT0, 0x82)
                Return (Zero)
            }
        }
    }
}

