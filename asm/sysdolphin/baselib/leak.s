.include "macros.inc"

.section .text  # 0x80005940 - 0x803B7240

.global func_80387DF8
func_80387DF8:
/* 80387DF8 003849D8  7C 08 02 A6 */	mflr r0
/* 80387DFC 003849DC  3C 80 80 3C */	lis r4, lbl_803B9840@ha
/* 80387E00 003849E0  90 01 00 04 */	stw r0, 4(r1)
/* 80387E04 003849E4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80387E08 003849E8  BE A1 00 14 */	stmw r21, 0x14(r1)
/* 80387E0C 003849EC  3B 04 98 40 */	addi r24, r4, lbl_803B9840@l
/* 80387E10 003849F0  3C 80 80 40 */	lis r4, lbl_80407B58@ha
/* 80387E14 003849F4  3B 23 00 00 */	addi r25, r3, 0
/* 80387E18 003849F8  3B 98 00 00 */	addi r28, r24, 0
/* 80387E1C 003849FC  3B C4 7B 58 */	addi r30, r4, lbl_80407B58@l
/* 80387E20 00384A00  4B FB FD D1 */	bl OSGetConsoleSimulatedMemSize
/* 80387E24 00384A04  38 18 00 20 */	addi r0, r24, 0x20
/* 80387E28 00384A08  3E A3 80 00 */	addis r21, r3, 0x8000
/* 80387E2C 00384A0C  54 1B 01 34 */	rlwinm r27, r0, 0, 4, 0x1a
/* 80387E30 00384A10  4B FB FD B5 */	bl OSGetPhysicalMemSize
/* 80387E34 00384A14  80 1E 00 00 */	lwz r0, 0(r30)
/* 80387E38 00384A18  3B E3 00 00 */	addi r31, r3, 0
/* 80387E3C 00384A1C  3B 40 00 00 */	li r26, 0
/* 80387E40 00384A20  28 00 00 00 */	cmplwi r0, 0
/* 80387E44 00384A24  40 82 00 38 */	bne lbl_80387E7C
/* 80387E48 00384A28  3B 00 00 00 */	li r24, 0
/* 80387E4C 00384A2C  48 00 00 14 */	b lbl_80387E60
lbl_80387E50:
/* 80387E50 00384A30  38 6D A9 60 */	addi r3, r13, lbl_804D6000@sda21
/* 80387E54 00384A34  4C C6 31 82 */	crclr 6
/* 80387E58 00384A38  4B FB D8 51 */	bl OSReport
/* 80387E5C 00384A3C  3B 18 00 01 */	addi r24, r24, 1
lbl_80387E60:
/* 80387E60 00384A40  7C 18 C8 40 */	cmplw r24, r25
/* 80387E64 00384A44  41 80 FF EC */	blt lbl_80387E50
/* 80387E68 00384A48  38 7E 01 08 */	addi r3, r30, 0x108
/* 80387E6C 00384A4C  4C C6 31 82 */	crclr 6
/* 80387E70 00384A50  4B FB D8 39 */	bl OSReport
/* 80387E74 00384A54  38 60 00 00 */	li r3, 0
/* 80387E78 00384A58  48 00 02 D0 */	b lbl_80388148
lbl_80387E7C:
/* 80387E7C 00384A5C  3B 00 00 00 */	li r24, 0
/* 80387E80 00384A60  48 00 00 14 */	b lbl_80387E94
lbl_80387E84:
/* 80387E84 00384A64  38 6D A9 60 */	addi r3, r13, lbl_804D6000@sda21
/* 80387E88 00384A68  4C C6 31 82 */	crclr 6
/* 80387E8C 00384A6C  4B FB D8 1D */	bl OSReport
/* 80387E90 00384A70  3B 18 00 01 */	addi r24, r24, 1
lbl_80387E94:
/* 80387E94 00384A74  7C 18 C8 40 */	cmplw r24, r25
/* 80387E98 00384A78  41 80 FF EC */	blt lbl_80387E84
/* 80387E9C 00384A7C  38 7E 01 2C */	addi r3, r30, 0x12c
/* 80387EA0 00384A80  4C C6 31 82 */	crclr 6
/* 80387EA4 00384A84  4B FB D8 05 */	bl OSReport
/* 80387EA8 00384A88  3B 19 00 02 */	addi r24, r25, 2
/* 80387EAC 00384A8C  3B A0 00 00 */	li r29, 0
/* 80387EB0 00384A90  48 00 00 14 */	b lbl_80387EC4
lbl_80387EB4:
/* 80387EB4 00384A94  38 6D A9 60 */	addi r3, r13, lbl_804D6000@sda21
/* 80387EB8 00384A98  4C C6 31 82 */	crclr 6
/* 80387EBC 00384A9C  4B FB D7 ED */	bl OSReport
/* 80387EC0 00384AA0  3B BD 00 01 */	addi r29, r29, 1
lbl_80387EC4:
/* 80387EC4 00384AA4  7C 1D C0 40 */	cmplw r29, r24
/* 80387EC8 00384AA8  41 80 FF EC */	blt lbl_80387EB4
/* 80387ECC 00384AAC  3B BE 00 0C */	addi r29, r30, 0xc
/* 80387ED0 00384AB0  80 9E 00 08 */	lwz r4, 8(r30)
/* 80387ED4 00384AB4  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 80387ED8 00384AB8  38 7E 01 4C */	addi r3, r30, 0x14c
/* 80387EDC 00384ABC  80 DE 00 18 */	lwz r6, 0x18(r30)
/* 80387EE0 00384AC0  4C C6 31 82 */	crclr 6
/* 80387EE4 00384AC4  4B FB D7 C5 */	bl OSReport
/* 80387EE8 00384AC8  38 15 00 03 */	addi r0, r21, 3
/* 80387EEC 00384ACC  7C 1C 00 50 */	subf r0, r28, r0
/* 80387EF0 00384AD0  54 00 F0 BE */	srwi r0, r0, 2
/* 80387EF4 00384AD4  7C 1C A8 40 */	cmplw r28, r21
/* 80387EF8 00384AD8  7C 09 03 A6 */	mtctr r0
/* 80387EFC 00384ADC  40 80 00 98 */	bge lbl_80387F94
lbl_80387F00:
/* 80387F00 00384AE0  80 7C 00 00 */	lwz r3, 0(r28)
/* 80387F04 00384AE4  54 60 07 BF */	clrlwi. r0, r3, 0x1e
/* 80387F08 00384AE8  40 82 00 84 */	bne lbl_80387F8C
/* 80387F0C 00384AEC  54 60 27 3E */	srwi r0, r3, 0x1c
/* 80387F10 00384AF0  28 00 00 08 */	cmplwi r0, 8
/* 80387F14 00384AF4  41 82 00 0C */	beq lbl_80387F20
/* 80387F18 00384AF8  28 00 00 0C */	cmplwi r0, 0xc
/* 80387F1C 00384AFC  40 82 00 70 */	bne lbl_80387F8C
lbl_80387F20:
/* 80387F20 00384B00  54 63 01 3E */	clrlwi r3, r3, 4
/* 80387F24 00384B04  7C 03 D8 40 */	cmplw r3, r27
/* 80387F28 00384B08  41 80 00 64 */	blt lbl_80387F8C
/* 80387F2C 00384B0C  7C 1F 18 40 */	cmplw r31, r3
/* 80387F30 00384B10  40 81 00 5C */	ble lbl_80387F8C
/* 80387F34 00384B14  64 63 80 00 */	oris r3, r3, 0x8000
/* 80387F38 00384B18  38 83 FF E0 */	addi r4, r3, -32
/* 80387F3C 00384B1C  80 63 FF E0 */	lwz r3, -0x20(r3)
/* 80387F40 00384B20  3C 03 FE DD */	addis r0, r3, 0xfedd
/* 80387F44 00384B24  28 00 45 67 */	cmplwi r0, 0x4567
/* 80387F48 00384B28  40 82 00 44 */	bne lbl_80387F8C
/* 80387F4C 00384B2C  80 A4 00 04 */	lwz r5, 4(r4)
/* 80387F50 00384B30  3C 05 00 01 */	addis r0, r5, 1
/* 80387F54 00384B34  28 00 FF FF */	cmplwi r0, 0xffff
/* 80387F58 00384B38  41 82 00 34 */	beq lbl_80387F8C
/* 80387F5C 00384B3C  80 1D 00 00 */	lwz r0, 0(r29)
/* 80387F60 00384B40  7C 05 00 40 */	cmplw r5, r0
/* 80387F64 00384B44  40 80 00 28 */	bge lbl_80387F8C
/* 80387F68 00384B48  80 7E 00 00 */	lwz r3, 0(r30)
/* 80387F6C 00384B4C  54 A0 10 3A */	slwi r0, r5, 2
/* 80387F70 00384B50  7C A3 02 14 */	add r5, r3, r0
/* 80387F74 00384B54  80 65 00 00 */	lwz r3, 0(r5)
/* 80387F78 00384B58  54 60 00 3C */	rlwinm r0, r3, 0, 0, 0x1e
/* 80387F7C 00384B5C  7C 04 00 40 */	cmplw r4, r0
/* 80387F80 00384B60  40 82 00 0C */	bne lbl_80387F8C
/* 80387F84 00384B64  60 60 00 01 */	ori r0, r3, 1
/* 80387F88 00384B68  90 05 00 00 */	stw r0, 0(r5)
lbl_80387F8C:
/* 80387F8C 00384B6C  3B 9C 00 04 */	addi r28, r28, 4
/* 80387F90 00384B70  42 00 FF 70 */	bdnz lbl_80387F00
lbl_80387F94:
/* 80387F94 00384B74  80 1D 00 00 */	lwz r0, 0(r29)
/* 80387F98 00384B78  3B 19 00 02 */	addi r24, r25, 2
/* 80387F9C 00384B7C  83 FE 00 00 */	lwz r31, 0(r30)
/* 80387FA0 00384B80  3B 60 00 00 */	li r27, 0
/* 80387FA4 00384B84  54 00 10 3A */	slwi r0, r0, 2
/* 80387FA8 00384B88  7F 9F 02 14 */	add r28, r31, r0
/* 80387FAC 00384B8C  3A C0 00 00 */	li r22, 0
/* 80387FB0 00384B90  48 00 00 EC */	b lbl_8038809C
lbl_80387FB4:
/* 80387FB4 00384B94  80 BE 00 00 */	lwz r5, 0(r30)
/* 80387FB8 00384B98  7C 65 B2 14 */	add r3, r5, r22
/* 80387FBC 00384B9C  82 A3 00 00 */	lwz r21, 0(r3)
/* 80387FC0 00384BA0  56 A0 07 FF */	clrlwi. r0, r21, 0x1f
/* 80387FC4 00384BA4  41 82 00 10 */	beq lbl_80387FD4
/* 80387FC8 00384BA8  56 A0 00 3C */	rlwinm r0, r21, 0, 0, 0x1e
/* 80387FCC 00384BAC  90 03 00 00 */	stw r0, 0(r3)
/* 80387FD0 00384BB0  48 00 00 C4 */	b lbl_80388094
lbl_80387FD4:
/* 80387FD4 00384BB4  7C 1F A8 40 */	cmplw r31, r21
/* 80387FD8 00384BB8  41 81 00 0C */	bgt lbl_80387FE4
/* 80387FDC 00384BBC  7C 15 E0 40 */	cmplw r21, r28
/* 80387FE0 00384BC0  41 80 00 B4 */	blt lbl_80388094
lbl_80387FE4:
/* 80387FE4 00384BC4  28 15 00 00 */	cmplwi r21, 0
/* 80387FE8 00384BC8  41 82 00 AC */	beq lbl_80388094
/* 80387FEC 00384BCC  80 75 00 00 */	lwz r3, 0(r21)
/* 80387FF0 00384BD0  3C 03 FE DD */	addis r0, r3, 0xfedd
/* 80387FF4 00384BD4  28 00 45 67 */	cmplwi r0, 0x4567
/* 80387FF8 00384BD8  40 82 00 68 */	bne lbl_80388060
/* 80387FFC 00384BDC  80 75 00 04 */	lwz r3, 4(r21)
/* 80388000 00384BE0  3C 03 00 01 */	addis r0, r3, 1
/* 80388004 00384BE4  28 00 FF FF */	cmplwi r0, 0xffff
/* 80388008 00384BE8  41 82 00 58 */	beq lbl_80388060
/* 8038800C 00384BEC  7C 03 20 40 */	cmplw r3, r4
/* 80388010 00384BF0  40 80 00 50 */	bge lbl_80388060
/* 80388014 00384BF4  54 60 10 3A */	slwi r0, r3, 2
/* 80388018 00384BF8  7C 05 00 2E */	lwzx r0, r5, r0
/* 8038801C 00384BFC  7C 15 00 40 */	cmplw r21, r0
/* 80388020 00384C00  40 82 00 40 */	bne lbl_80388060
/* 80388024 00384C04  3A E0 00 00 */	li r23, 0
/* 80388028 00384C08  48 00 00 14 */	b lbl_8038803C
lbl_8038802C:
/* 8038802C 00384C0C  38 6D A9 60 */	addi r3, r13, lbl_804D6000@sda21
/* 80388030 00384C10  4C C6 31 82 */	crclr 6
/* 80388034 00384C14  4B FB D6 75 */	bl OSReport
/* 80388038 00384C18  3A F7 00 01 */	addi r23, r23, 1
lbl_8038803C:
/* 8038803C 00384C1C  7C 17 C0 40 */	cmplw r23, r24
/* 80388040 00384C20  41 80 FF EC */	blt lbl_8038802C
/* 80388044 00384C24  80 B5 00 08 */	lwz r5, 8(r21)
/* 80388048 00384C28  38 7E 01 7C */	addi r3, r30, 0x17c
/* 8038804C 00384C2C  80 D5 00 0C */	lwz r6, 0xc(r21)
/* 80388050 00384C30  38 95 00 20 */	addi r4, r21, 0x20
/* 80388054 00384C34  4C C6 31 82 */	crclr 6
/* 80388058 00384C38  4B FB D6 51 */	bl OSReport
/* 8038805C 00384C3C  48 00 00 34 */	b lbl_80388090
lbl_80388060:
/* 80388060 00384C40  3A E0 00 00 */	li r23, 0
/* 80388064 00384C44  48 00 00 14 */	b lbl_80388078
lbl_80388068:
/* 80388068 00384C48  38 6D A9 60 */	addi r3, r13, lbl_804D6000@sda21
/* 8038806C 00384C4C  4C C6 31 82 */	crclr 6
/* 80388070 00384C50  4B FB D6 39 */	bl OSReport
/* 80388074 00384C54  3A F7 00 01 */	addi r23, r23, 1
lbl_80388078:
/* 80388078 00384C58  7C 17 C0 40 */	cmplw r23, r24
/* 8038807C 00384C5C  41 80 FF EC */	blt lbl_80388068
/* 80388080 00384C60  38 7E 01 A8 */	addi r3, r30, 0x1a8
/* 80388084 00384C64  4C C6 31 82 */	crclr 6
/* 80388088 00384C68  38 95 00 20 */	addi r4, r21, 0x20
/* 8038808C 00384C6C  4B FB D6 1D */	bl OSReport
lbl_80388090:
/* 80388090 00384C70  3B 5A 00 01 */	addi r26, r26, 1
lbl_80388094:
/* 80388094 00384C74  3A D6 00 04 */	addi r22, r22, 4
/* 80388098 00384C78  3B 7B 00 01 */	addi r27, r27, 1
lbl_8038809C:
/* 8038809C 00384C7C  80 9D 00 00 */	lwz r4, 0(r29)
/* 803880A0 00384C80  7C 1B 20 40 */	cmplw r27, r4
/* 803880A4 00384C84  41 80 FF 10 */	blt lbl_80387FB4
/* 803880A8 00384C88  2C 1A 00 00 */	cmpwi r26, 0
/* 803880AC 00384C8C  40 81 00 3C */	ble lbl_803880E8
/* 803880B0 00384C90  3B 79 00 02 */	addi r27, r25, 2
/* 803880B4 00384C94  3A E0 00 00 */	li r23, 0
/* 803880B8 00384C98  48 00 00 14 */	b lbl_803880CC
lbl_803880BC:
/* 803880BC 00384C9C  38 6D A9 60 */	addi r3, r13, lbl_804D6000@sda21
/* 803880C0 00384CA0  4C C6 31 82 */	crclr 6
/* 803880C4 00384CA4  4B FB D5 E5 */	bl OSReport
/* 803880C8 00384CA8  3A F7 00 01 */	addi r23, r23, 1
lbl_803880CC:
/* 803880CC 00384CAC  7C 17 D8 40 */	cmplw r23, r27
/* 803880D0 00384CB0  41 80 FF EC */	blt lbl_803880BC
/* 803880D4 00384CB4  38 9A 00 00 */	addi r4, r26, 0
/* 803880D8 00384CB8  4C C6 31 82 */	crclr 6
/* 803880DC 00384CBC  38 7E 01 D0 */	addi r3, r30, 0x1d0
/* 803880E0 00384CC0  4B FB D5 C9 */	bl OSReport
/* 803880E4 00384CC4  48 00 00 34 */	b lbl_80388118
lbl_803880E8:
/* 803880E8 00384CC8  3B 79 00 02 */	addi r27, r25, 2
/* 803880EC 00384CCC  3A E0 00 00 */	li r23, 0
/* 803880F0 00384CD0  48 00 00 14 */	b lbl_80388104
lbl_803880F4:
/* 803880F4 00384CD4  38 6D A9 60 */	addi r3, r13, lbl_804D6000@sda21
/* 803880F8 00384CD8  4C C6 31 82 */	crclr 6
/* 803880FC 00384CDC  4B FB D5 AD */	bl OSReport
/* 80388100 00384CE0  3A F7 00 01 */	addi r23, r23, 1
lbl_80388104:
/* 80388104 00384CE4  7C 17 D8 40 */	cmplw r23, r27
/* 80388108 00384CE8  41 80 FF EC */	blt lbl_803880F4
/* 8038810C 00384CEC  38 7E 01 F0 */	addi r3, r30, 0x1f0
/* 80388110 00384CF0  4C C6 31 82 */	crclr 6
/* 80388114 00384CF4  4B FB D5 95 */	bl OSReport
lbl_80388118:
/* 80388118 00384CF8  3A E0 00 00 */	li r23, 0
/* 8038811C 00384CFC  48 00 00 14 */	b lbl_80388130
lbl_80388120:
/* 80388120 00384D00  38 6D A9 60 */	addi r3, r13, lbl_804D6000@sda21
/* 80388124 00384D04  4C C6 31 82 */	crclr 6
/* 80388128 00384D08  4B FB D5 81 */	bl OSReport
/* 8038812C 00384D0C  3A F7 00 01 */	addi r23, r23, 1
lbl_80388130:
/* 80388130 00384D10  7C 17 C8 40 */	cmplw r23, r25
/* 80388134 00384D14  41 80 FF EC */	blt lbl_80388120
/* 80388138 00384D18  38 6D A9 64 */	addi r3, r13, lbl_804D6004@sda21
/* 8038813C 00384D1C  4C C6 31 82 */	crclr 6
/* 80388140 00384D20  4B FB D5 69 */	bl OSReport
/* 80388144 00384D24  7F 43 D3 78 */	mr r3, r26
lbl_80388148:
/* 80388148 00384D28  BA A1 00 14 */	lmw r21, 0x14(r1)
/* 8038814C 00384D2C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80388150 00384D30  38 21 00 40 */	addi r1, r1, 0x40
/* 80388154 00384D34  7C 08 03 A6 */	mtlr r0
/* 80388158 00384D38  4E 80 00 20 */	blr 


.section .data
    .balign 8
.global lbl_80407B58
lbl_80407B58:
    .4byte NULL
    .4byte NULL
    .4byte NULL
    .4byte NULL
    .4byte NULL
    .4byte NULL
    .4byte NULL
    .4byte 0xFFFFFFFF
    .4byte 0x6E6F7720
    .4byte 0x72656769
    .4byte 0x73746572
    .4byte 0x696E6720
    .4byte 0x73757370
    .4byte 0x65637469
    .4byte 0x6E67206D
    .4byte 0x656D6F72
    .4byte 0x79202E2E
    .4byte 0x2E0A0000
    .4byte 0x5741524E
    .4byte 0x494E4721
    .4byte 0x210A0000
    .4byte 0x546F6F20
    .4byte 0x6D616E79
    .4byte 0x206D656D
    .4byte 0x6F727920
    .4byte 0x626C6F63
    .4byte 0x6B732061
    .4byte 0x72652072
    .4byte 0x65676973
    .4byte 0x74657264
    .4byte 0x20746F20
    .4byte 0x6D656D6F
    .4byte 0x72792063
    .4byte 0x6865636B
    .4byte 0x65722E0A
    .4byte NULL
    .4byte 0x506C6561
    .4byte 0x73652069
    .4byte 0x6E637265
    .4byte 0x61736520
    .4byte 0x61206361
    .4byte 0x70616369
    .4byte 0x7479206F
    .4byte 0x66206368
    .4byte 0x65636B65
    .4byte 0x722E0A00
    .4byte 0x4E6F6E2D
    .4byte 0x72656769
    .4byte 0x73746572
    .4byte 0x6564206D
    .4byte 0x656D6F72
    .4byte 0x7920626C
    .4byte 0x6F636B20
    .4byte 0x69732073
    .4byte 0x70656369
    .4byte 0x66696564
    .4byte 0x20282570
    .4byte 0x292E0A00
    .4byte 0x6C65616B
    .4byte 0x20756E72
    .4byte 0x65676973
    .4byte 0x74657220
    .4byte 0x72616E67
    .4byte 0x65202570
    .4byte 0x2025700A
    .4byte NULL
    .4byte 0x4C65616B
    .4byte 0x20636865
    .4byte 0x636B6572
    .4byte 0x20697320
    .4byte 0x6E6F7420
    .4byte 0x696E6974
    .4byte 0x69616C69
    .4byte 0x7A65642E
    .4byte 0x0A000000
    .4byte 0x42656769
    .4byte 0x6E206D65
    .4byte 0x6D6F7279
    .4byte 0x206C6561
    .4byte 0x6B206368
    .4byte 0x65636B20
    .4byte 0x2E2E2E0A
    .4byte NULL
    .4byte 0x6E756D62
    .4byte 0x6572206F
    .4byte 0x66207265
    .4byte 0x67697374
    .4byte 0x65726564
    .4byte 0x20707472
    .4byte 0x3A202564
    .4byte 0x202F2025
    .4byte 0x64202870
    .4byte 0x65616B20
    .4byte 0x2564290A
    .4byte NULL
    .4byte 0x6C65616B
    .4byte 0x20646574
    .4byte 0x65637465
    .4byte 0x64202825
    .4byte 0x7029206E
    .4byte 0x625F7265
    .4byte 0x67202825
    .4byte 0x6429206D
    .4byte 0x61726B20
    .4byte 0x28253038
    .4byte 0x78290A00
    .4byte 0x6C65616B
    .4byte 0x20646574
    .4byte 0x65637465
    .4byte 0x64202825
    .4byte 0x7029205B
    .4byte 0x64657374
    .4byte 0x726F7965
    .4byte 0x64206865
    .4byte 0x61646572
    .4byte 0x5D0A0000
    .4byte 0x6E756D62
    .4byte 0x6572206F
    .4byte 0x66206C65
    .4byte 0x616B6564
    .4byte 0x206D656D
    .4byte 0x6F72793A
    .4byte 0x2025642E
    .4byte 0x0A000000
    .4byte 0x6C65616B
    .4byte 0x20697320
    .4byte 0x6E6F7420
    .4byte 0x64657465
    .4byte 0x63746564
    .4byte 0x2E0A0000


.section .sdata
    .balign 8
.global lbl_804D6000
lbl_804D6000:
    .asciz " "
    .balign 4
.global lbl_804D6004
lbl_804D6004:
    .4byte 0x646F6E65
    .4byte 0x2E0A0000
    .4byte 0x00000000
