#.data
#frase1: .asciiz "Entre com um valor inteiro: "
#frase2: .asciiz "O valor digitado foi: "

#.text
#la $a0, frase1 	# Carrega frase1 no endereço $a0
#li $v0, 4 		# Carrega o print_string
#syscall 		# Carrega o serviço

#li $v0, 5
#syscall
#add $t1, $v0, $0	#Desloca o valor para $t1


#la $a0, frase2
#li $v0, 4
#syscall

#add $a0, $t1, $0
#li $v0, 1
#syscall

 
 #Exercício
 
.data
frase1: .asciiz "Digite o primeiro valor: "
frase2: .asciiz "Digite o segundo valor: "
frase3: .asciiz "A média é: "

.text
la $a0, frase1
li $v0, 4
syscall

li $v0, 5
syscall
add $t1, $v0, $0


la $a0, frase2
li $v0, 4
syscall

li $v0, 5
syscall
add $t2, $v0, $0

add $t3, $t1, $t2
srl $a1, $t3, 1


la $a0, frase3
li $v0, 4
syscall

add $a0, $a1, $0
li $v0, 1
syscall