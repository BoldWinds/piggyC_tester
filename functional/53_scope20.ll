@k = dso_local global i32 0

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
	store i32 3389, i32* @k
	%6 = load i32, i32* @k
	%7 = icmp slt i32 %6, 10000
	br i1 %7, label %8, label %31

8:
	%9 = load i32, i32* @k
	%10 = add i32 %9, 1
	store i32 %10, i32* @k
	store i32 112, i32* %2
	br label %11

11:
	%12 = load i32, i32* %2
	%13 = icmp sgt i32 %12, 10
	br i1 %13, label %14, label %29

14:
	%15 = load i32, i32* %2
	%16 = sub i32 %15, 88
	store i32 %16, i32* %2
	%17 = load i32, i32* %2
	%18 = icmp slt i32 %17, 1000
	br i1 %18, label %19, label %28

19:
	store i32 9, i32* %3
	store i32 11, i32* %4
	store i32 10, i32* %3
	%20 = load i32, i32* %2
	%21 = load i32, i32* %3
	%22 = sub i32 %20, %21
	store i32 %22, i32* %2
	store i32 11, i32* %5
	%23 = load i32, i32* %2
	%24 = load i32, i32* %5
	%25 = add i32 %23, %24
	%26 = load i32, i32* %4
	%27 = add i32 %25, %26
	store i32 %27, i32* %2
	br label %28

28:
	br label %11

29:
	%30 = load i32, i32* %2
	call void @putint(i32 %30)
	br label %31

31:
	%32 = load i32, i32* @k
	store i32 %32, i32* %1
	br label %33

33:
	%34 = load i32, i32* %1
	ret i32 %34

}

