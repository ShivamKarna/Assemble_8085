; Gray to binary converter

LDA 8200H
MOV D, A
MVI C, 07H ;counter

L1: STC 
CMC
RAR
XRA D
DCR C
JNZ L1

STA 8201H
HLT 