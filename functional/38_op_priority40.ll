@a = dso_local global i32 0
@b = dso_local global i32 0
@c = dso_local global i32 0
@d = dso_local global i32 0
@e = dso_local global i32 0

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
	%3 = call i32 @getint()
	store i32 %3, i32* @a
	%4 = call i32 @getint()
	store i32 %4, i32* @b
	%5 = call i32 @getint()
	store i32 %5, i32* @c
	%6 = call i32 @getint()
	store i32 %6, i32* @d
	%7 = call i32 @getint()
	store i32 %7, i32* @e
	store i32 0, i32* %2
	%8 = load i32, i32* @a
	%9 = load i32, i32* @b
	%10 = load i32, i32* @c
	%11 = mul i32 %9, %10
	%12 = sub i32 %8, %11
	%13 = load i32, i32* @d
	%14 = load i32, i32* @a
	%15 = load i32, i32* @c
	%16 = sdiv i32 %14, %15
	%17 = sub i32 %13, %16
	%18 = icmp ne i32 %12, %17
	br i1 %18, label %39, label %19

19:
	%20 = load i32, i32* @a
	%21 = load i32, i32* @b
	%22 = mul i32 %20, %21
	%23 = load i32, i32* @c
	%24 = sdiv i32 %22, %23
	%25 = load i32, i32* @e
	%26 = load i32, i32* @d
	%27 = add i32 %25, %26
	%28 = icmp eq i32 %24, %27
	br i1 %28, label %39, label %29

29:
	%30 = load i32, i32* @a
	%31 = load i32, i32* @b
	%32 = add i32 %30, %31
	%33 = load i32, i32* @c
	%34 = add i32 %32, %33
	%35 = load i32, i32* @d
	%36 = load i32, i32* @e
	%37 = add i32 %35, %36
	%38 = icmp eq i32 %34, %37
	br i1 %38, label %39, label %40

39:
	store i32 1, i32* %2
	br label %40

40:
	%41 = load i32, i32* %2
	store i32 %41, i32* %1
	br label %42

42:
	%43 = load i32, i32* %1
	ret i32 %43

}

