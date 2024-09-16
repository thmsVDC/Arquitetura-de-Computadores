# a = 10; b = 20; x = 1
# while (a != b):
#	a += 1
#	b -= 1
#	print (f"Iteração: {x})
#	print ("a")
#	print ("b")
#	x += 1

.data
f: .asciiz "\nIteração: "
vazio: .asciiz "\n"

.text
addi $t1, $0, 10	# a = 10
addi $t2, $0, 20	# b = 20
addi $t3, $0, 1		# x = 1

volta:
bne $t1, $t2, diferente

j fim

diferente:
addi $t1, $t1, 1	# a += 1
addi $t2, $t2, -1	# b -= 1
la $a0, f		# print (f"Iteração: ")
li $v0, 4
syscall

add $a0, $0, $t3	# a0 recebe $t3 (x)
li $v0, 1		# print (x)
syscall

la $a0, vazio		# pula linha
li $v0, 4
syscall 

add $a0, $0, $t1	# a0 recebe $t1 (a)
li $v0, 1		# print (a)
syscall 

la $a0, vazio		# pula linha
li $v0, 4
syscall 

add $a0, $0, $t2	# a0 recebe $t2 (b)
li $v0, 1		# print (b)
syscall

la $a0, vazio		# pula linha
li $v0, 4
syscall 

addi $t3, $t3, 1	# x += 1

j volta

fim: 
li $v0, 10
syscall