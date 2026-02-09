; The following code will be placed in the executable
; code section.
.text
.global __reset
__reset:
LOOP: 
mov 0x1020, w1 ;INW0=1010
mov 0x1022, w2 ;INW1=0000
ze w1, w3;
mov w3, 0x1024;
bra Z, STOP ; no jump
ze w2, w3;
mov w3, 0x1024;
bra Z, C ; jump to C
bra STOP ; jump to stop.
C: 
add w1, w2, w3; 
mov w3, 0x1024;
bra C, STOP ; no jump
ze w1, w3;
mov w3, 0x1024;
bra C, N ; jump to N
bra STOP;
N: 
ze w1, w3;
mov w3, 0x1024;
bra N, STOP; no jump
sub w2, w1, w3;
mov w3, 0x1024;
bra N, END;
bra STOP;
STOP: bra STOP ; infinite loop
END: bra LOOP ;return to start

