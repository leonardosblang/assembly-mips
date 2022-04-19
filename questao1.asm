.data
 valor: .asciiz "valor de a "
 valor2: .asciiz " valor de b "

.text
 main:
 
 #ler e salvar em t0
 li $v0,5
 syscall
 add $t0,$v0,0
 #ler e salvar em t1
 li $v0,5
 syscall
 add $t1,$v0,0
 
 
 # t2 = auxiliar com valor de t0
 add $t2,$t0,0
 
 #zerando t0 para depois adicionar t1
 li $t0,0
 add $t0,$t1,0
 
 #zerando t1 para adicionar t2
 li $t1,0
add $t1,$t2,0

#print valor de a e b

li $v0,4
la $a0,valor
syscall

li $v0,1
la $a0,($t0)
syscall
 
 li $v0,4
la $a0,valor2
syscall

li $v0,1
la $a0,($t1)
 syscall
 