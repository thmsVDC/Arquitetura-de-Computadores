.data
primeiro: .asciiz "Digite o primeiro valor:  "
segundo: .asciiz "Digite o segundo valor: "
soma: .asciiz "Soma: "
subtracao: .asciiz "Subtração: "
divisao: .asciiz "Divisão: "
multi: .asciiz "Multiplicação: "
vazio: .asciiz "\n

.text

volta:
la $a0, primeiro
li $v0, 4
syscall

li $v0, 5
syscall
add $t1, $v0, $0

bne $t1, $0, continua

j fim

continua:
la $a0, segundo
li $v0, 4
syscall

li $v0, 5
syscall
add $t2, $v0, $0

bne $t2, $0, operacoes

j fim

operacoes:
la $a0, vazio
li $v0, 4
syscall

# Soma
la $a0, soma
li $v0, 4
syscall

add $a0, $t1, $t2
li $v0, 1		# print (a + b)
syscall


la $a0, vazio
li $v0, 4
syscall

# Subtração
la $a0, subtracao
li $v0, 4
syscall

sub $a0, $t1, $t2
li $v0, 1		# print (a - b)
syscall


la $a0, vazio
li $v0, 4
syscall

# Divisão
la $a0, divisao
li $v0, 4
syscall

div $a0, $t1, $t2
li $v0, 1		# print(a / b)
syscall


la $a0, vazio
li $v0, 4
syscall

# Multiplicação
la $a0, multi
li $v0, 4
syscall

mul $a0, $t1, $t2
li $v0, 1		# print (a * b)
syscall

la $a0, vazio
li $v0, 4
syscall

j volta

fim:
li $v0, 10
syscall




