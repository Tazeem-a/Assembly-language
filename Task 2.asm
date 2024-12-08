#Write a program that inputs three 1-digit numbers 
#and combines them to form a 3 digit number. For example input 4, 8 ,7, output=487.
.data
prompt1: .asciiz "enter 1st number"
prompt2:.asciiz "enter 2nd number"
prompt3:.asciiz"enter 3rd number"
result:.asciiz"your final result"
.text

main:

la $a0,prompt1
li $v0,4
syscall 

li $v0, 5 
syscall 
move $t0, $v0


la $a0,prompt2
li $v0,4
syscall 

li $v0, 5 
syscall 
move $t1, $v0


la $a0,prompt3
li $v0,4
syscall 

li $v0, 5
syscall 
move $t2, $v0

mul $t0,$t0,100
mul $t1,$t1,10
add $t3,$t0,$t1
add $t3,$t3,$t2



la $a0,result
li $v0,4
syscall 

move $a0, $t3
li $v0, 1
syscall
