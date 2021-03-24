.data 
#declarar as variáveis x e y
#int x = 1, y = 1;
x: .word 1
y: .word 1

.text
#colocar as variáveis x e y nos registos x10 e x11, respectivamente
lw x10, x
lw x11, y
la x15, y

li x14, 10	#10 repetições do ciclo
li x13, 2	#o ciclo começa no número 2

#ciclo
while: 
addi x15,x15,4
add x12,x10,x11
sw x12,0(x15)
lw x10, 0(x11)
lw x11, 0(x12)

addi x13, x13, 1
blt x13, x14, while

end:

