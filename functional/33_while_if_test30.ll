
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

define dso_local i32 @deepWhileBr(i32 %0, i32 %1) {
2:
	%3 = alloca i32
	%4 = alloca i32
	%5 = alloca i32
	%6 = alloca i32
	%7 = alloca i32
	%8 = alloca i32
	store i32 %0, i32* %4
	store i32 %1, i32* %5
	%9 = load i32, i32* %4
	%10 = load i32, i32* %5
	%11 = add i32 %9, %10
	store i32 %11, i32* %6
	br label %12

12:
	%13 = load i32, i32* %6
	%14 = icmp slt i32 %13, 75
	br i1 %14, label %15, label %34

15:
	store i32 42, i32* %7
	%16 = load i32, i32* %6
	%17 = icmp slt i32 %16, 100
	br i1 %17, label %18, label %33

18:
	%19 = load i32, i32* %6
	%20 = load i32, i32* %7
	%21 = add i32 %19, %20
	store i32 %21, i32* %6
	%22 = load i32, i32* %6
	%23 = icmp sgt i32 %22, 99
	br i1 %23, label %24, label %32

24:
	%25 = load i32, i32* %7
	%26 = mul i32 %25, 2
	store i32 %26, i32* %8
	%27 = icmp eq i32 1, 1
	br i1 %27, label %28, label %31

28:
	%29 = load i32, i32* %8
	%30 = mul i32 %29, 2
	store i32 %30, i32* %6
	br label %31

31:
	br label %32

32:
	br label %33

33:
	br label %12

34:
	%35 = load i32, i32* %6
	store i32 %35, i32* %3
	br label %36

36:
	%37 = load i32, i32* %3
	ret i32 %37

}

define dso_local i32 @main() {
0:
	%1 = alloca i32
	%2 = alloca i32
	store i32 2, i32* %2
	%3 = load i32, i32* %2
	%4 = load i32, i32* %2
	%5 = call i32 @deepWhileBr(i32 %3, i32 %4)
	store i32 %5, i32* %1
	br label %6

6:
	%7 = load i32, i32* %1
	ret i32 %7

}

