
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
	%7 = load i32, i32* %5
	%8 = mul i32 %7, 1
	%9 = sdiv i32 %8, 2
	%10 = load i32, i32* %2
	%11 = load i32, i32* %3
	%12 = sub i32 %10, %11
	%13 = add i32 %9, %12
	%14 = load i32, i32* %4
	%15 = add i32 %14, 3
	%16 = sub i32 0, %15
	%17 = srem i32 %16, 2
	%18 = sub i32 %13, %17
	store i32 %18, i32* %6
	%19 = load i32, i32* %6
	call void @putint(i32 %19)
	%20 = load i32, i32* %5
	%21 = srem i32 %20, 2
	%22 = add i32 %21, 67
	%23 = load i32, i32* %2
	%24 = load i32, i32* %3
	%25 = sub i32 %23, %24
	%26 = sub i32 0, %25
	%27 = add i32 %22, %26
	%28 = load i32, i32* %4
	%29 = add i32 %28, 2
	%30 = srem i32 %29, 2
	%31 = sub i32 0, %30
	%32 = sub i32 %27, %31
	store i32 %32, i32* %6
	%33 = load i32, i32* %6
	%34 = add i32 %33, 3
	store i32 %34, i32* %6
	%35 = load i32, i32* %6
	call void @putint(i32 %35)
	store i32 0, i32* %1
	br label %36

36:
	%37 = load i32, i32* %1
	ret i32 %37

}

