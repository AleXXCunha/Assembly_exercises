li a7, 5
ecall
add t0, t0, a0

ler:
beq t0, t1, fim
li a7, 5
ecall
add t2, t2, a0
addi t1, t1, 1
jal ler

fim:
add a0, t2, zero
li a7, 1
ecall
li a7, 10
ecall