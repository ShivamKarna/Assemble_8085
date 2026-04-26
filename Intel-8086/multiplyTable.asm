.MODEL SMALL
.STACK 100H
.DATA
    PROMPT DB 'Enter a digit: ', '$'
    SPACE  DB ' ', '$'
    NUM    DB ?

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    ; 1. Read Single Digit
    MOV DX, OFFSET PROMPT
    MOV AH, 09H
    INT 21H

    MOV AH, 01H     ; Read char with echo
    INT 21H
    SUB AL, '0'     ; Convert ASCII to actual number
    MOV NUM, AL     ; Store it

    ; 2. Print a New Line
    MOV DL, 0DH
    MOV AH, 02H
    INT 21H
    MOV DL, 0AH
    INT 21H

    ; 3. Setup Loop for 1 to 10
    MOV CX, 1       ; Counter (multiplier)

TABLE_LOOP:
    ; Multiply: AL = NUM * CX
    MOV AL, NUM
    MUL CL          ; AX = AL * CL (Result in AL because input is small)

    ; 4. Display the Result (Handles 1 and 2 digits)
    AAM             ; ASCII Adjust for Multiplication
    
    MOV BX, AX      ; Save digits in BX (BH=Tens, BL=Units)

    ; Print Tens Digit (only if it is > 0)
    CMP BH, 0
    JE  PRINT_UNITS
    MOV DL, BH
    ADD DL, '0'
    MOV AH, 02H
    INT 21H

PRINT_UNITS:
    MOV DL, BL
    ADD DL, '0'
    MOV AH, 02H
    INT 21H

    ; Print Space
    MOV DX, OFFSET SPACE
    MOV AH, 09H
    INT 21H

    ; 5. Increment and Loop
    INC CX
    CMP CX, 11
    JNE TABLE_LOOP

    MOV AX, 4C00H
    INT 21H
MAIN ENDP
END MAIN