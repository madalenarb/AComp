.data
#int x = 1, y = 1, z;

x: .word 1
y: .word 1

.text
lw x11,x
lw x12,y

la x15,y
li x13, 10
li x14, 2

while:
addi x15,x15,4
add x10,x11,x12
sw x10,0(x15)
add x12, x11, x0 
add x11, x10, x0 #x11 = n

addi x14,x14,1
blt x14,x13,while
