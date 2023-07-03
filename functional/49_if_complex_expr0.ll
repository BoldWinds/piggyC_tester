
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
	%6 = alloca i32
	store i32 5, i32* %2
	store i32 5, i32* %3
	store i32 1, i32* %4
	store i32 -2, i32* %5
	store i32 2, i32* %6
	%7 = load i32, i32* %5
	%8 = mul i32 %7, 1
	%9 = sdiv i32 %8, 2
	%10 = icmp slt i32 %9, 0
	br i1 %10, label %21, label %11

11:
	%12 = load i32, i32* %2
	%13 = load i32, i32* %3
	%14 = sub i32 %12, %13
	%15 = icmp ne i32 %14, 0
	br i1 %15, label %16, label %23

16:
	%17 = load i32, i32* %4
	%18 = add i32 %17, 3
	%19 = srem i32 %18, 2
	%20 = icmp ne i32 %19, 0
	br i1 %20, label %21, label %23

21:
	%22 = load i32, i32* %6
	call void @putint(i32 %22)
	br label %23

23:
	%24 = load i32, i32* %5
	%25 = srem i32 %24, 2
	%26 = add i32 %25, 67
	%27 = icmp slt i32 %26, 0
	br i1 %27, label %38, label %28

28:
	%29 = load i32, i32* %2
	%30 = load i32, i32* %3
	%31 = sub i32 %29, %30
	%32 = icmp ne i32 %31, 0
	br i1 %32, label %33, label %40

33:
	%34 = load i32, i32* %4
	%35 = add i32 %34, 2
	%36 = srem i32 %35, 2
	%37 = icmp ne i32 %36, 0
	br i1 %37, label %38, label %40

38:
	store i32 4, i32* %6
	%39 = load i32, i32* %6
	call void @putint(i32 %39)
	br label %40

40:
	store i32 0, i32* %1
	br label %41

41:
	%42 = load i32, i32* %1
	ret i32 %42

}

