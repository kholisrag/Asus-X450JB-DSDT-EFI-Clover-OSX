/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-12.aml, Fri Jul 28 23:52:25 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000012C3 (4803)
 *     Revision         0x01
 *     Checksum         0xE5
 *     OEM ID           "OptRef"
 *     OEM Table ID     "OptTabl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20161210 (538317328)
 */
DefinitionBlock ("", "SSDT", 1, "OptRef", "OptTabl", 0x00001000)
{
    /*
     * iASL Warning: There were 10 external control methods found during
     * disassembly, but only 8 were resolved (2 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     *
     * To specify the tables needed to resolve external control method
     * references, the -e option can be used to specify the filenames.
     * Example iASL invocations:
     *     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     *     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     *     iasl -e ssdt*.aml -d dsdt.aml
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (_PR_.CPU0, ProcessorObj)    // (from opcode)
    External (_PR_.CPU0._PPC, IntObj)    // (from opcode)
    External (_PR_.CPU0._PSS, PkgObj)    // (from opcode)
    External (_PR_.CPU0._PTC, UnknownObj)    // (from opcode)
    External (_PR_.CPU0._TSS, IntObj)    // (from opcode)
    External (_SB_.PCI0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.IGPU, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.IGPU.XDSM, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.ECNV, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.GTVR, IntObj)    // (from opcode)
    External (_SB_.PCI0.PEG0.DGCX, IntObj)    // (from opcode)
    External (_SB_.PCI0.PEG0.LNKD, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.PEG0.PEGP, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PEG0.PEGP.CLP0, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.PEG0.PEGP.RPP0, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.PEG0.PEGP.SGOF, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.PEG0.PEGP.SGON, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.PEG0.PEGP.SGPI, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj)    // 2 Arguments (from opcode)
    External (_SB_.PCI0.PEG0.PEGP.SPP0, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.PEG0.TDGC, IntObj)    // (from opcode)
    External (_SB_.PCI0.PEG0.TGPC, BuffObj)    // (from opcode)
    External (DID1, FieldUnitObj)    // (from opcode)
    External (DID2, FieldUnitObj)    // (from opcode)
    External (DID3, FieldUnitObj)    // (from opcode)
    External (DID4, FieldUnitObj)    // (from opcode)
    External (DID5, FieldUnitObj)    // (from opcode)
    External (DID6, FieldUnitObj)    // (from opcode)
    External (DID7, FieldUnitObj)    // (from opcode)
    External (DID8, FieldUnitObj)    // (from opcode)
    External (EBAS, FieldUnitObj)    // (from opcode)
    External (NVGA, FieldUnitObj)    // (from opcode)
    External (NVHA, FieldUnitObj)    // (from opcode)
    External (NXD1, FieldUnitObj)    // (from opcode)
    External (NXD2, FieldUnitObj)    // (from opcode)
    External (NXD3, FieldUnitObj)    // (from opcode)
    External (NXD4, FieldUnitObj)    // (from opcode)
    External (NXD5, FieldUnitObj)    // (from opcode)
    External (NXD6, FieldUnitObj)    // (from opcode)
    External (NXD7, FieldUnitObj)    // (from opcode)
    External (NXD8, FieldUnitObj)    // (from opcode)
    External (SGFL, FieldUnitObj)    // (from opcode)
    External (SGOF, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (SGON, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (SSMP, FieldUnitObj)    // (from opcode)
    External (TGPC, UnknownObj)    // Warning: Unknown object

    Scope (\_SB.PCI0)
    {
        Name (OTM, "OTMACPI 2010-Mar-09 12:08:26")
    }

    Scope (\_SB.PCI0.PEG0.PEGP)
    {
        OperationRegion (PCI2, SystemMemory, EBAS, 0x0500)
        Field (PCI2, DWordAcc, Lock, Preserve)
        {
            Offset (0x04), 
            CMDR,   8, 
            VGAR,   2000, 
            Offset (0x48B), 
                ,   1, 
            NHDA,   1
        }

        Name (VGAB, Buffer (0xFA)
        {
             0x00                                           
        })
        Name (GPRF, Zero)
        OperationRegion (NVHM, SystemMemory, NVHA, 0x00020400)
        Field (NVHM, DWordAcc, NoLock, Preserve)
        {
            NVSG,   128, 
            NVSZ,   32, 
            NVVR,   32, 
            NVHO,   32, 
            RVBS,   32, 
            RBF1,   262144, 
            RBF2,   262144, 
            RBF3,   262144, 
            RBF4,   262144, 
            MXML,   32, 
            MXM3,   1600
        }

        Name (OPCE, 0x02)
        Name (DGPS, Zero)
        Name (_PSC, Zero)  // _PSC: Power State Current
        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
        {
            NHDA = Zero
            _PSC = Zero
            If ((DGPS != Zero))
            {
                _ON ()
                DGPS = Zero
            }
        }

        Method (_PS1, 0, NotSerialized)  // _PS1: Power State 1
        {
            _PSC = One
        }

        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
        {
            If ((OPCE == 0x03))
            {
                If ((DGPS == Zero))
                {
                    _OFF ()
                    DGPS = One
                }

                OPCE = 0x02
            }

            _PSC = 0x03
        }

        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            Return (0x0F)
        }

        Method (_ROM, 2, NotSerialized)  // _ROM: Read-Only Memory
        {
            Local0 = Arg0
            Local1 = Arg1
            If ((Local1 > 0x1000))
            {
                Local1 = 0x1000
            }

            If ((Local0 > 0x00020000))
            {
                Return (Buffer (Local1)
                {
                     0x00                                           
                })
            }

            Local3 = (Local1 * 0x08)
            Name (ROM1, Buffer (0x8000)
            {
                 0x00                                           
            })
            Name (ROM2, Buffer (Local1)
            {
                 0x00                                           
            })
            If ((Local0 < 0x8000))
            {
                ROM1 = RBF1
            }
            ElseIf ((Local0 < 0x00010000))
            {
                Local0 -= 0x8000
                ROM1 = RBF2
            }
            ElseIf ((Local0 < 0x00018000))
            {
                Local0 -= 0x00010000
                ROM1 = RBF3
            }
            ElseIf ((Local0 < 0x00020000))
            {
                Local0 -= 0x00018000
                ROM1 = RBF4
            }

            Local2 = (Local0 * 0x08)
            CreateField (ROM1, Local2, Local3, TMPB)
            ROM2 = TMPB
            Return (ROM2)
        }

        Method (XDSM, 4, Serialized)
        {
            CreateByteField (Arg0, 0x03, GUID)
            Return (\_SB.PCI0.PEG0.PEGP.XDSM (Arg0, Arg1, Arg2, Arg3))
        }

        Name (CTXT, Zero)
        Method (_ON, 0, Serialized)  // _ON_: Power On
        {
            SGON ()
            If ((GPRF != One))
            {
                Local0 = CMDR
                CMDR = Zero
                VGAR = VGAB
                CMDR = 0x06
                NHDA = Zero
                CMDR = Local0
            }

            SSMP = 0xB7
        }

        Method (_OFF, 0, Serialized)  // _OFF: Power Off
        {
            If ((CTXT == Zero))
            {
                If ((GPRF != One))
                {
                    VGAB = VGAR
                }

                CTXT = One
            }

            SGOF ()
        }
    }

    Scope (\_SB.PCI0.IGPU)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            TLPK [Zero] = DID1
            TLPK [0x02] = DID2
            TLPK [0x04] = DID3
            TLPK [0x06] = DID4
            TLPK [0x08] = DID5
            TLPK [0x0A] = DID6
            TLPK [0x0C] = DID7
            TLPK [0x0E] = DID2
            TLPK [0x0F] = DID1
            TLPK [0x11] = DID2
            TLPK [0x12] = DID3
            TLPK [0x14] = DID2
            TLPK [0x15] = DID4
            TLPK [0x17] = DID2
            TLPK [0x18] = DID5
            TLPK [0x1A] = DID2
            TLPK [0x1B] = DID6
            TLPK [0x1D] = DID2
            TLPK [0x1E] = DID7
        }

        OperationRegion (NVIG, SystemMemory, NVGA, 0x45)
        Field (NVIG, DWordAcc, NoLock, Preserve)
        {
            NISG,   128, 
            NISZ,   32, 
            NIVR,   32, 
            GPSS,   32, 
            GACD,   16, 
            GATD,   16, 
            LDES,   8, 
            DKST,   8, 
            DACE,   8, 
            DHPE,   8, 
            DHPS,   8, 
            SGNC,   8, 
            GPPO,   8, 
            USPM,   8, 
            GPSP,   8, 
            TLSN,   8, 
            DOSF,   8, 
            ELCL,   16
        }

        Name (TLPK, Package (0x20)
        {
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C
        })
        Method (INDL, 0, Serialized)
        {
            NXD1 = Zero
            NXD2 = Zero
            NXD3 = Zero
            NXD4 = Zero
            NXD5 = Zero
            NXD6 = Zero
            NXD7 = Zero
            NXD8 = Zero
        }

        Method (SND1, 1, Serialized)
        {
            If ((Arg0 == DID1))
            {
                NXD1 = One
            }

            If ((Arg0 == DID2))
            {
                NXD2 = One
            }

            If ((Arg0 == DID3))
            {
                NXD3 = One
            }

            If ((Arg0 == DID4))
            {
                NXD4 = One
            }

            If ((Arg0 == DID5))
            {
                NXD5 = One
            }

            If ((Arg0 == DID6))
            {
                NXD6 = One
            }

            If ((Arg0 == DID7))
            {
                NXD7 = One
            }

            If ((Arg0 == DID8))
            {
                NXD8 = One
            }
        }

        Method (SNXD, 1, Serialized)
        {
            INDL ()
            Local0 = One
            Local1 = Zero
            While ((Local0 < Arg0))
            {
                If ((DerefOf (TLPK [Local1]) == 0x2C))
                {
                    Local0++
                }

                Local1++
            }

            SND1 (DerefOf (TLPK [Local1]))
            Local1++
            If ((DerefOf (TLPK [Local1]) != 0x2C))
            {
                SND1 (DerefOf (TLPK [Local1]))
            }
        }

        Method (CTOI, 1, Serialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            While (One)
            {
                _T_0 = ToInteger (Arg0)
                If ((_T_0 == One))
                {
                    Return (One)
                }
                ElseIf ((_T_0 == 0x02))
                {
                    Return (0x02)
                }
                ElseIf ((_T_0 == 0x04))
                {
                    Return (0x03)
                }
                ElseIf ((_T_0 == 0x08))
                {
                    Return (0x04)
                }
                ElseIf ((_T_0 == 0x10))
                {
                    Return (0x05)
                }
                ElseIf ((_T_0 == 0x20))
                {
                    Return (0x06)
                }
                ElseIf ((_T_0 == 0x40))
                {
                    Return (0x07)
                }
                ElseIf ((_T_0 == 0x03))
                {
                    Return (0x08)
                }
                ElseIf ((_T_0 == 0x06))
                {
                    Return (0x09)
                }
                ElseIf ((_T_0 == 0x0A))
                {
                    Return (0x0A)
                }
                ElseIf ((_T_0 == 0x12))
                {
                    Return (0x0B)
                }
                ElseIf ((_T_0 == 0x22))
                {
                    Return (0x0C)
                }
                ElseIf ((_T_0 == 0x42))
                {
                    Return (0x0D)
                }
                Else
                {
                    Return (One)
                }

                Break
            }
        }
    }

    Scope (\_SB.PCI0)
    {
        Name (GPS, "GPSACPI 2012-Aug-12 14:56:05")
    }

    Scope (\_SB.PCI0.PEG0.PEGP)
    {
        Name (PSAP, Zero)
        Name (ECBF, Buffer (0x14) {})
        CreateDWordField (ECBF, Zero, EDS1)
        CreateDWordField (ECBF, 0x04, EDS2)
        CreateDWordField (ECBF, 0x08, EDS3)
        CreateDWordField (ECBF, 0x0C, EDS4)
        CreateDWordField (ECBF, 0x10, EPDT)
        Name (GPSP, Buffer (0x24) {})
        CreateDWordField (GPSP, Zero, RETN)
        CreateDWordField (GPSP, 0x04, VRV1)
        CreateDWordField (GPSP, 0x08, TGPU)
        CreateDWordField (GPSP, 0x0C, PDTS)
        CreateDWordField (GPSP, 0x10, SFAN)
        CreateDWordField (GPSP, 0x14, SKNT)
        CreateDWordField (GPSP, 0x18, CPUE)
        CreateDWordField (GPSP, 0x1C, TMP1)
        CreateDWordField (GPSP, 0x20, TMP2)
        Name (NLIM, Zero)
        Name (PSCP, Zero)
        Method (GPS, 4, Serialized)
        {
            Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Debug = "------- GPS DSM --------"
            If ((Arg1 != 0x0100))
            {
                Return (0x80000002)
            }

            While (One)
            {
                _T_0 = ToInteger (Arg2)
                If ((_T_0 == Zero))
                {
                    Name (FMSK, Buffer (0x08)
                    {
                         0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF 
                    })
                    Local0 = Buffer (0x08)
                        {
                             0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                        }
                    Divide (Zero, 0x08, Local2, Local1)
                    Local2 = (One << Local2)
                    Local0 [Local1] = (DerefOf (Local0 [Local1]) | Local2)
                    Divide (0x13, 0x08, Local2, Local1)
                    Local2 = (One << Local2)
                    Local0 [Local1] = (DerefOf (Local0 [Local1]) | Local2)
                    Divide (0x20, 0x08, Local2, Local1)
                    Local2 = (One << Local2)
                    Local0 [Local1] = (DerefOf (Local0 [Local1]) | Local2)
                    Divide (0x21, 0x08, Local2, Local1)
                    Local2 = (One << Local2)
                    Local0 [Local1] = (DerefOf (Local0 [Local1]) | Local2)
                    Divide (0x22, 0x08, Local2, Local1)
                    Local2 = (One << Local2)
                    Local0 [Local1] = (DerefOf (Local0 [Local1]) | Local2)
                    Divide (0x23, 0x08, Local2, Local1)
                    Local2 = (One << Local2)
                    Local0 [Local1] = (DerefOf (Local0 [Local1]) | Local2)
                    Divide (0x2A, 0x08, Local2, Local1)
                    Local2 = (One << Local2)
                    Local0 [Local1] = (DerefOf (Local0 [Local1]) | Local2)
                    Local1 = SizeOf (Local0)
                    While ((Local1 != Zero))
                    {
                        Local1--
                        Local2 = DerefOf (FMSK [Local1])
                        Local0 [Local1] = (DerefOf (Local0 [Local1]) & Local2)
                    }

                    Return (Local0)
                }
                ElseIf ((_T_0 == 0x13))
                {
                    Debug = "GPS fun 19"
                    Return (Arg3)
                }
                ElseIf ((_T_0 == 0x20))
                {
                    Debug = "GPS fun 20"
                    Name (RET1, Zero)
                    CreateBitField (Arg3, 0x18, NRIT)
                    CreateBitField (Arg3, 0x19, NRIS)
                    If (NRIS)
                    {
                        If (NRIT)
                        {
                            RET1 |= 0x01000000
                        }
                        Else
                        {
                            RET1 &= 0xFEFFFFFF
                        }
                    }

                    RET1 |= 0x40000000
                    If (NLIM)
                    {
                        RET1 |= One
                    }

                    Return (RET1)
                }
                ElseIf ((_T_0 == 0x21))
                {
                    Return (\_PR.CPU0._PSS)
                }
                ElseIf ((_T_0 == 0x22))
                {
                    CreateByteField (Arg3, Zero, PCAP)
                    \_PR.CPU0._PPC = PCAP
                    Notify (\_PR.CPU0, 0x80)
                    PSAP = PCAP
                    Return (PCAP)
                }
                ElseIf ((_T_0 == 0x23))
                {
                    Return (PSAP)
                }
                ElseIf ((_T_0 == 0x25))
                {
                    Debug = "GPS fun 25"
                    Return (\_PR.CPU0._TSS)
                }
                ElseIf ((_T_0 == 0x26))
                {
                    Debug = "GPS fun 26"
                    CreateDWordField (Arg3, Zero, TCAP)
                    \_PR.CPU0._PTC = TCAP
                    Notify (\_PR.CPU0, 0x80)
                    Return (TCAP)
                }
                ElseIf ((_T_0 == 0x2A))
                {
                    Debug = "GPS fun 2a"
                    CreateByteField (Arg3, Zero, PSH0)
                    CreateByteField (Arg3, One, PSH1)
                    CreateBitField (Arg3, 0x08, GPUT)
                    CreateBitField (Arg3, 0x09, CPUT)
                    CreateBitField (Arg3, 0x0A, FANS)
                    CreateBitField (Arg3, 0x0B, SKIN)
                    CreateBitField (Arg3, 0x0C, ENGR)
                    CreateBitField (Arg3, 0x0D, SEN1)
                    CreateBitField (Arg3, 0x0E, SEN2)
                    While (One)
                    {
                        _T_1 = PSH0
                        If ((_T_1 == Zero))
                        {
                            If (CPUT)
                            {
                                RETN = 0x0200
                                RETN |= PSH0
                                PDTS = \_SB.PCI0.LPCB.H_EC.GTVR
                            }

                            Return (GPSP)
                        }
                        ElseIf ((_T_1 == One))
                        {
                            RETN = 0x0300
                            RETN |= PSH0
                            PDTS = 0x03E8
                            Return (GPSP)
                        }
                        ElseIf ((_T_1 == 0x02))
                        {
                            RETN = 0x0102
                            VRV1 = Zero
                            TGPU = Zero
                            PDTS = Zero
                            SFAN = Zero
                            CPUE = Zero
                            SKNT = Zero
                            TMP1 = Zero
                            TMP2 = Zero
                            Return (GPSP)
                        }

                        Break
                    }
                }

                Break
            }

            Return (0x80000002)
        }
    }

    Scope (\_SB.PCI0.PEG0.PEGP)
    {
        Method (GC6I, 0, Serialized)
        {
            Debug = "<<< GC6I >>>"
            \_SB.PCI0.LPCB.EC0.ECNV (Zero)
            Sleep (0x0A)
            \_SB.PCI0.PEG0.PEGP.SPP0 ()
            \_SB.PCI0.PEG0.LNKD = One
        }

        Method (GC6O, 0, Serialized)
        {
            Debug = "<<< GC6O >>>"
            While ((\_SB.PCI0.PEG0.PEGP.SGPI (0x35) != Zero))
            {
                Sleep (One)
            }

            \_SB.PCI0.PEG0.PEGP.RPP0 ()
            \_SB.PCI0.PEG0.PEGP.CLP0 ()
            \_SB.PCI0.PEG0.LNKD = Zero
            \_SB.PCI0.PEG0.PEGP.SGPO (0x34, One)
            While ((\_SB.PCI0.PEG0.PEGP.SGPI (0x35) != One))
            {
                Sleep (One)
            }

            \_SB.PCI0.PEG0.PEGP.SGPO (0x34, Zero)
            \_SB.PCI0.LPCB.EC0.ECNV (One)
            Sleep (0x0A)
        }

        Method (GETS, 0, Serialized)
        {
            If ((\_SB.PCI0.PEG0.PEGP.SGPI (0x35) == One))
            {
                Debug = "<<< GETS() return 0x1 >>>"
                Return (One)
            }
            Else
            {
                Debug = "<<< GETS() return 0x3 >>>"
                Return (0x03)
            }
        }

        Method (NGC6, 4, Serialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Debug = "------- GC6 DSM --------"
            If ((Arg1 < 0x0100))
            {
                Return (0x80000001)
            }

            While (One)
            {
                _T_0 = ToInteger (Arg2)
                If ((_T_0 == Zero))
                {
                    Return (Buffer (0x04)
                    {
                         0x1B, 0x00, 0x00, 0x00                         
                    })
                }
                ElseIf ((_T_0 == One))
                {
                    Name (JTB1, Buffer (0x04)
                    {
                         0x00                                           
                    })
                    CreateField (JTB1, Zero, One, JTEN)
                    CreateField (JTB1, One, 0x02, SREN)
                    CreateField (JTB1, 0x03, 0x03, PLPR)
                    CreateField (JTB1, 0x06, 0x02, FBPR)
                    CreateField (JTB1, 0x08, 0x02, GUPR)
                    CreateField (JTB1, 0x0A, One, GC6R)
                    CreateField (JTB1, 0x0B, One, PTRH)
                    CreateField (JTB1, 0x0D, One, MHYB)
                    CreateField (JTB1, 0x0E, One, RPCL)
                    CreateField (JTB1, 0x0F, 0x02, GC6M)
                    CreateField (JTB1, 0x14, 0x0C, JTRV)
                    JTEN = One
                    GC6R = One
                    PTRH = One
                    GC6M = One
                    SREN = One
                    If (\_OSI ("Windows 2013"))
                    {
                        MHYB = One
                    }

                    JTRV = 0x0103
                    Return (JTB1)
                }
                ElseIf ((_T_0 == 0x02))
                {
                    Debug = "GPS fun 19"
                    Return (Arg3)
                }
                ElseIf ((_T_0 == 0x03))
                {
                    CreateField (Arg3, Zero, 0x03, GUPC)
                    CreateField (Arg3, 0x04, One, PLPC)
                    CreateField (Arg3, 0x0E, 0x02, DFGC)
                    CreateField (Arg3, 0x10, 0x03, GPCX)
                    TGPC = Arg3
                    If (((ToInteger (GUPC) != Zero) || (ToInteger (DFGC) != Zero)))
                    {
                        \_SB.PCI0.PEG0.TDGC = ToInteger (DFGC)
                        \_SB.PCI0.PEG0.DGCX = ToInteger (GPCX)
                    }

                    Name (JTB3, Buffer (0x04)
                    {
                         0x00                                           
                    })
                    CreateField (JTB3, Zero, 0x03, GUPS)
                    CreateField (JTB3, 0x03, One, GPGS)
                    CreateField (JTB3, 0x07, One, PLST)
                    If ((ToInteger (DFGC) != Zero))
                    {
                        GPGS = One
                        GUPS = One
                        Return (JTB3)
                    }

                    If ((ToInteger (GUPC) == One))
                    {
                        GC6I ()
                        PLST = One
                    }
                    ElseIf ((ToInteger (GUPC) == 0x02))
                    {
                        GC6I ()
                        If ((ToInteger (PLPC) == Zero))
                        {
                            PLST = Zero
                        }
                    }
                    ElseIf ((ToInteger (GUPC) == 0x03))
                    {
                        GC6O ()
                        If ((ToInteger (PLPC) != Zero))
                        {
                            PLST = Zero
                        }
                    }
                    ElseIf ((ToInteger (GUPC) == 0x04))
                    {
                        GC6O ()
                        If ((ToInteger (PLPC) != Zero))
                        {
                            PLST = Zero
                        }
                    }
                    ElseIf ((ToInteger (GUPC) == Zero))
                    {
                        GUPS = GETS ()
                        If ((ToInteger (GUPS) == One))
                        {
                            GPGS = One
                        }
                        Else
                        {
                            GPGS = Zero
                        }
                    }
                    ElseIf ((ToInteger (GUPC) == 0x06)) {}
                    Return (JTB3)
                }
                ElseIf ((_T_0 == 0x04))
                {
                    Return (0x80000002)
                }

                Break
            }

            Return (0x80000002)
        }
    }

    Scope (\_SB.PCI0)
    {
    }
}

