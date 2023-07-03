@n = dso_local global i32 0

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

define dso_local i32 @insertsort(i32* %0) {
1:
	%2 = alloca i32
	%3 = alloca i32*
	%4 = alloca i32
	%5 = alloca i32
	%6 = alloca i32
	store i32* %0, i32** %3
	store i32 1, i32* %4
	br label %7

7:
	%8 = load i32, i32* %4
	%9 = load i32, i32* @n
	%10 = icmp slt i32 %8, %9
	br i1 %10, label %11, label %47

11:
	%12 = load i32, i32* %4
	%13 = load i32*, i32** %3
	%14 = getelementptr i32, i32* %13, i32 %12
	%15 = load i32, i32* %14
	store i32 %15, i32* %5
	%16 = load i32, i32* %4
	%17 = sub i32 %16, 1
	store i32 %17, i32* %6
	br label %18

18:
	%19 = load i32, i32* %6
	%20 = icmp sgt i32 %19, -1
	br i1 %20, label %21, label %39

21:
	%22 = load i32, i32* %5
	%23 = load i32, i32* %6
	%24 = load i32*, i32** %3
	%25 = getelementptr i32, i32* %24, i32 %23
	%26 = load i32, i32* %25
	%27 = icmp slt i32 %22, %26
	br i1 %27, label %28, label %39

28:
	%29 = load i32, i32* %6
	%30 = load i32*, i32** %3
	%31 = getelementptr i32, i32* %30, i32 %29
	%32 = load i32, i32* %31
	%33 = load i32, i32* %6
	%34 = add i32 %33, 1
	%35 = load i32*, i32** %3
	%36 = getelementptr i32, i32* %35, i32 %34
	store i32 %32, i32* %36
	%37 = load i32, i32* %6
	%38 = sub i32 %37, 1
	store i32 %38, i32* %6
	br label %18

39:
	%40 = load i32, i32* %5
	%41 = load i32, i32* %6
	%42 = add i32 %41, 1
	%43 = load i32*, i32** %3
	%44 = getelementptr i32, i32* %43, i32 %42
	store i32 %40, i32* %44
	%45 = load i32, i32* %4
	%46 = add i32 %45, 1
	store i32 %46, i32* %4
	br label %7

47:
	store i32 0, i32* %2
	br label %48

48:
	%49 = load i32, i32* %2
	ret i32 %49

}

define dso_local i32 @main() {
0:
	%1 = alloca i32
	%2 = alloca [10 x i32]
	%3 = alloca i32
	%4 = alloca i32
	store i32 10, i32* @n
	%5 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 0
	store i32 4, i32* %5
	%6 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 1
	store i32 3, i32* %6
	%7 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 2
	store i32 9, i32* %7
	%8 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 3
	store i32 2, i32* %8
	%9 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 4
	store i32 0, i32* %9
	%10 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 5
	store i32 1, i32* %10
	%11 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 6
	store i32 6, i32* %11
	%12 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 7
	store i32 5, i32* %12
	%13 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 8
	store i32 7, i32* %13
	%14 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 9
	store i32 8, i32* %14
	%15 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 0
	%16 = call i32 @insertsort(i32* %15)
	store i32 %16, i32* %3
	br label %17

17:
	%18 = load i32, i32* %3
	%19 = load i32, i32* @n
	%20 = icmp slt i32 %18, %19
	br i1 %20, label %21, label %29

21:
	%22 = load i32, i32* %3
	%23 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 %22
	%24 = load i32, i32* %23
	store i32 %24, i32* %4
	%25 = load i32, i32* %4
	call void @putint(i32 %25)
	store i32 10, i32* %4
	%26 = load i32, i32* %4
	call void @putch(i32 %26)
	%27 = load i32, i32* %3
	%28 = add i32 %27, 1
	store i32 %28, i32* %3
	br label %17

29:
	store i32 0, i32* %1
	br label %30

30:
	%31 = load i32, i32* %1
	ret i32 %31

}

