@a = dso_local global i32 7

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

define dso_local i32 @func() {
0:
	%1 = alloca i32
	%2 = alloca i32
	%3 = alloca i32
	%4 = load i32, i32* @a
	store i32 %4, i32* %2
	store i32 1, i32* %3
	%5 = load i32, i32* %3
	%6 = load i32, i32* %2
	%7 = icmp eq i32 %5, %6
	br i1 %7, label %8, label %11

8:
	%9 = load i32, i32* %3
	%10 = add i32 %9, 1
	store i32 %10, i32* %3
	store i32 1, i32* %1
	br label %13

11:
	store i32 0, i32* %1
	br label %13

12:
	br label %13

13:
	%14 = load i32, i32* %1
	ret i32 %14

}

define dso_local i32 @main() {
0:
	%1 = alloca i32
	%2 = alloca i32
	%3 = alloca i32
	store i32 0, i32* %2
	store i32 0, i32* %3
	br label %4

4:
	%5 = load i32, i32* %3
	%6 = icmp slt i32 %5, 100
	br i1 %6, label %7, label %16

7:
	%8 = call i32 @func()
	%9 = icmp eq i32 %8, 1
	br i1 %9, label %10, label %13

10:
	%11 = load i32, i32* %2
	%12 = add i32 %11, 1
	store i32 %12, i32* %2
	br label %13

13:
	%14 = load i32, i32* %3
	%15 = add i32 %14, 1
	store i32 %15, i32* %3
	br label %4

16:
	%17 = load i32, i32* %2
	%18 = icmp slt i32 %17, 100
	br i1 %18, label %19, label %20

19:
	call void @putint(i32 1)
	br label %21

20:
	call void @putint(i32 0)
	br label %21

21:
	store i32 0, i32* %1
	br label %22

22:
	%23 = load i32, i32* %1
	ret i32 %23

}

