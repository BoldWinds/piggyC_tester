
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

define dso_local i32 @ifWhile() {
0:
	%1 = alloca i32
	%2 = alloca i32
	%3 = alloca i32
	store i32 0, i32* %2
	store i32 3, i32* %3
	%4 = load i32, i32* %2
	%5 = icmp eq i32 %4, 5
	br i1 %5, label %6, label %16

6:
	br label %7

7:
	%8 = load i32, i32* %3
	%9 = icmp eq i32 %8, 2
	br i1 %9, label %10, label %13

10:
	%11 = load i32, i32* %3
	%12 = add i32 %11, 2
	store i32 %12, i32* %3
	br label %7

13:
	%14 = load i32, i32* %3
	%15 = add i32 %14, 25
	store i32 %15, i32* %3
	br label %26

16:
	br label %17

17:
	%18 = load i32, i32* %2
	%19 = icmp slt i32 %18, 5
	br i1 %19, label %20, label %25

20:
	%21 = load i32, i32* %3
	%22 = mul i32 %21, 2
	store i32 %22, i32* %3
	%23 = load i32, i32* %2
	%24 = add i32 %23, 1
	store i32 %24, i32* %2
	br label %17

25:
	br label %26

26:
	%27 = load i32, i32* %3
	store i32 %27, i32* %1
	br label %28

28:
	%29 = load i32, i32* %1
	ret i32 %29

}

define dso_local i32 @main() {
0:
	%1 = alloca i32
	%2 = call i32 @ifWhile()
	store i32 %2, i32* %1
	br label %3

3:
	%4 = load i32, i32* %1
	ret i32 %4

}

