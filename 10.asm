	AREA LAB1,CODE,READONLY
START
	MOV R1,#8
	MOV R2,#4
	LDR R3,=0X40000000
	ADD R0,R1,R2
	STR R0,[R3]
	BX LR
	END
	