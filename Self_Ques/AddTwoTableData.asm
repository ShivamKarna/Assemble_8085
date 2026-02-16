;There are two tables holding twenty data whose starting address is 9000H and 9020H respectively.
; WAP to add the content of first table with content of second table having same array index.
; Store sum and carry into the third and fourth table indexing from 9040H and 9060H respectively.

LXI H, 9000H 
LXI B, 9040H
LXI D, 9060H 



L3: PUSH H 
  MOV A,L   
  ADI 20H 
  MOV L, A 
  MOV A, M 
  POP H 
  ADD M 
  STAX B 
  JNC L1 
  MVI A, 01H 
  JMP L2

L1: MVI A, 00H 
L2: STAX D 
INX H 
INX B 
INX D 
MOV A, E
CPI 74H 
JC L3 
HLT


; An easier method for above program might be this
LXI H , 9000H
LXI B, 9020H 
LXI D, 9040H 
LXI SP , 9060H 

MVI C, 14H ; COUNTER

LOOP: LDAX D 
  ADD M 
  STAX B 
  JNC NO_CARRY 
  MVI A, 01H 
  JMP STORE 
NO_CARRY: MVI A, 00H 

STORE  : PUSH B 
    MOV B, SPH 
    MOV C, SPL 
    STAX B 
    POP B 

INX H 
INX B 
INX D 

DCR C 
JNZ LOOP 
HLT
