
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

define dso_local i32 @exgcd(i32 %0, i32 %1, i32* %2, i32* %3) {
4:
	%5 = alloca i32
	%6 = alloca i32
	%7 = alloca i32
	%8 = alloca i32*
	%9 = alloca i32*
	%10 = alloca i32
	%11 = alloca i32
	store i32 %0, i32* %6
	store i32 %1, i32* %7
	store i32* %2, i32** %8
	store i32* %3, i32** %9
	%12 = load i32, i32* %7
	%13 = icmp eq i32 %12, 0
	br i1 %13, label %14, label %20

14:
	%15 = load i32*, i32** %8
	%16 = getelementptr i32, i32* %15, i32 0
	store i32 1, i32* %16
	%17 = load i32*, i32** %9
	%18 = getelementptr i32, i32* %17, i32 0
	store i32 0, i32* %18
	%19 = load i32, i32* %6
	store i32 %19, i32* %5
	br label %49

20:
	%21 = load i32, i32* %7
	%22 = load i32, i32* %6
	%23 = load i32, i32* %7
	%24 = srem i32 %22, %23
	%25 = load i32*, i32** %8
	%26 = load i32*, i32** %9
	%27 = call i32 @exgcd(i32 %21, i32 %24, i32* %25, i32* %26)
	store i32 %27, i32* %10
	%28 = load i32*, i32** %8
	%29 = getelementptr i32, i32* %28, i32 0
	%30 = load i32, i32* %29
	store i32 %30, i32* %11
	%31 = load i32*, i32** %9
	%32 = getelementptr i32, i32* %31, i32 0
	%33 = load i32, i32* %32
	%34 = load i32*, i32** %8
	%35 = getelementptr i32, i32* %34, i32 0
	store i32 %33, i32* %35
	%36 = load i32, i32* %11
	%37 = load i32, i32* %6
	%38 = load i32, i32* %7
	%39 = sdiv i32 %37, %38
	%40 = load i32*, i32** %9
	%41 = getelementptr i32, i32* %40, i32 0
	%42 = load i32, i32* %41
	%43 = mul i32 %39, %42
	%44 = sub i32 %36, %43
	%45 = load i32*, i32** %9
	%46 = getelementptr i32, i32* %45, i32 0
	store i32 %44, i32* %46
	%47 = load i32, i32* %10
	store i32 %47, i32* %5
	br label %49

48:
	br label %49

49:
	%50 = load i32, i32* %5
	ret i32 %50

}

define dso_local i32 @main() {
0:
	%1 = alloca i32
	%2 = alloca i32
	%3 = alloca i32
	%4 = alloca [1 x i32]
	%5 = alloca [1 x i32]
	store i32 7, i32* %2
	store i32 15, i32* %3
	%6 = getelementptr [1 x i32], [1 x i32]* %4, i32 0, i32 0
	store i32 1, i32* %6
	%7 = getelementptr [1 x i32], [1 x i32]* %5, i32 0, i32 0
	store i32 1, i32* %7
	%8 = load i32, i32* %2
	%9 = load i32, i32* %3
	%10 = getelementptr [1 x i32], [1 x i32]* %4, i32 0, i32 0
	%11 = getelementptr [1 x i32], [1 x i32]* %5, i32 0, i32 0
	%12 = call i32 @exgcd(i32 %8, i32 %9, i32* %10, i32* %11)
	%13 = getelementptr [1 x i32], [1 x i32]* %4, i32 0, i32 0
	%14 = load i32, i32* %13
	%15 = load i32, i32* %3
	%16 = srem i32 %14, %15
	%17 = load i32, i32* %3
	%18 = add i32 %16, %17
	%19 = load i32, i32* %3
	%20 = srem i32 %18, %19
	%21 = getelementptr [1 x i32], [1 x i32]* %4, i32 0, i32 0
	store i32 %20, i32* %21
	%22 = getelementptr [1 x i32], [1 x i32]* %4, i32 0, i32 0
	%23 = load i32, i32* %22
	call void @putint(i32 %23)
	store i32 0, i32* %1
	br label %24

24:
	%25 = load i32, i32* %1
	ret i32 %25

}

