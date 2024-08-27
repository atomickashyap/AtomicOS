ORG 0X7C00 ;bios always put our operating system at address 7C00
bits 16 ; tell assembler to emit 16 bit code


main: 
	hlt

.halt:
	jmp .halt

times 510-($-$$) db 0 ;give the size of our program in bytes
dw 0AA55h
