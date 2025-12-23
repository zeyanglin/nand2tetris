// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

//// Replace this comment with your code.

// Pseudo code:
// initialize sum = 0;
// while(R1>0){
//     R1--;
//     sum=sum+R0;
// }                 
	
// initialize sum=0;
@2
M=0

// 循环开始位置
(LOOP)

// 循环条件
@1
D=M
@END
D;JLE

// R1 = R1 - 1
D=D-1
@1
M=D

// sum=sum+R0;
@0
D=M // D=R0
@2
M=D+M

// 无条件跳转到（LOOP）所在位置
@LOOP
0;JMP

(END)
