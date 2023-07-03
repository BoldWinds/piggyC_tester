
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
	store i32 15, i32* %2
	store i32 12, i32* %3
	%4 = load i32, i32* %2
	%5 = load i32, i32* %3
	%6 = add i32 %4, %5
	%7 = add i32 %6, 61
	store i32 %7, i32* %1
	br label %8

8:
	%9 = load i32, i32* %1
	ret i32 %9

}

