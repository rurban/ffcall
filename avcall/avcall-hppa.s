	.SPACE $PRIVATE$
	.SUBSPA $DATA$,QUAD=1,ALIGN=8,ACCESS=31
	.SUBSPA $BSS$,QUAD=1,ALIGN=8,ACCESS=31,ZERO,SORT=82
	.SPACE $TEXT$
	.SUBSPA $LIT$,QUAD=0,ALIGN=8,ACCESS=44
	.SUBSPA $CODE$,QUAD=0,ALIGN=8,ACCESS=44,CODE_ONLY
	.IMPORT $global$,DATA
	.IMPORT $$dyncall,MILLICODE
; gcc_compiled.:
	.SPACE $TEXT$
	.SUBSPA $CODE$

	.align 4
	.EXPORT __builtin_avcall,ENTRY,PRIV_LEV=3,ARGW0=GR,RTNVAL=GR
__builtin_avcall
	.PROC
	.CALLINFO FRAME=1152,CALLS,SAVE_RP,ENTRY_GR=3
	.ENTRY
	stw %r2,-20(0,%r30)
	ldo 1152(%r30),%r30
	stw %r3,-1060(0,%r30)
	copy %r26,%r3
	ldw 20(0,%r3),%r19
	ldo -1064(%r19),%r19
	sub %r3,%r19,%r19
	extrs %r19,29,30,%r19
	sub 0,%r19,%r21
	comib,<= -4,%r21,L$0003
	ldo -32(%r30),%r20
	zdep %r21,29,30,%r19
	addl %r19,%r20,%r20
	addl %r19,%r3,%r22
L$0005
	ldw 1064(0,%r22),%r19
	ldo 4(%r22),%r22
	ldo 1(%r21),%r21
	comib,> -4,%r21,L$0005
	stws,ma %r19,4(0,%r20)
L$0003
	ldw 12(0,%r3),%r20
	ldi 16,%r19
	comclr,<> %r19,%r20,0
	ldw 8(0,%r3),%r28
L$0007
	ldw 0(0,%r3),%r19
	ldw 1060(0,%r3),%r26
	ldw 1056(0,%r3),%r25
	ldw 1052(0,%r3),%r24
	ldw 1048(0,%r3),%r23
	copy %r19,%r22
	.CALL	ARGW0=GR
	bl $$dyncall,%r31
	copy %r31,%r2
	ldw 12(0,%r3),%r19
	copy %r28,%r22
	addi,uv -17,%r19,0
	blr,n %r19,0
	b,n L$0008
L$0061
	b L$0044
	nop
	b L$0008
	nop
	b L$0050
	nop
	b L$0050
	nop
	b L$0050
	nop
	b L$0043
	nop
	b L$0043
	nop
	b L$0044
	nop
	b L$0044
	nop
	b L$0044
	nop
	b L$0044
	nop
	b L$0021
	nop
	b L$0021
	nop
	b L$0022
	nop
	b L$0023
	nop
	b L$0044
	nop
	b L$0025
	nop
	bl L$0062,0
	ldi 0,%r28
L$0021
	ldw 8(0,%r3),%r19
	stw %r22,0(0,%r19)
	ldw 8(0,%r3),%r19
	bl L$0008,0
	stw %r29,4(0,%r19)
L$0022
	ldw 8(0,%r3),%r19
	bl L$0008,0
	fstws %fr4L,0(0,%r19)
L$0023
	ldw 8(0,%r3),%r19
	bl L$0008,0
	fstds %fr4,0(0,%r19)
L$0025
	ldw 4(0,%r3),%r19
	bb,>=,n %r19,31,L$0026
	ldw 16(0,%r3),%r19
	ldo -1(%r19),%r19
	addi,uv -8,%r19,0
	blr,n %r19,0
	b,n L$0032
L$0037
	b L$0028
	nop
	b L$0029
	nop
	b L$0032
	nop
	b L$0030
	nop
	b L$0032
	nop
	b L$0032
	nop
	b L$0032
	nop
	b L$0031
	nop
	bl L$0063,0
	ldw 16(0,%r3),%r19
L$0028
	ldw 8(0,%r3),%r20
	ldb 0(0,%r22),%r19
	bl L$0008,0
	stb %r19,0(0,%r20)
L$0029
	ldw 8(0,%r3),%r20
	ldh 0(0,%r22),%r19
	bl L$0008,0
	sth %r19,0(0,%r20)
L$0030
	ldw 8(0,%r3),%r20
	ldw 0(0,%r22),%r19
	bl L$0008,0
	stw %r19,0(0,%r20)
L$0031
	ldw 8(0,%r3),%r20
	ldw 0(0,%r22),%r19
	stw %r19,0(0,%r20)
	ldw 8(0,%r3),%r20
	ldw 4(0,%r22),%r19
	bl L$0008,0
	stw %r19,4(0,%r20)
L$0032
	ldw 16(0,%r3),%r19
L$0063
	ldo 3(%r19),%r19
	extru %r19,29,30,%r21
	addib,<,n -1,%r21,L$0008
L$0035
	ldw 8(0,%r3),%r19
	ldwx,s %r21(0,%r22),%r20
	sh2addl %r21,%r19,%r19
	addib,>= -1,%r21,L$0035
	stw %r20,0(0,%r19)
	bl L$0062,0
	ldi 0,%r28
L$0026
	bb,>=,n %r19,30,L$0008
	bb,>= %r19,28,L$0040
	ldw 16(0,%r3),%r19
	comib,=,n 2,%r19,L$0043
	comib,<<,n 2,%r19,L$0047
	comib,= 1,%r19,L$0050
	ldi 0,%r28
	bl,n L$0062,0
L$0047
	comib,= 4,%r19,L$0044
	ldi 0,%r28
	bl,n L$0062,0
L$0043
	ldw 8(0,%r3),%r19
	bl L$0008,0
	sth %r22,0(0,%r19)
L$0044
	ldw 8(0,%r3),%r19
	bl L$0008,0
	stw %r22,0(0,%r19)
L$0040
	ldo -1(%r19),%r19
	addi,uv -8,%r19,0
	blr,n %r19,0
	b,n L$0008
L$0059
	b L$0050
	nop
	b L$0051
	nop
	b L$0052
	nop
	b L$0053
	nop
	b L$0054
	nop
	b L$0055
	nop
	b L$0056
	nop
	b L$0057
	nop
	bl L$0062,0
	ldi 0,%r28
L$0050
	ldw 8(0,%r3),%r19
	bl L$0008,0
	stb %r22,0(0,%r19)
L$0051
	ldw 8(0,%r3),%r19
	extrs %r22,23,24,%r20
	stb %r20,0(0,%r19)
	ldw 8(0,%r3),%r19
	bl L$0008,0
	stb %r22,1(0,%r19)
L$0052
	ldw 8(0,%r3),%r20
	extrs %r22,15,16,%r19
	stb %r19,0(0,%r20)
	ldw 8(0,%r3),%r20
	extrs %r22,23,24,%r19
	stb %r19,1(0,%r20)
	ldw 8(0,%r3),%r19
	bl L$0008,0
	stb %r22,2(0,%r19)
L$0053
	ldw 8(0,%r3),%r20
	extrs %r22,7,8,%r19
	stb %r19,0(0,%r20)
	ldw 8(0,%r3),%r20
	extrs %r22,15,16,%r19
	stb %r19,1(0,%r20)
	ldw 8(0,%r3),%r20
	extrs %r22,23,24,%r19
	stb %r19,2(0,%r20)
	ldw 8(0,%r3),%r19
	bl L$0008,0
	stb %r22,3(0,%r19)
L$0054
	ldw 8(0,%r3),%r20
	extrs %r22,7,8,%r19
	stb %r19,0(0,%r20)
	ldw 8(0,%r3),%r20
	extrs %r22,15,16,%r19
	stb %r19,1(0,%r20)
	ldw 8(0,%r3),%r20
	extrs %r22,23,24,%r19
	stb %r19,2(0,%r20)
	ldw 8(0,%r3),%r19
	stb %r22,3(0,%r19)
	ldw 8(0,%r3),%r19
	bl L$0008,0
	stb %r29,4(0,%r19)
L$0055
	ldw 8(0,%r3),%r20
	extrs %r22,7,8,%r19
	stb %r19,0(0,%r20)
	ldw 8(0,%r3),%r20
	extrs %r22,15,16,%r19
	stb %r19,1(0,%r20)
	ldw 8(0,%r3),%r20
	extrs %r22,23,24,%r19
	stb %r19,2(0,%r20)
	ldw 8(0,%r3),%r19
	stb %r22,3(0,%r19)
	ldw 8(0,%r3),%r20
	extrs %r29,23,24,%r19
	stb %r19,4(0,%r20)
	ldw 8(0,%r3),%r19
	bl L$0008,0
	stb %r29,5(0,%r19)
L$0056
	ldw 8(0,%r3),%r20
	extrs %r22,7,8,%r19
	stb %r19,0(0,%r20)
	ldw 8(0,%r3),%r20
	extrs %r22,15,16,%r19
	stb %r19,1(0,%r20)
	ldw 8(0,%r3),%r20
	extrs %r22,23,24,%r19
	stb %r19,2(0,%r20)
	ldw 8(0,%r3),%r19
	stb %r22,3(0,%r19)
	ldw 8(0,%r3),%r20
	extrs %r29,15,16,%r19
	stb %r19,4(0,%r20)
	ldw 8(0,%r3),%r20
	extrs %r29,23,24,%r19
	stb %r19,5(0,%r20)
	ldw 8(0,%r3),%r19
	bl L$0008,0
	stb %r29,6(0,%r19)
L$0057
	ldw 8(0,%r3),%r20
	extrs %r22,7,8,%r19
	stb %r19,0(0,%r20)
	ldw 8(0,%r3),%r20
	extrs %r22,15,16,%r19
	stb %r19,1(0,%r20)
	ldw 8(0,%r3),%r20
	extrs %r22,23,24,%r19
	stb %r19,2(0,%r20)
	ldw 8(0,%r3),%r19
	stb %r22,3(0,%r19)
	ldw 8(0,%r3),%r20
	extrs %r29,7,8,%r19
	stb %r19,4(0,%r20)
	ldw 8(0,%r3),%r20
	extrs %r29,15,16,%r19
	stb %r19,5(0,%r20)
	ldw 8(0,%r3),%r20
	extrs %r29,23,24,%r19
	stb %r19,6(0,%r20)
	ldw 8(0,%r3),%r19
	stb %r29,7(0,%r19)
L$0008
	ldi 0,%r28
L$0062
	ldw -1172(0,%r30),%r2
	ldw -1060(0,%r30),%r3
	bv 0(%r2)
	ldo -1152(%r30),%r30
	.EXIT
	.PROCEND
