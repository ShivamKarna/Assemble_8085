; Write ALP for 8086 to read password and validate user. The program should ask user for
; password, allow only correct password value and should display a message informing
; user if it is correct or incorrect.

.MODEL SMALL
.STACK 100H
.DATA
    PROMPT    DB 'ENTER PASSWORD: ', '$'
    MSG_OK    DB 0DH, 0AH, 'ACCESS GRANTED!', '$'
    MSG_FAIL  DB 0DH, 0AH, 'INVALID PASSWORD!', '$'
    
    ; The correct password stored in memory
    PASSWORD  DB 'admin123'
    PASS_LEN  EQU ($ - PASSWORD) ; Automatically calculates length (8)
    
    ; Buffer for user input
    BUFFER    DB 20, ?, 20 DUP('$')

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    MOV ES, AX         ; Extra Segment must be same as Data Segment for CMPSB

    ; 1. DISPLAY PROMPT
    MOV DX, OFFSET PROMPT
    MOV AH, 09H
    int 21H

    ; 2. READ PASSWORD INPUT
    MOV DX, OFFSET BUFFER
    MOV AH, 0AH
    int 21H

    ; 3. VALIDATE LENGTH FIRST
    ; [BUFFER+1] contains the actual number of characters typed
    MOV AL, [BUFFER + 1]
    CMP AL, PASS_LEN
    JNE INVALID        ; If lengths don't match, don't even bother checking chars

    ; 4. COMPARE STRINGS
    LEA SI, PASSWORD   ; Source: Correct password
    LEA DI, BUFFER + 2 ; Destination: User input
    MOV CL, PASS_LEN   ; Number of bytes to compare
    MOV CH, 0
    
    CLD                ; Clear Direction Flag (compare forward)
    REPE CMPSB         ; Repeat comparison while bytes are equal
    
    JNE INVALID        ; If any byte was different, Jump to INVALID

    ; 5. SUCCESS MESSAGE
    ; just a touchup of clearing screen
    MOV AH, 00H 
    MOV AL, 03H 
    INT 10H 

    MOV DX, OFFSET MSG_OK
    MOV AH, 09H
    int 21H
    JMP EXIT

INVALID:
    ; 6. FAILURE MESSAGE
        ; just a touchup of clearing screen
    MOV AH, 00H 
    MOV AL, 03H 
    INT 10H 

    MOV DX, OFFSET MSG_FAIL
    MOV AH, 09H
    int 21H

EXIT:
    MOV AX, 4C00H
    int 21H
MAIN ENDP
END MAIN