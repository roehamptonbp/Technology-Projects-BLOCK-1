.global _start

.section .text
_start:
	mov x0, #1			// stdout (screen)
	ldr x1, =msg			// address of message
	mov x2, #14			// length
	mov x8, #64			// syscall: write
	svc #0				// call linux

	mov x0, #0		 	// exit status: success
	mov x8, #93			// syscall: exit
	svc #0				// call linux
 .section .rodata
msg:
	.ascii "Hello ARM Pi!\n"

