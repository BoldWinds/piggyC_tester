
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
	%6 = icmp slt i32 %5, 100
	br i1 %6, label %7, label %17

7:
	%8 = load i32, i32* %2
	%9 = icmp eq i32 %8, 50
	br i1 %9, label %10, label %11

10:
	br label %17

11:
	%12 = load i32, i32* %3
	%13 = load i32, i32* %2
	%14 = add i32 %12, %13
	store i32 %14, i32* %3
	%15 = load i32, i32* %2
	%16 = add i32 %15, 1
	store i32 %16, i32* %2
	br label %4

17:
	%18 = load i32, i32* %3
	store i32 %18, i32* %1
	br label %19

19:
	%20 = load i32, i32* %1
	ret i32 %20

}

