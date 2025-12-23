// Max.asm: Computes max(R0, R1) and puts the result in R2. Before executing, put some test values in R0 and R1.
// max(R1,R2)=Max(RAM[1], RAM[2])
@R0
D=M //取R0的值，存到D
@R1
D=D-M // D=R0-R1


// 如果D>0,则R0>=R1,R2=R0，否则R2=R1

// if (D > 0) goto IF_TRUE
@IF_TRUE
D;JGT // 判断D是否大于0
// else分支
@R1
D=M
@R2
M=D
@END
0;JMP

(IF_TRUE)
// then分支
@R0 
D=M //R0相当于地址0，要取R0里的值，要用M=Memory[R0]
@R2
M=D
(END)