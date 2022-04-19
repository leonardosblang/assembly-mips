.data

texto1: .asciiz  "\n"
texto2: .asciiz  " "

.text
main:

#usamos aspas simples quando lidamos com char

# setando os valores para os chars esperados
li $t4,'+'
li $t5,'-'
li $t6,'*'
li $t7,'/'
li $t8,'0'
op:

li $v0,4
la $a0,texto1
syscall 

li $v0, 5
syscall 
add $t0, $v0, 0

li $v0, 5
syscall 
add $t1, $v0, 0

#ler char

li $v0, 12
syscall 
move $t2,$v0


li $v0,4
la $a0,texto1
syscall



#caso t2 seja igual a um certo t, pular para tal label
beq $t2,$t4,soma
beq $t2,$t5,subt
beq $t2,$t6,multip
beq $t2,$t7,divis
beq $t2,$t8,end
j op

soma:
li $t3,0
add $t3,$t0,$t1


li $v0,1
la $a0, ($t3)
syscall

j op

subt:
li $t3,0
sub $t3,$t0,$t1

li $v0,1
la $a0, ($t3)
syscall

j op


multip:
li $t3,0
mul $t3,$t0,$t1

li $v0,1
la $a0, ($t3)
syscall

j op

divis:
li $t3,0
div $t3,$t0,$t1

li $v0,1
la $a0, ($t3)
syscall

j op

end:

jr $ra



