.include "macros.inc"

.section .text  # 0x80005940 - 0x803B7240

.global func_803B4584
func_803B4584:
/* 803B4584 003B1384  28 04 00 00 */	cmplwi r4, 0
/* 803B4588 003B1388  40 82 00 0C */	bne lbl_803B4594
/* 803B458C 003B138C  38 60 FF FF */	li r3, -1
/* 803B4590 003B1390  4E 80 00 20 */	blr 
lbl_803B4594:
/* 803B4594 003B1394  88 A3 00 00 */	lbz r5, 0(r3)
/* 803B4598 003B1398  7C A0 07 75 */	extsb. r0, r5
/* 803B459C 003B139C  40 82 00 0C */	bne lbl_803B45A8
/* 803B45A0 003B13A0  38 60 00 00 */	li r3, 0
/* 803B45A4 003B13A4  4E 80 00 20 */	blr 
lbl_803B45A8:
/* 803B45A8 003B13A8  7C A5 07 74 */	extsb r5, r5
/* 803B45AC 003B13AC  54 A0 06 31 */	rlwinm. r0, r5, 0, 0x18, 0x18
/* 803B45B0 003B13B0  40 82 00 0C */	bne lbl_803B45BC
/* 803B45B4 003B13B4  38 60 00 01 */	li r3, 1
/* 803B45B8 003B13B8  4E 80 00 20 */	blr 
lbl_803B45BC:
/* 803B45BC 003B13BC  54 A0 06 34 */	rlwinm r0, r5, 0, 0x18, 0x1a
/* 803B45C0 003B13C0  2C 00 00 C0 */	cmpwi r0, 0xc0
/* 803B45C4 003B13C4  40 82 00 30 */	bne lbl_803B45F4
/* 803B45C8 003B13C8  28 04 00 02 */	cmplwi r4, 2
/* 803B45CC 003B13CC  41 80 00 20 */	blt lbl_803B45EC
/* 803B45D0 003B13D0  88 03 00 01 */	lbz r0, 1(r3)
/* 803B45D4 003B13D4  38 60 FF FF */	li r3, -1
/* 803B45D8 003B13D8  54 00 06 30 */	rlwinm r0, r0, 0, 0x18, 0x18
/* 803B45DC 003B13DC  2C 00 00 80 */	cmpwi r0, 0x80
/* 803B45E0 003B13E0  4C 82 00 20 */	bnelr 
/* 803B45E4 003B13E4  38 60 00 02 */	li r3, 2
/* 803B45E8 003B13E8  4E 80 00 20 */	blr 
lbl_803B45EC:
/* 803B45EC 003B13EC  38 60 FF FE */	li r3, -2
/* 803B45F0 003B13F0  4E 80 00 20 */	blr 
lbl_803B45F4:
/* 803B45F4 003B13F4  54 A0 06 36 */	rlwinm r0, r5, 0, 0x18, 0x1b
/* 803B45F8 003B13F8  2C 00 00 E0 */	cmpwi r0, 0xe0
/* 803B45FC 003B13FC  40 82 00 6C */	bne lbl_803B4668
/* 803B4600 003B1400  28 04 00 03 */	cmplwi r4, 3
/* 803B4604 003B1404  41 80 00 34 */	blt lbl_803B4638
/* 803B4608 003B1408  88 03 00 01 */	lbz r0, 1(r3)
/* 803B460C 003B140C  54 00 06 30 */	rlwinm r0, r0, 0, 0x18, 0x18
/* 803B4610 003B1410  2C 00 00 80 */	cmpwi r0, 0x80
/* 803B4614 003B1414  40 82 00 1C */	bne lbl_803B4630
/* 803B4618 003B1418  88 03 00 02 */	lbz r0, 2(r3)
/* 803B461C 003B141C  54 00 06 30 */	rlwinm r0, r0, 0, 0x18, 0x18
/* 803B4620 003B1420  2C 00 00 80 */	cmpwi r0, 0x80
/* 803B4624 003B1424  40 82 00 0C */	bne lbl_803B4630
/* 803B4628 003B1428  38 60 00 03 */	li r3, 3
/* 803B462C 003B142C  4E 80 00 20 */	blr 
lbl_803B4630:
/* 803B4630 003B1430  38 60 FF FF */	li r3, -1
/* 803B4634 003B1434  4E 80 00 20 */	blr 
lbl_803B4638:
/* 803B4638 003B1438  28 04 00 02 */	cmplwi r4, 2
/* 803B463C 003B143C  40 82 00 14 */	bne lbl_803B4650
/* 803B4640 003B1440  88 03 00 01 */	lbz r0, 1(r3)
/* 803B4644 003B1444  54 00 06 30 */	rlwinm r0, r0, 0, 0x18, 0x18
/* 803B4648 003B1448  2C 00 00 80 */	cmpwi r0, 0x80
/* 803B464C 003B144C  41 82 00 0C */	beq lbl_803B4658
lbl_803B4650:
/* 803B4650 003B1450  28 04 00 01 */	cmplwi r4, 1
/* 803B4654 003B1454  40 82 00 0C */	bne lbl_803B4660
lbl_803B4658:
/* 803B4658 003B1458  38 60 FF FE */	li r3, -2
/* 803B465C 003B145C  4E 80 00 20 */	blr 
lbl_803B4660:
/* 803B4660 003B1460  38 60 FF FF */	li r3, -1
/* 803B4664 003B1464  4E 80 00 20 */	blr 
lbl_803B4668:
/* 803B4668 003B1468  38 60 FF FF */	li r3, -1
/* 803B466C 003B146C  4E 80 00 20 */	blr 

.global memcmp
memcmp:
/* 803B4670 003B1470  38 C3 FF FF */	addi r6, r3, -1
/* 803B4674 003B1474  38 E4 FF FF */	addi r7, r4, -1
/* 803B4678 003B1478  38 85 00 01 */	addi r4, r5, 1
/* 803B467C 003B147C  48 00 00 30 */	b lbl_803B46AC
lbl_803B4680:
/* 803B4680 003B1480  8C 66 00 01 */	lbzu r3, 1(r6)
/* 803B4684 003B1484  8C 07 00 01 */	lbzu r0, 1(r7)
/* 803B4688 003B1488  7C 03 00 40 */	cmplw r3, r0
/* 803B468C 003B148C  41 82 00 20 */	beq lbl_803B46AC
/* 803B4690 003B1490  88 86 00 00 */	lbz r4, 0(r6)
/* 803B4694 003B1494  38 60 00 01 */	li r3, 1
/* 803B4698 003B1498  88 07 00 00 */	lbz r0, 0(r7)
/* 803B469C 003B149C  7C 04 00 40 */	cmplw r4, r0
/* 803B46A0 003B14A0  4C 80 00 20 */	bgelr 
/* 803B46A4 003B14A4  38 60 FF FF */	li r3, -1
/* 803B46A8 003B14A8  4E 80 00 20 */	blr 
lbl_803B46AC:
/* 803B46AC 003B14AC  34 84 FF FF */	addic. r4, r4, -1
/* 803B46B0 003B14B0  40 82 FF D0 */	bne lbl_803B4680
/* 803B46B4 003B14B4  38 60 00 00 */	li r3, 0
/* 803B46B8 003B14B8  4E 80 00 20 */	blr 

.global __memrchr
__memrchr:
/* 803B46BC 003B14BC  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 803B46C0 003B14C0  7C 63 2A 14 */	add r3, r3, r5
/* 803B46C4 003B14C4  38 A5 00 01 */	addi r5, r5, 1
/* 803B46C8 003B14C8  48 00 00 10 */	b lbl_803B46D8
lbl_803B46CC:
/* 803B46CC 003B14CC  8C 03 FF FF */	lbzu r0, -1(r3)
/* 803B46D0 003B14D0  7C 00 20 40 */	cmplw r0, r4
/* 803B46D4 003B14D4  4D 82 00 20 */	beqlr 
lbl_803B46D8:
/* 803B46D8 003B14D8  34 A5 FF FF */	addic. r5, r5, -1
/* 803B46DC 003B14DC  40 82 FF F0 */	bne lbl_803B46CC
/* 803B46E0 003B14E0  38 60 00 00 */	li r3, 0
/* 803B46E4 003B14E4  4E 80 00 20 */	blr 

.global memrchr
memrchr:
/* 803B46E8 003B14E8  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 803B46EC 003B14EC  38 63 FF FF */	addi r3, r3, -1
/* 803B46F0 003B14F0  38 A5 00 01 */	addi r5, r5, 1
/* 803B46F4 003B14F4  48 00 00 10 */	b lbl_803B4704
lbl_803B46F8:
/* 803B46F8 003B14F8  8C 03 00 01 */	lbzu r0, 1(r3)
/* 803B46FC 003B14FC  7C 00 20 40 */	cmplw r0, r4
/* 803B4700 003B1500  4D 82 00 20 */	beqlr 
lbl_803B4704:
/* 803B4704 003B1504  34 A5 FF FF */	addic. r5, r5, -1
/* 803B4708 003B1508  40 82 FF F0 */	bne lbl_803B46F8
/* 803B470C 003B150C  38 60 00 00 */	li r3, 0
/* 803B4710 003B1510  4E 80 00 20 */	blr 

.global memmove
memmove:
/* 803B4714 003B1514  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B4718 003B1518  7C 08 02 A6 */	mflr r0
/* 803B471C 003B151C  28 05 00 20 */	cmplwi r5, 0x20
/* 803B4720 003B1520  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B4724 003B1524  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B4728 003B1528  7C 7F 1B 78 */	mr r31, r3
/* 803B472C 003B152C  7F E6 22 78 */	xor r6, r31, r4
/* 803B4730 003B1530  7C C0 00 34 */	cntlzw r0, r6
/* 803B4734 003B1534  7F E0 00 30 */	slw r0, r31, r0
/* 803B4738 003B1538  54 07 0F FE */	srwi r7, r0, 0x1f
/* 803B473C 003B153C  41 80 00 40 */	blt lbl_803B477C
/* 803B4740 003B1540  54 C0 07 BF */	clrlwi. r0, r6, 0x1e
/* 803B4744 003B1544  41 82 00 1C */	beq lbl_803B4760
/* 803B4748 003B1548  2C 07 00 00 */	cmpwi r7, 0
/* 803B474C 003B154C  40 82 00 0C */	bne lbl_803B4758
/* 803B4750 003B1550  48 00 01 3D */	bl __copy_longs_unaligned
/* 803B4754 003B1554  48 00 00 20 */	b lbl_803B4774
lbl_803B4758:
/* 803B4758 003B1558  48 00 00 89 */	bl __copy_longs_rev_unaligned
/* 803B475C 003B155C  48 00 00 18 */	b lbl_803B4774
lbl_803B4760:
/* 803B4760 003B1560  2C 07 00 00 */	cmpwi r7, 0
/* 803B4764 003B1564  40 82 00 0C */	bne lbl_803B4770
/* 803B4768 003B1568  48 00 02 8D */	bl __copy_longs_aligned
/* 803B476C 003B156C  48 00 00 08 */	b lbl_803B4774
lbl_803B4770:
/* 803B4770 003B1570  48 00 01 DD */	bl __copy_longs_rev_aligned
lbl_803B4774:
/* 803B4774 003B1574  7F E3 FB 78 */	mr r3, r31
/* 803B4778 003B1578  48 00 00 54 */	b lbl_803B47CC
lbl_803B477C:
/* 803B477C 003B157C  2C 07 00 00 */	cmpwi r7, 0
/* 803B4780 003B1580  40 82 00 28 */	bne lbl_803B47A8
/* 803B4784 003B1584  38 64 FF FF */	addi r3, r4, -1
/* 803B4788 003B1588  38 9F FF FF */	addi r4, r31, -1
/* 803B478C 003B158C  38 A5 00 01 */	addi r5, r5, 1
/* 803B4790 003B1590  48 00 00 0C */	b lbl_803B479C
lbl_803B4794:
/* 803B4794 003B1594  8C 03 00 01 */	lbzu r0, 1(r3)
/* 803B4798 003B1598  9C 04 00 01 */	stbu r0, 1(r4)
lbl_803B479C:
/* 803B479C 003B159C  34 A5 FF FF */	addic. r5, r5, -1
/* 803B47A0 003B15A0  40 82 FF F4 */	bne lbl_803B4794
/* 803B47A4 003B15A4  48 00 00 24 */	b lbl_803B47C8
lbl_803B47A8:
/* 803B47A8 003B15A8  7C 64 2A 14 */	add r3, r4, r5
/* 803B47AC 003B15AC  7C 9F 2A 14 */	add r4, r31, r5
/* 803B47B0 003B15B0  38 A5 00 01 */	addi r5, r5, 1
/* 803B47B4 003B15B4  48 00 00 0C */	b lbl_803B47C0
lbl_803B47B8:
/* 803B47B8 003B15B8  8C 03 FF FF */	lbzu r0, -1(r3)
/* 803B47BC 003B15BC  9C 04 FF FF */	stbu r0, -1(r4)
lbl_803B47C0:
/* 803B47C0 003B15C0  34 A5 FF FF */	addic. r5, r5, -1
/* 803B47C4 003B15C4  40 82 FF F4 */	bne lbl_803B47B8
lbl_803B47C8:
/* 803B47C8 003B15C8  7F E3 FB 78 */	mr r3, r31
lbl_803B47CC:
/* 803B47CC 003B15CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B47D0 003B15D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B47D4 003B15D4  7C 08 03 A6 */	mtlr r0
/* 803B47D8 003B15D8  38 21 00 10 */	addi r1, r1, 0x10
/* 803B47DC 003B15DC  4E 80 00 20 */	blr 

.global __copy_longs_rev_unaligned
__copy_longs_rev_unaligned:
/* 803B47E0 003B15E0  7D 63 2A 14 */	add r11, r3, r5
/* 803B47E4 003B15E4  7D 44 2A 14 */	add r10, r4, r5
/* 803B47E8 003B15E8  55 63 07 BF */	clrlwi. r3, r11, 0x1e
/* 803B47EC 003B15EC  41 82 00 18 */	beq lbl_803B4804
/* 803B47F0 003B15F0  7C A3 28 50 */	subf r5, r3, r5
lbl_803B47F4:
/* 803B47F4 003B15F4  8C 0A FF FF */	lbzu r0, -1(r10)
/* 803B47F8 003B15F8  34 63 FF FF */	addic. r3, r3, -1
/* 803B47FC 003B15FC  9C 0B FF FF */	stbu r0, -1(r11)
/* 803B4800 003B1600  40 82 FF F4 */	bne lbl_803B47F4
lbl_803B4804:
/* 803B4804 003B1604  55 48 1E F8 */	rlwinm r8, r10, 3, 0x1b, 0x1c
/* 803B4808 003B1608  55 47 07 BE */	clrlwi r7, r10, 0x1e
/* 803B480C 003B160C  21 28 00 20 */	subfic r9, r8, 0x20
/* 803B4810 003B1610  54 A6 E8 FE */	srwi r6, r5, 3
/* 803B4814 003B1614  20 07 00 04 */	subfic r0, r7, 4
/* 803B4818 003B1618  7D 4A 02 14 */	add r10, r10, r0
/* 803B481C 003B161C  84 8A FF FC */	lwzu r4, -4(r10)
lbl_803B4820:
/* 803B4820 003B1620  80 0A FF FC */	lwz r0, -4(r10)
/* 803B4824 003B1624  7C 83 4C 30 */	srw r3, r4, r9
/* 803B4828 003B1628  34 C6 FF FF */	addic. r6, r6, -1
/* 803B482C 003B162C  7C 04 40 30 */	slw r4, r0, r8
/* 803B4830 003B1630  7C 00 4C 30 */	srw r0, r0, r9
/* 803B4834 003B1634  7C 83 1B 78 */	or r3, r4, r3
/* 803B4838 003B1638  90 6B FF FC */	stw r3, -4(r11)
/* 803B483C 003B163C  84 8A FF F8 */	lwzu r4, -8(r10)
/* 803B4840 003B1640  7C 83 40 30 */	slw r3, r4, r8
/* 803B4844 003B1644  7C 60 03 78 */	or r0, r3, r0
/* 803B4848 003B1648  94 0B FF F8 */	stwu r0, -8(r11)
/* 803B484C 003B164C  40 82 FF D4 */	bne lbl_803B4820
/* 803B4850 003B1650  54 A0 07 7B */	rlwinm. r0, r5, 0, 0x1d, 0x1d
/* 803B4854 003B1654  41 82 00 18 */	beq lbl_803B486C
/* 803B4858 003B1658  84 6A FF FC */	lwzu r3, -4(r10)
/* 803B485C 003B165C  7C 80 4C 30 */	srw r0, r4, r9
/* 803B4860 003B1660  7C 63 40 30 */	slw r3, r3, r8
/* 803B4864 003B1664  7C 60 03 78 */	or r0, r3, r0
/* 803B4868 003B1668  94 0B FF FC */	stwu r0, -4(r11)
lbl_803B486C:
/* 803B486C 003B166C  54 A5 07 BF */	clrlwi. r5, r5, 0x1e
/* 803B4870 003B1670  4D 82 00 20 */	beqlr 
/* 803B4874 003B1674  7D 4A 3A 14 */	add r10, r10, r7
lbl_803B4878:
/* 803B4878 003B1678  8C 0A FF FF */	lbzu r0, -1(r10)
/* 803B487C 003B167C  34 A5 FF FF */	addic. r5, r5, -1
/* 803B4880 003B1680  9C 0B FF FF */	stbu r0, -1(r11)
/* 803B4884 003B1684  40 82 FF F4 */	bne lbl_803B4878
/* 803B4888 003B1688  4E 80 00 20 */	blr 

.global __copy_longs_unaligned
__copy_longs_unaligned:
/* 803B488C 003B168C  7C 03 00 D0 */	neg r0, r3
/* 803B4890 003B1690  39 04 FF FF */	addi r8, r4, -1
/* 803B4894 003B1694  54 06 07 BF */	clrlwi. r6, r0, 0x1e
/* 803B4898 003B1698  38 63 FF FF */	addi r3, r3, -1
/* 803B489C 003B169C  41 82 00 18 */	beq lbl_803B48B4
/* 803B48A0 003B16A0  7C A6 28 50 */	subf r5, r6, r5
lbl_803B48A4:
/* 803B48A4 003B16A4  8C 08 00 01 */	lbzu r0, 1(r8)
/* 803B48A8 003B16A8  34 C6 FF FF */	addic. r6, r6, -1
/* 803B48AC 003B16AC  9C 03 00 01 */	stbu r0, 1(r3)
/* 803B48B0 003B16B0  40 82 FF F4 */	bne lbl_803B48A4
lbl_803B48B4:
/* 803B48B4 003B16B4  38 08 00 01 */	addi r0, r8, 1
/* 803B48B8 003B16B8  38 C3 FF FD */	addi r6, r3, -3
/* 803B48BC 003B16BC  54 09 07 BE */	clrlwi r9, r0, 0x1e
/* 803B48C0 003B16C0  54 A7 E8 FE */	srwi r7, r5, 3
/* 803B48C4 003B16C4  7D 09 40 50 */	subf r8, r9, r8
/* 803B48C8 003B16C8  54 0A 1E F8 */	rlwinm r10, r0, 3, 0x1b, 0x1c
/* 803B48CC 003B16CC  84 88 00 01 */	lwzu r4, 1(r8)
/* 803B48D0 003B16D0  21 6A 00 20 */	subfic r11, r10, 0x20
lbl_803B48D4:
/* 803B48D4 003B16D4  80 68 00 04 */	lwz r3, 4(r8)
/* 803B48D8 003B16D8  7C 84 50 30 */	slw r4, r4, r10
/* 803B48DC 003B16DC  34 E7 FF FF */	addic. r7, r7, -1
/* 803B48E0 003B16E0  7C 60 5C 30 */	srw r0, r3, r11
/* 803B48E4 003B16E4  7C 63 50 30 */	slw r3, r3, r10
/* 803B48E8 003B16E8  7C 80 03 78 */	or r0, r4, r0
/* 803B48EC 003B16EC  90 06 00 04 */	stw r0, 4(r6)
/* 803B48F0 003B16F0  84 88 00 08 */	lwzu r4, 8(r8)
/* 803B48F4 003B16F4  7C 80 5C 30 */	srw r0, r4, r11
/* 803B48F8 003B16F8  7C 60 03 78 */	or r0, r3, r0
/* 803B48FC 003B16FC  94 06 00 08 */	stwu r0, 8(r6)
/* 803B4900 003B1700  40 82 FF D4 */	bne lbl_803B48D4
/* 803B4904 003B1704  54 A0 07 7B */	rlwinm. r0, r5, 0, 0x1d, 0x1d
/* 803B4908 003B1708  41 82 00 18 */	beq lbl_803B4920
/* 803B490C 003B170C  84 08 00 04 */	lwzu r0, 4(r8)
/* 803B4910 003B1710  7C 83 50 30 */	slw r3, r4, r10
/* 803B4914 003B1714  7C 00 5C 30 */	srw r0, r0, r11
/* 803B4918 003B1718  7C 60 03 78 */	or r0, r3, r0
/* 803B491C 003B171C  94 06 00 04 */	stwu r0, 4(r6)
lbl_803B4920:
/* 803B4920 003B1720  54 A5 07 BF */	clrlwi. r5, r5, 0x1e
/* 803B4924 003B1724  38 88 00 03 */	addi r4, r8, 3
/* 803B4928 003B1728  38 66 00 03 */	addi r3, r6, 3
/* 803B492C 003B172C  4D 82 00 20 */	beqlr 
/* 803B4930 003B1730  20 09 00 04 */	subfic r0, r9, 4
/* 803B4934 003B1734  7C 80 20 50 */	subf r4, r0, r4
lbl_803B4938:
/* 803B4938 003B1738  8C 04 00 01 */	lbzu r0, 1(r4)
/* 803B493C 003B173C  34 A5 FF FF */	addic. r5, r5, -1
/* 803B4940 003B1740  9C 03 00 01 */	stbu r0, 1(r3)
/* 803B4944 003B1744  40 82 FF F4 */	bne lbl_803B4938
/* 803B4948 003B1748  4E 80 00 20 */	blr 

.global __copy_longs_rev_aligned
__copy_longs_rev_aligned:
/* 803B494C 003B174C  7C E3 2A 14 */	add r7, r3, r5
/* 803B4950 003B1750  7C C4 2A 14 */	add r6, r4, r5
/* 803B4954 003B1754  54 E3 07 BF */	clrlwi. r3, r7, 0x1e
/* 803B4958 003B1758  41 82 00 18 */	beq lbl_803B4970
/* 803B495C 003B175C  7C A3 28 50 */	subf r5, r3, r5
lbl_803B4960:
/* 803B4960 003B1760  8C 06 FF FF */	lbzu r0, -1(r6)
/* 803B4964 003B1764  34 63 FF FF */	addic. r3, r3, -1
/* 803B4968 003B1768  9C 07 FF FF */	stbu r0, -1(r7)
/* 803B496C 003B176C  40 82 FF F4 */	bne lbl_803B4960
lbl_803B4970:
/* 803B4970 003B1770  54 A4 D9 7F */	rlwinm. r4, r5, 0x1b, 5, 0x1f
/* 803B4974 003B1774  41 82 00 4C */	beq lbl_803B49C0
lbl_803B4978:
/* 803B4978 003B1778  80 66 FF FC */	lwz r3, -4(r6)
/* 803B497C 003B177C  34 84 FF FF */	addic. r4, r4, -1
/* 803B4980 003B1780  80 06 FF F8 */	lwz r0, -8(r6)
/* 803B4984 003B1784  90 67 FF FC */	stw r3, -4(r7)
/* 803B4988 003B1788  80 66 FF F4 */	lwz r3, -0xc(r6)
/* 803B498C 003B178C  90 07 FF F8 */	stw r0, -8(r7)
/* 803B4990 003B1790  80 06 FF F0 */	lwz r0, -0x10(r6)
/* 803B4994 003B1794  90 67 FF F4 */	stw r3, -0xc(r7)
/* 803B4998 003B1798  80 66 FF EC */	lwz r3, -0x14(r6)
/* 803B499C 003B179C  90 07 FF F0 */	stw r0, -0x10(r7)
/* 803B49A0 003B17A0  80 06 FF E8 */	lwz r0, -0x18(r6)
/* 803B49A4 003B17A4  90 67 FF EC */	stw r3, -0x14(r7)
/* 803B49A8 003B17A8  80 66 FF E4 */	lwz r3, -0x1c(r6)
/* 803B49AC 003B17AC  90 07 FF E8 */	stw r0, -0x18(r7)
/* 803B49B0 003B17B0  84 06 FF E0 */	lwzu r0, -0x20(r6)
/* 803B49B4 003B17B4  90 67 FF E4 */	stw r3, -0x1c(r7)
/* 803B49B8 003B17B8  94 07 FF E0 */	stwu r0, -0x20(r7)
/* 803B49BC 003B17BC  40 82 FF BC */	bne lbl_803B4978
lbl_803B49C0:
/* 803B49C0 003B17C0  54 A3 F7 7F */	rlwinm. r3, r5, 0x1e, 0x1d, 0x1f
/* 803B49C4 003B17C4  41 82 00 14 */	beq lbl_803B49D8
lbl_803B49C8:
/* 803B49C8 003B17C8  84 06 FF FC */	lwzu r0, -4(r6)
/* 803B49CC 003B17CC  34 63 FF FF */	addic. r3, r3, -1
/* 803B49D0 003B17D0  94 07 FF FC */	stwu r0, -4(r7)
/* 803B49D4 003B17D4  40 82 FF F4 */	bne lbl_803B49C8
lbl_803B49D8:
/* 803B49D8 003B17D8  54 A5 07 BF */	clrlwi. r5, r5, 0x1e
/* 803B49DC 003B17DC  4D 82 00 20 */	beqlr 
lbl_803B49E0:
/* 803B49E0 003B17E0  8C 06 FF FF */	lbzu r0, -1(r6)
/* 803B49E4 003B17E4  34 A5 FF FF */	addic. r5, r5, -1
/* 803B49E8 003B17E8  9C 07 FF FF */	stbu r0, -1(r7)
/* 803B49EC 003B17EC  40 82 FF F4 */	bne lbl_803B49E0
/* 803B49F0 003B17F0  4E 80 00 20 */	blr 

.global __copy_longs_aligned
__copy_longs_aligned:
/* 803B49F4 003B17F4  7C 03 00 D0 */	neg r0, r3
/* 803B49F8 003B17F8  38 84 FF FF */	addi r4, r4, -1
/* 803B49FC 003B17FC  54 06 07 BF */	clrlwi. r6, r0, 0x1e
/* 803B4A00 003B1800  38 63 FF FF */	addi r3, r3, -1
/* 803B4A04 003B1804  41 82 00 18 */	beq lbl_803B4A1C
/* 803B4A08 003B1808  7C A6 28 50 */	subf r5, r6, r5
lbl_803B4A0C:
/* 803B4A0C 003B180C  8C 04 00 01 */	lbzu r0, 1(r4)
/* 803B4A10 003B1810  34 C6 FF FF */	addic. r6, r6, -1
/* 803B4A14 003B1814  9C 03 00 01 */	stbu r0, 1(r3)
/* 803B4A18 003B1818  40 82 FF F4 */	bne lbl_803B4A0C
lbl_803B4A1C:
/* 803B4A1C 003B181C  54 A6 D9 7F */	rlwinm. r6, r5, 0x1b, 5, 0x1f
/* 803B4A20 003B1820  38 E4 FF FD */	addi r7, r4, -3
/* 803B4A24 003B1824  38 83 FF FD */	addi r4, r3, -3
/* 803B4A28 003B1828  41 82 00 4C */	beq lbl_803B4A74
lbl_803B4A2C:
/* 803B4A2C 003B182C  80 67 00 04 */	lwz r3, 4(r7)
/* 803B4A30 003B1830  34 C6 FF FF */	addic. r6, r6, -1
/* 803B4A34 003B1834  80 07 00 08 */	lwz r0, 8(r7)
/* 803B4A38 003B1838  90 64 00 04 */	stw r3, 4(r4)
/* 803B4A3C 003B183C  80 67 00 0C */	lwz r3, 0xc(r7)
/* 803B4A40 003B1840  90 04 00 08 */	stw r0, 8(r4)
/* 803B4A44 003B1844  80 07 00 10 */	lwz r0, 0x10(r7)
/* 803B4A48 003B1848  90 64 00 0C */	stw r3, 0xc(r4)
/* 803B4A4C 003B184C  80 67 00 14 */	lwz r3, 0x14(r7)
/* 803B4A50 003B1850  90 04 00 10 */	stw r0, 0x10(r4)
/* 803B4A54 003B1854  80 07 00 18 */	lwz r0, 0x18(r7)
/* 803B4A58 003B1858  90 64 00 14 */	stw r3, 0x14(r4)
/* 803B4A5C 003B185C  80 67 00 1C */	lwz r3, 0x1c(r7)
/* 803B4A60 003B1860  90 04 00 18 */	stw r0, 0x18(r4)
/* 803B4A64 003B1864  84 07 00 20 */	lwzu r0, 0x20(r7)
/* 803B4A68 003B1868  90 64 00 1C */	stw r3, 0x1c(r4)
/* 803B4A6C 003B186C  94 04 00 20 */	stwu r0, 0x20(r4)
/* 803B4A70 003B1870  40 82 FF BC */	bne lbl_803B4A2C
lbl_803B4A74:
/* 803B4A74 003B1874  54 A3 F7 7F */	rlwinm. r3, r5, 0x1e, 0x1d, 0x1f
/* 803B4A78 003B1878  41 82 00 14 */	beq lbl_803B4A8C
lbl_803B4A7C:
/* 803B4A7C 003B187C  84 07 00 04 */	lwzu r0, 4(r7)
/* 803B4A80 003B1880  34 63 FF FF */	addic. r3, r3, -1
/* 803B4A84 003B1884  94 04 00 04 */	stwu r0, 4(r4)
/* 803B4A88 003B1888  40 82 FF F4 */	bne lbl_803B4A7C
lbl_803B4A8C:
/* 803B4A8C 003B188C  54 A5 07 BF */	clrlwi. r5, r5, 0x1e
/* 803B4A90 003B1890  38 C7 00 03 */	addi r6, r7, 3
/* 803B4A94 003B1894  38 64 00 03 */	addi r3, r4, 3
/* 803B4A98 003B1898  4D 82 00 20 */	beqlr 
lbl_803B4A9C:
/* 803B4A9C 003B189C  8C 06 00 01 */	lbzu r0, 1(r6)
/* 803B4AA0 003B18A0  34 A5 FF FF */	addic. r5, r5, -1
/* 803B4AA4 003B18A4  9C 03 00 01 */	stbu r0, 1(r3)
/* 803B4AA8 003B18A8  40 82 FF F4 */	bne lbl_803B4A9C
/* 803B4AAC 003B18AC  4E 80 00 20 */	blr 

.global __sinit_AILoader_cpp
__sinit_AILoader_cpp:
/* 803B4AB0 003B18B0  3C 60 80 3B */	lis r3, __close_all@ha
/* 803B4AB4 003B18B4  38 03 FF EC */	addi r0, r3, __close_all@l
/* 803B4AB8 003B18B8  90 0D 0B F0 */	stw r0, lbl_805DDCD0@sda21(r13)
/* 803B4ABC 003B18BC  4E 80 00 20 */	blr 
