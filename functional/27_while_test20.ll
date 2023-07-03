
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

define dso_local i32 @FourWhile() {
0:
	%1 = alloca i32
	%2 = alloca i32
	%3 = alloca i32
	%4 = alloca i32
	%5 = alloca i32
	store i32 5, i32* %2
	store i32 6, i32* %3
	store i32 7, i32* %4
	store i32 10, i32* %5
	br label %6

6:
	%7 = load i32, i32* %2
	%8 = icmp slt i32 %7, 20
	br i1 %8, label %9, label %39

9:
	%10 = load i32, i32* %2
	%11 = add i32 %10, 3
	store i32 %11, i32* %2
	br label %12

12:
	%13 = load i32, i32* %3
	%14 = icmp slt i32 %13, 10
	br i1 %14, label %15, label %36

15:
	%16 = load i32, i32* %3
	%17 = add i32 %16, 1
	store i32 %17, i32* %3
	br label %18

18:
	%19 = load i32, i32* %4
	%20 = icmp eq i32 %19, 7
	br i1 %20, label %21, label %33

21:
	%22 = load i32, i32* %4
	%23 = sub i32 %22, 1
	store i32 %23, i32* %4
	br label %24

24:
	%25 = load i32, i32* %5
	%26 = icmp slt i32 %25, 20
	br i1 %26, label %27, label %30

27:
	%28 = load i32, i32* %5
	%29 = add i32 %28, 3
	store i32 %29, i32* %5
	br label %24

30:
	%31 = load i32, i32* %5
	%32 = sub i32 %31, 1
	store i32 %32, i32* %5
	br label %18

33:
	%34 = load i32, i32* %4
	%35 = add i32 %34, 1
	store i32 %35, i32* %4
	br label %12

36:
	%37 = load i32, i32* %3
	%38 = sub i32 %37, 2
	store i32 %38, i32* %3
	br label %6

39:
	%40 = load i32, i32* %2
	%41 = load i32, i32* %3
	%42 = load i32, i32* %5
	%43 = add i32 %41, %42
	%44 = add i32 %40, %43
	%45 = load i32, i32* %4
	%46 = add i32 %44, %45
	store i32 %46, i32* %1
	br label %47

47:
	%48 = load i32, i32* %1
	ret i32 %48

}

define dso_local i32 @main() {
0:
	%1 = alloca i32
	%2 = call i32 @FourWhile()
	store i32 %2, i32* %1
	br label %3

3:
	%4 = load i32, i32* %1
	ret i32 %4

}

