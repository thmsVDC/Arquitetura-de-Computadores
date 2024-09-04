.data
entrou: .asciiz "Entrou no IF \n"
nao: .asciiz "Não entrou no IF"

.text
li $t1, 0x10
li $t2, 0x10


beq $t1, $t2, igual	#Compara oq está em $t1 e $t2 e executa a label "IGUAL"
la $a0, nao
li $v0, 4
syscall

j fim	# Caso não entre no IF, ele pula para a label "FIM"

igual:
la $a0, entrou
li $v0, 4
syscall

fim:	li $v0, 10
	syscall 

bgt $t1, $t2, maior
la $a0, nao
li $v0, 4
syscall

j fim

maior:
la $a0, entrou
li $v0, 4
syscall