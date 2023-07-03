
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

define dso_local i32 @whileIf() {
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
	br i1 %6, label %7, label %22

7:
	%8 = load i32, i32* %2
	%9 = icmp eq i32 %8, 5
	br i1 %9, label %10, label %11

10:
	store i32 25, i32* %3
	br label %19

11:
	%12 = load i32, i32* %2
	%13 = icmp eq i32 %12, 10
	br i1 %13, label %14, label %15

14:
	store i32 42, i32* %3
	br label %18

15:
	%16 = load i32, i32* %2
	%17 = mul i32 %16, 2
	store i32 %17, i32* %3
	br label %18

18:
	br label %19

19:
	%20 = load i32, i32* %2
	%21 = add i32 %20, 1
	store i32 %21, i32* %2
	br label %4

22:
	%23 = load i32, i32* %3
	store i32 %23, i32* %1
	br label %24

24:
	%25 = load i32, i32* %1
	ret i32 %25

}

define dso_local i32 @main() {
0:
	%1 = alloca i32
	%2 = call i32 @whileIf()
	store i32 %2, i32* %1
	br label %3

3:
	%4 = load i32, i32* %1
	ret i32 %4

}

