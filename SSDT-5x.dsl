/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-5x.aml, Fri Jul 28 23:52:25 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000047B (1147)
 *     Revision         0x01
 *     Checksum         0xE8
 *     OEM ID           "PmRef"
 *     OEM Table ID     "Cpu0Cst"
 *     OEM Revision     0x00003001 (12289)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20161210 (538317328)
 */
DefinitionBlock ("", "SSDT", 1, "PmRef", "Cpu0Cst", 0x00003001)
{
    External (_PR_.C3LT, FieldUnitObj)    // (from opcode)
    External (_PR_.C3MW, FieldUnitObj)    // (from opcode)
    External (_PR_.C6LT, FieldUnitObj)    // (from opcode)
    External (_PR_.C6MW, FieldUnitObj)    // (from opcode)
    External (_PR_.C7LT, FieldUnitObj)    // (from opcode)
    External (_PR_.C7MW, FieldUnitObj)    // (from opcode)
    External (_PR_.CDLT, FieldUnitObj)    // (from opcode)
    External (_PR_.CDLV, FieldUnitObj)    // (from opcode)
    External (_PR_.CDMW, FieldUnitObj)    // (from opcode)
    External (_PR_.CDPW, FieldUnitObj)    // (from opcode)
    External (_PR_.CFGD, FieldUnitObj)    // (from opcode)
    External (_PR_.CPU0, DeviceObj)    // (from opcode)
    External (C3LT, IntObj)    // Warning: Unknown object
    External (C3MW, IntObj)    // Warning: Unknown object
    External (C6LT, IntObj)    // Warning: Unknown object
    External (C6MW, IntObj)    // Warning: Unknown object
    External (C7LT, IntObj)    // Warning: Unknown object
    External (C7MW, IntObj)    // Warning: Unknown object
    External (CDLT, IntObj)    // Warning: Unknown object
    External (CDLV, IntObj)    // Warning: Unknown object
    External (CDMW, IntObj)    // Warning: Unknown object
    External (CDPW, IntObj)    // Warning: Unknown object
    External (CFGD, UnknownObj)    // Warning: Unknown object
    External (PDC0, IntObj)    // (from opcode)

    Scope (\_PR.CPU0)
    {
        Name (C1TM, Package (0x04)
        {
            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x00,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000000, // Address
                    ,)
            }, 

            One, 
            One, 
            0x03E8
        })
        Name (C3TM, Package (0x04)
        {
            ResourceTemplate ()
            {
                Register (SystemIO, 
                    0x08,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000001814, // Address
                    ,)
            }, 

            0x02, 
            Zero, 
            0x01F4
        })
        Name (C6TM, Package (0x04)
        {
            ResourceTemplate ()
            {
                Register (SystemIO, 
                    0x08,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000001815, // Address
                    ,)
            }, 

            0x02, 
            Zero, 
            0x015E
        })
        Name (C7TM, Package (0x04)
        {
            ResourceTemplate ()
            {
                Register (SystemIO, 
                    0x08,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000001816, // Address
                    ,)
            }, 

            0x02, 
            Zero, 
            0xC8
        })
        Name (CDTM, Package (0x04)
        {
            ResourceTemplate ()
            {
                Register (SystemIO, 
                    0x08,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000001816, // Address
                    ,)
            }, 

            0x03, 
            Zero, 
            Zero
        })
        Name (MWES, ResourceTemplate ()
        {
            Register (FFixedHW, 
                0x01,               // Bit Width
                0x02,               // Bit Offset
                0x0000000000000000, // Address
                0x01,               // Access Size
                )
        })
        Name (AC2V, Zero)
        Name (AC3V, Zero)
        Name (C3ST, Package (0x04)
        {
            0x03, 
            Package (0x00) {}, 
            Package (0x00) {}, 
            Package (0x00) {}
        })
        Name (C2ST, Package (0x03)
        {
            0x02, 
            Package (0x00) {}, 
            Package (0x00) {}
        })
        Name (C1ST, Package (0x02)
        {
            One, 
            Package (0x00) {}
        })
        Name (CSTF, Zero)
        Name (GEAR, Zero)
        Method (_CST, 0, Serialized)  // _CST: C-States
        {
            If (!CSTF)
            {
                C3TM [0x02] = C3LT
                C6TM [0x02] = C6LT
                C7TM [0x02] = C7LT
                CDTM [0x02] = CDLT
                CDTM [0x03] = CDPW
                DerefOf (CDTM [Zero]) [0x07] = CDLV
                If (((CFGD & 0x0800) && (PDC0 & 0x0200)))
                {
                    C1TM [Zero] = MWES
                    C3TM [Zero] = MWES
                    C6TM [Zero] = MWES
                    C7TM [Zero] = MWES
                    CDTM [Zero] = MWES
                    DerefOf (C3TM [Zero]) [0x07] = C3MW
                    DerefOf (C6TM [Zero]) [0x07] = C6MW
                    DerefOf (C7TM [Zero]) [0x07] = C7MW
                    DerefOf (CDTM [Zero]) [0x07] = CDMW
                }
                ElseIf (((CFGD & 0x0800) && (PDC0 & 0x0100)))
                {
                    C1TM [Zero] = MWES
                }

                CSTF = Ones
            }

            AC2V = Zero
            AC3V = Zero
            C3ST [One] = C1TM
            If ((CFGD & 0x20))
            {
                C3ST [0x02] = C7TM
                AC2V = Ones
            }
            ElseIf ((CFGD & 0x10))
            {
                C3ST [0x02] = C6TM
                AC2V = Ones
            }
            ElseIf ((CFGD & 0x08))
            {
                C3ST [0x02] = C3TM
                AC2V = Ones
            }

            If ((CFGD & 0x4000))
            {
                C3ST [0x03] = CDTM
                AC3V = Ones
            }

            If ((GEAR == One))
            {
                If ((CFGD & 0x08))
                {
                    C3ST [0x02] = C3TM
                    AC2V = Ones
                    AC3V = Zero
                }
                Else
                {
                    AC2V = Zero
                    AC3V = Zero
                }
            }

            If ((GEAR == 0x02))
            {
                AC2V = Zero
                AC3V = Zero
            }

            If ((AC2V && AC3V))
            {
                Return (C3ST)
            }
            ElseIf (AC2V)
            {
                C2ST [One] = DerefOf (C3ST [One])
                C2ST [0x02] = DerefOf (C3ST [0x02])
                Return (C2ST)
            }
            ElseIf (AC3V)
            {
                C2ST [One] = DerefOf (C3ST [One])
                C2ST [0x02] = DerefOf (C3ST [0x03])
                DerefOf (C2ST [0x02]) [One] = 0x02
                Return (C2ST)
            }
            Else
            {
                C1ST [One] = DerefOf (C3ST [One])
                Return (C1ST)
            }
        }
    }
}

