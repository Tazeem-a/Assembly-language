#Write a MIPS program to simulate a simple calculator that can #perform addition, subtraction, multiplication, and division #based on user input.

.data
    prompt1: .asciiz "Enter first number: "
    prompt2: .asciiz "Enter second number: "
    prompt3: .asciiz "Choose an operation (+, -, *, /): "
    result: .asciiz "The result is: "
    newline: .asciiz "\n"
    error: .asciiz "Invalid operation.\n"

.text
    

main:
    # Prompt for first number
    li $v0, 4
    la $a0, prompt1
    syscall
    
    li $v0, 5          # Read integer
    syscall
    move $t0, $v0     

    # Prompt for second number
    li $v0, 4
    la $a0, prompt2
    syscall
    
    li $v0, 5          # Read integer
    syscall
    move $t1, $v0      

    # Prompt for operation
    li $v0, 4
    la $a0, prompt3
    syscall
    
    li $v0, 12         # Read character
    syscall
    move $t2, $v0      

    # Perform operation based on user input
    beq $t2, 43, add    # '+' (ASCII 43)
    beq $t2, 45, sub    # '-' (ASCII 45)
    beq $t2, 42, mul    # '*' (ASCII 42)
    beq $t2, 47, div    # '/' (ASCII 47)
    j error_message

add:
    add $t3, $t0, $t1    # $t3 = $t0 + $t1
    j print_result

sub:
    sub $t3, $t0, $t1    # $t3 = $t0 - $t1
    j print_result

mul:
    mul $t3, $t0, $t1    # $t3 = $t0 * $t1
    j print_result

div:
    div $t0, $t1         # $t0 / $t1
    mflo $t3             # Get quotient in $t3
    j print_result

error_message:
    li $v0, 4
    la $a0, error
    syscall
    j end_program

print_result:
    li $v0, 4
    la $a0, result
    syscall
    
    li $v0, 1           # Print integer result
    move $a0, $t3
    syscall
    
    li $v0, 4
    la $a0, newline
    syscall

end_program:
    li $v0, 10          # Exit program
    syscall
