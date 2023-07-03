
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

define dso_local i32 @ifElseIf() {
0:
	%1 = alloca i32
	%2 = alloca i32
	%3 = alloca i32
	store i32 5, i32* %2
	store i32 10, i32* %3
	%4 = load i32, i32* %2
	%5 = icmp eq i32 %4, 6
	br i1 %5, label %9, label %6

6:
	%7 = load i32, i32* %3
	%8 = icmp eq i32 %7, 11
	br i1 %8, label %9, label %11

9:
	%10 = load i32, i32* %2
	store i32 %10, i32* %1
	br label %34

11:
	%12 = load i32, i32* %3
	%13 = icmp eq i32 %12, 10
	br i1 %13, label %14, label %18

14:
	%15 = load i32, i32* %2
	%16 = icmp eq i32 %15, 1
	br i1 %16, label %17, label %18

17:
	store i32 25, i32* %2
	br label %31

18:
	%19 = load i32, i32* %3
	%20 = icmp eq i32 %19, 10
	br i1 %20, label %21, label %27

21:
	%22 = load i32, i32* %2
	%23 = icmp eq i32 %22, -5
	br i1 %23, label %24, label %27

24:
	%25 = load i32, i32* %2
	%26 = add i32 %25, 15
	store i32 %26, i32* %2
	br label %30

27:
	%28 = load i32, i32* %2
	%29 = sub i32 0, %28
	store i32 %29, i32* %2
	br label %30

30:
	br label %31

31:
	br label %32

32:
	%33 = load i32, i32* %2
	store i32 %33, i32* %1
	br label %34

34:
	%35 = load i32, i32* %1
	ret i32 %35

}

define dso_local i32 @main() {
0:
	%1 = alloca i32
	%2 = call i32 @ifElseIf()
	call void @putint(i32 %2)
	store i32 0, i32* %1
	br label %3

3:
	%4 = load i32, i32* %1
	ret i32 %4

}

