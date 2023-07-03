
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
	store i32 10, i32* %2
	%3 = load i32, i32* %2
	%4 = icmp ne i32 %3, 0
	%5 = xor i1 %4, true
	%6 = xor i1 %5, true
	%7 = xor i1 %6, true
	%8 = zext i1 %7 to i32
	%9 = sub i32 0, %8
	%10 = icmp ne i32 %9, 0
	br i1 %10, label %11, label %12

11:
	store i32 -1, i32* %2
	br label %13

12:
	store i32 0, i32* %2
	br label %13

13:
	%14 = load i32, i32* %2
	store i32 %14, i32* %1
	br label %15

15:
	%16 = load i32, i32* %1
	ret i32 %16

}

