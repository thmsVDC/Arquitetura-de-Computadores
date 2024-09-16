.data
frase1: .asciiz "Os valores são diferentes!"
frase2: .asciiz "Os valores são iguais!"

.text
addi $t1, $0, 10 # li $t1, 10 (pseudo instrução)
addi $t2, $0, 10 # li $t2, 20 (pseudo instrução)

bne $t1, $t2, diferente # if ($t1 != $t2)
la $a0, frase2

j fim

diferente:
la $a0, frase1

fim:
li $v0, 4
syscall
li $v0,10 # Encerra a execução
syscall 