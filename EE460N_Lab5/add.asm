	.orig x3000
		LEA R0, DAT ;26
		LDW R0, R0, #0 ;49
		AND R1, R1, #0 ;26
		ADD R2, R2, #10
		ADD R2, R2, #10 ;153
LOOP	BRnz STORE ;26
		LDB R3, R0, #0
		ADD R1, R1, R3
		ADD R0, R0, #1
		ADD R2, R2, #-1
		BRnzp LOOP
STORE	LEA R0, STO
		LDW R0, R0, #0
		STW R1, R0, #0
		JMP R1
		TRAP x25
DAT		.FILL xC000
STO		.FILL xC014
	.end