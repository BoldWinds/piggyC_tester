
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

define dso_local i32 @get_one(i32 %0) {
1:
	%2 = alloca i32
	%3 = alloca i32
	store i32 %0, i32* %3
	store i32 1, i32* %2
	br label %4

4:
	%5 = load i32, i32* %2
	ret i32 %5

}

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
	br i1 %14, label %15, label %35

15:
	store i32 42, i32* %7
	%16 = load i32, i32* %6
	%17 = icmp slt i32 %16, 100
	br i1 %17, label %18, label %34

18:
	%19 = load i32, i32* %6
	%20 = load i32, i32* %7
	%21 = add i32 %19, %20
	store i32 %21, i32* %6
	%22 = load i32, i32* %6
	%23 = icmp sgt i32 %22, 99
	br i1 %23, label %24, label %33

24:
	%25 = load i32, i32* %7
	%26 = mul i32 %25, 2
	store i32 %26, i32* %8
	%27 = call i32 @get_one(i32 0)
	%28 = icmp eq i32 %27, 1
	br i1 %28, label %29, label %32

29:
	%30 = load i32, i32* %8
	%31 = mul i32 %30, 2
	store i32 %31, i32* %6
	br label %32

32:
	br label %33

33:
	br label %34

34:
	br label %12

35:
	%36 = load i32, i32* %6
	store i32 %36, i32* %3
	br label %37

37:
	%38 = load i32, i32* %3
	ret i32 %38

}

define dso_local i32 @main() {
0:
	%1 = alloca i32
	%2 = alloca i32
	store i32 2, i32* %2
	%3 = load i32, i32* %2
	%4 = load i32, i32* %2
	%5 = call i32 @deepWhileBr(i32 %3, i32 %4)
	store i32 %5, i32* %2
	%6 = load i32, i32* %2
	call void @putint(i32 %6)
	store i32 0, i32* %1
	br label %7

7:
	%8 = load i32, i32* %1
	ret i32 %8

}

