@a = dso_local global i32 1
@b = dso_local global i32 0
@c = dso_local global i32 1
@d = dso_local global i32 2
@e = dso_local global i32 4

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
	store i32 0, i32* %2
	%3 = load i32, i32* @a
	%4 = load i32, i32* @b
	%5 = mul i32 %3, %4
	%6 = load i32, i32* @c
	%7 = sdiv i32 %5, %6
	%8 = load i32, i32* @e
	%9 = load i32, i32* @d
	%10 = add i32 %8, %9
	%11 = icmp eq i32 %7, %10
	br i1 %11, label %12, label %24

12:
	%13 = load i32, i32* @a
	%14 = load i32, i32* @a
	%15 = load i32, i32* @b
	%16 = add i32 %14, %15
	%17 = mul i32 %13, %16
	%18 = load i32, i32* @c
	%19 = add i32 %17, %18
	%20 = load i32, i32* @d
	%21 = load i32, i32* @e
	%22 = add i32 %20, %21
	%23 = icmp sle i32 %19, %22
	br i1 %23, label %36, label %24

24:
	%25 = load i32, i32* @a
	%26 = load i32, i32* @b
	%27 = load i32, i32* @c
	%28 = mul i32 %26, %27
	%29 = sub i32 %25, %28
	%30 = load i32, i32* @d
	%31 = load i32, i32* @a
	%32 = load i32, i32* @c
	%33 = sdiv i32 %31, %32
	%34 = sub i32 %30, %33
	%35 = icmp eq i32 %29, %34
	br i1 %35, label %36, label %37

36:
	store i32 1, i32* %2
	br label %37

37:
	%38 = load i32, i32* %2
	call void @putint(i32 %38)
	%39 = load i32, i32* %2
	store i32 %39, i32* %1
	br label %40

40:
	%41 = load i32, i32* %1
	ret i32 %41

}

