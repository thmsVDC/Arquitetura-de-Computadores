# Questão 1

.text
li $s0, 10 # a
li $s1, 20 # b
li $s2, 40 # c
li $s3, 50 # d
li $s4, 30 # e
#li $t2, 0x80

# Exercicio a 
sub $t1, $s3, $s4 # d - e = 50 - 30 = 20
addi $s0, $t1, 40 # d - e + 40 = 50 - 30 + 40 = 60
  
# Exercício b
#not $t3, $t2
nor $t0, $0, 0x80
and $s4, $s4, $t2

# Questão 2

# Questão 3

ori $s0, $s0, 0x20 # a = a | 0x20

# Questão 4
li $t0, 1
sll $t1, $t0, 5 # 1 << 5
or $s0, $s0, $s1 # a = a | (1 << 5)


