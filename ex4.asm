.data
# segmento de dados
ehpar: 	 .string "Eh par"
ehimpar: .string "Eh impar"

#segmento de codigo
.text
# seu codigo aqui...

li a7, 5
ecall
addi t0, t0, 2
rem t1, a0, t0
beq t1, zero, par
j impar

par:
la a0, ehpar
li a7, 4
ecall
j fim

impar:
la a0, ehimpar
li a7, 4
ecall

fim:
li a7, 10
ecall