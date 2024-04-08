.extern sum
.text
.global SUM_ASM
SUM_ASM:
    LDR R0,=0X3
    LDR R1,=0X4
    BL sum
    MOV PC,LR
.end
