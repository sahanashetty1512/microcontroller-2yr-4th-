	AREA PRG,CODE,READONLY
START
	LDR R0,MEM0
	LDR R4,RES
	LDRH R1,[R0]
	ADD R0,R0,#2
	LDRH R5,[R0]
	MOV R2,R1
LOOP
	CMP R2,#1
	BEQ DONE
	ADD R0,R0,#2
	LDRH R3,[R0]
	SUB R2,R2,#1
	CMP R5,R3
	BHI LOOP
	MOV R5,R3
	B LOOP
DONE 
    STR R5,[R4]
HERE
	B HERE
MEM0
	DCD 0X40000000
RES
	DCD 0X40000015
		END
	