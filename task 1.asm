#Mars

#Write a program that takes marks of 10 students and then displays the average.
.data
prompt1: .asciiz "enter marks of 10 students :  "

.text
main:
la $a0,prompt1
li $v0,4
syscall 



# marks of 1st student


li $v0, 5       
syscall         
move $t0, $v0

# marks of 2nd student

li $v0,5
syscall
move $t1,$v0


# marks of 3rd student

li $v0,5
syscall
move $t2,$v0

# marks of 4th student

li $v0,5
syscall
move $t3,$v0

# marks of 5th student

li $v0,5
syscall
move $t4,$v0

# marks of 6th student

li $v0,5
syscall
move $t5,$v0


# marks of 7th student

li $v0,5
syscall
move $t6,$v0


# marks of 8th student

li $v0,5
syscall
move $t7,$v0

# marks of 9th student

li $v0,5
syscall
move $t8,$v0

# marks of 10th student

li $v0,5
syscall
move $t9,$v0


#sum
add $s1, $t0, $t1
add $s1, $s1, $t2
add $s1, $s1, $t3
add $s1, $s1, $t4
add $s1, $s1, $t5
add $s1, $s1, $t6
add $s1, $s1, $t7
add $s1, $s1, $t8
add $s1, $s1, $t9

#average
      li $t0,10
div  $s0,$s1,$t0 

    


 # Print average
    move $a0, $s0       
    li $v0, 1           
    syscall

