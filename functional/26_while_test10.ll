
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

define dso_local i32 @doubleWhile() {
0:
	%1 = alloca i32
	%2 = alloca i32
	%3 = alloca i32
	store i32 5, i32* %2
	store i32 7, i32* %3
	br label %4

4:
	%5 = load i32, i32* %2
	%6 = icmp slt i32 %5, 100
	br i1 %6, label %7, label %19

7:
	%8 = load i32, i32* %2
	%9 = add i32 %8, 30
	store i32 %9, i32* %2
	br label %10

10:
	%11 = load i32, i32* %3
	%12 = icmp slt i32 %11, 100
	br i1 %12, label %13, label %16

13:
	%14 = load i32, i32* %3
	%15 = add i32 %14, 6
	store i32 %15, i32* %3
	br label %10

16:
	%17 = load i32, i32* %3
	%18 = sub i32 %17, 100
	store i32 %18, i32* %3
	br label %4

19:
	%20 = load i32, i32* %3
	store i32 %20, i32* %1
	br label %21

21:
	%22 = load i32, i32* %1
	ret i32 %22

}

define dso_local i32 @main() {
0:
	%1 = alloca i32
	%2 = call i32 @doubleWhile()
	store i32 %2, i32* %1
	br label %3

3:
	%4 = load i32, i32* %1
	ret i32 %4

}

