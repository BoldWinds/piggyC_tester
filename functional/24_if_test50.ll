
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

define dso_local i32 @if_if_Else() {
0:
	%1 = alloca i32
	%2 = alloca i32
	%3 = alloca i32
	store i32 5, i32* %2
	store i32 10, i32* %3
	%4 = load i32, i32* %2
	%5 = icmp eq i32 %4, 5
	br i1 %5, label %6, label %11

6:
	%7 = load i32, i32* %3
	%8 = icmp eq i32 %7, 10
	br i1 %8, label %9, label %10

9:
	store i32 25, i32* %2
	br label %10

10:
	br label %14

11:
	%12 = load i32, i32* %2
	%13 = add i32 %12, 15
	store i32 %13, i32* %2
	br label %14

14:
	%15 = load i32, i32* %2
	store i32 %15, i32* %1
	br label %16

16:
	%17 = load i32, i32* %1
	ret i32 %17

}

define dso_local i32 @main() {
0:
	%1 = alloca i32
	%2 = call i32 @if_if_Else()
	store i32 %2, i32* %1
	br label %3

3:
	%4 = load i32, i32* %1
	ret i32 %4

}

