
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
	%2 = alloca [100 x i32]
	%3 = alloca i32
	%4 = alloca i32
	store i32 0, i32* %3
	store i32 0, i32* %4
	br label %5

5:
	%6 = call i32 @getint()
	%7 = icmp ne i32 %6, 0
	br i1 %7, label %8, label %14

8:
	%9 = call i32 @getint()
	%10 = load i32, i32* %3
	%11 = getelementptr [100 x i32], [100 x i32]* %2, i32 0, i32 %10
	store i32 %9, i32* %11
	%12 = load i32, i32* %3
	%13 = add i32 %12, 1
	store i32 %13, i32* %3
	br label %5

14:
	br label %15

15:
	%16 = load i32, i32* %3
	%17 = icmp ne i32 %16, 0
	br i1 %17, label %18, label %26

18:
	%19 = load i32, i32* %3
	%20 = sub i32 %19, 1
	store i32 %20, i32* %3
	%21 = load i32, i32* %4
	%22 = load i32, i32* %3
	%23 = getelementptr [100 x i32], [100 x i32]* %2, i32 0, i32 %22
	%24 = load i32, i32* %23
	%25 = add i32 %21, %24
	store i32 %25, i32* %4
	br label %15

26:
	%27 = load i32, i32* %4
	%28 = srem i32 %27, 79
	store i32 %28, i32* %1
	br label %29

29:
	%30 = load i32, i32* %1
	ret i32 %30

}

