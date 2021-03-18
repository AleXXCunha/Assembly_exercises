li a7, 5
ecall
addi s1, s1, 33 

loop:
add t0, a0, zero
srl t0, t0, t1
slli t0, t0, 31
addi t1, t1, 1
beq t1, s1, fim
bnez t0, bit1
j loop

bit1:
addi s0, s0, 1
j loop

fim:
add a0, s0, zero
li a7, 1
ecall
li a7, 10
ecall