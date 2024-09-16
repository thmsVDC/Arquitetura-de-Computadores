# for (j = 1; j < 10; j++) {
#	print ("INATEL ", j)
# }

.data
frase: .asciiz "\n INATEL "

.text
addi $t1, $0, 0		# j = 1

volta:
addi $t1, $t1, 1		# j++
la $a0, frase
li $v0, 4
syscall

add $a0, $0, $t1
li $v0, 1
syscall 		# $a0 recebe o valor atual de j

blt $t1, 9, volta	# compara se j é menor que 10
