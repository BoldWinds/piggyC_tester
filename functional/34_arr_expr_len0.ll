@N = dso_local constant i32 -1
@arr = dso_local global [6 x i32]  [i32 1, i32 2, i32 33, i32 4, i32 5, i32 6]

declare i32 @getint()

declare i32 @getch()

declare float @getfloat()

declare i32 @getarray(i32*)

declare i32 @getfarray(float*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putfloat(float)

declare void @putarray(i32, i32*)

declare void @putfarray(i32, float*)

declare void @putf(i8*, i32)

declare void @starttime()

declare void @stoptime()

define dso_local i32 @main() {
0:
	%1 = alloca i32
	%2 = alloca i32
	%3 = alloca i32
	store i32 0, i32* %2
	store i32 0, i32* %3
	br label %4

4:
	%5 = load i32, i32* %2
	%6 = icmp slt i32 %5, 6
	br i1 %6, label %7, label %15

7:
	%8 = load i32, i32* %3
	%9 = load i32, i32* %2
	%10 = getelementptr [6 x i32], [6 x i32]* @arr, i32 0, i32 %9
	%11 = load i32, i32* %10
	%12 = add i32 %8, %11
	store i32 %12, i32* %3
	%13 = load i32, i32* %2
	%14 = add i32 %13, 1
	store i32 %14, i32* %2
	br label %4

15:
	%16 = load i32, i32* %3
	store i32 %16, i32* %1
	br label %17

17:
	%18 = load i32, i32* %1
	ret i32 %18

}

