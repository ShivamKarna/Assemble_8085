; Program to find 1s and 2s complement of 
; 16 Bit Number



; 1s Complement
LXI H, 2050H
MOV A, M 
CMA 
STA 2052H

INX H

MOV A, M 
CMA 
STA 2054H 
HLT


; 2s Complement
LXI H, 2050H 

; LSB 
MOV A, M 
CMA 
ADI 01H 
STA 2052H 

; MSB 
INX H 
MOV A, M 
CMA 

JNC NO_CARRY 
ADI 01H

NO_CARRY:
      STA 2053H 
      HLT


