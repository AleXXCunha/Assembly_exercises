.data 
str:	.space 32
nl:	.word 10

.text
	li a7, 8
	la a0, str
	li a1, 30
	ecall
	
	lw  a1, nl
	jal limpa
	
	li a7, 4
	la a0, str
	ecall
	
	li a7, 10
	ecall
	
######################## Escreva a função limpa a seguir #######################	
limpa:
add t0, t0, a0
addi s0, s0, 10
add t3, t3, ra

loop:
lb t2, (t0)
beq t2, s0, fim
addi t0, t0, 1
j loop

fim:
sb zero, (t0)
jalr t3