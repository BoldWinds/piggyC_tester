
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
	%4 = alloca i32
	%5 = alloca i32
	store i32 10, i32* %2
	store i32 4, i32* %3
	store i32 2, i32* %4
	store i32 2, i32* %5
	%6 = load i32, i32* %4
	%7 = load i32, i32* %2
	%8 = add i32 %6, %7
	%9 = load i32, i32* %3
	%10 = load i32, i32* %5
	%11 = sub i32 %9, %10
	%12 = mul i32 %8, %11
	store i32 %12, i32* %1
	br label %13

13:
	%14 = load i32, i32* %1
	ret i32 %14

}

