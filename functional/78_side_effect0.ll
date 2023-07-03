@a = dso_local global i32 -1
@b = dso_local global i32 1

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

define dso_local i32 @inc_a() {
0:
	%1 = alloca i32
	%2 = alloca i32
	%3 = load i32, i32* @a
	store i32 %3, i32* %2
	%4 = load i32, i32* %2
	%5 = add i32 %4, 1
	store i32 %5, i32* %2
	%6 = load i32, i32* %2
	store i32 %6, i32* @a
	%7 = load i32, i32* @a
	store i32 %7, i32* %1
	br label %8

8:
	%9 = load i32, i32* %1
	ret i32 %9

}

define dso_local i32 @main() {
0:
	%1 = alloca i32
	%2 = alloca i32
	store i32 5, i32* %2
	br label %3

3:
	%4 = load i32, i32* %2
	%5 = icmp sge i32 %4, 0
	br i1 %5, label %6, label %39

6:
	%7 = call i32 @inc_a()
	%8 = icmp ne i32 %7, 0
	br i1 %8, label %9, label %18

9:
	%10 = call i32 @inc_a()
	%11 = icmp ne i32 %10, 0
	br i1 %11, label %12, label %18

12:
	%13 = call i32 @inc_a()
	%14 = icmp ne i32 %13, 0
	br i1 %14, label %15, label %18

15:
	%16 = load i32, i32* @a
	call void @putint(i32 %16)
	call void @putch(i32 32)
	%17 = load i32, i32* @b
	call void @putint(i32 %17)
	call void @putch(i32 10)
	br label %18

18:
	%19 = call i32 @inc_a()
	%20 = icmp slt i32 %19, 14
	br i1 %20, label %30, label %21

21:
	%22 = call i32 @inc_a()
	%23 = icmp ne i32 %22, 0
	br i1 %23, label %24, label %34

24:
	%25 = call i32 @inc_a()
	%26 = call i32 @inc_a()
	%27 = sub i32 %25, %26
	%28 = add i32 %27, 1
	%29 = icmp ne i32 %28, 0
	br i1 %29, label %30, label %34

30:
	%31 = load i32, i32* @a
	call void @putint(i32 %31)
	call void @putch(i32 10)
	%32 = load i32, i32* @b
	%33 = mul i32 %32, 2
	store i32 %33, i32* @b
	br label %36

34:
	%35 = call i32 @inc_a()
	br label %36

36:
	%37 = load i32, i32* %2
	%38 = sub i32 %37, 1
	store i32 %38, i32* %2
	br label %3

39:
	%40 = load i32, i32* @a
	call void @putint(i32 %40)
	call void @putch(i32 32)
	%41 = load i32, i32* @b
	call void @putint(i32 %41)
	call void @putch(i32 10)
	%42 = load i32, i32* @a
	store i32 %42, i32* %1
	br label %43

43:
	%44 = load i32, i32* %1
	ret i32 %44

}

