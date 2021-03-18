.data

rsp:  .space 30
size: .word 30

.text

# Seu código abaixo:

la a0, rsp
addi a1, a1, 30 
li a7, 8
ecall
addi t1, t1, 30
addi s0, s0, 97
addi s1, s1, 122

loop:
beq t0, t1, fim
lb t2, (a0)
addi a0, a0, 1
addi t0, t0, 1
bgt t2, s1, loop
bgt s0, t2, loop
addi t2, t2, -32
addi t3, a0, -1
sb t2, (t3)
jal loop

fim:
la a0, rsp
li a7, 4
ecall
li a7, 10
ecall