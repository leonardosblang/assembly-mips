
.text 
main:

#carregando base 1
li $v0, 5
syscall
add $t0,$v0,0

#carregando base 2
li $v0, 5
syscall
add $t1,$v0,0

#carregando altura
li $v0, 5
syscall
add $t2,$v0,0


#somando as duas bases em t3
add $t3,$t0,$t1

#multiplicando t3 pela altura
mult $t3,$t2

#carregando o vslor 2 em s1
li $s1,2

#dividindo t3 por 2 usando s1
div $t3,$s1


#printando o resultado final
li $v0,1
la $a0, ($t3)
syscall

