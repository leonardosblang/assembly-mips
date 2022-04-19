.data
test: .asciiz " "


.text
main:

#lendo três numeros
li $v0,5
syscall
add $t0,$v0,0

li $v0,5
syscall
add $t1,$v0,0

li $v0,5
syscall
add $t2,$v0,0

#salvando em auxiliares
add $s0,$t0,0
add $s1,$t1,0
add $s2,$t2,0

loop:
bgt $t1,$t0, bmaiora
bgt $t2,$t1, cmaiorb

j fim


cmaiorb:

#trocando c e b
li $t2,0
add $t2,$s1,0

li $t1,0
add $t1,$s2,0


#atualizando auxiliares

li $s1,0
add $s1,$t1,0

li $s2,0
add $s2,$t2,0



j loop

bmaiora:


#trocando b e a
li $t1,0
add $t1,$s0,0

li $t0,0
add $t0,$s1,0


#atualizando auxiliares
li $s0,0
add $s0,$t0,0

li $s1,0
add $s1,$t1,0


j loop

fim:




li $v0,1
la $a0, ($t0)
syscall

li $v0,4
la $a0, test
syscall

li $v0,1
la $a0, ($t1)
syscall

li $v0,4
la $a0, test
syscall

li $v0,1
la $a0, ($t2)
syscall








