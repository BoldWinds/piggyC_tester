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

define dso_local i32 @bubblesort(i32* %0) {
1:
	%2 = alloca i32
	%3 = alloca i32*
	%4 = alloca i32
	%5 = alloca i32
	%6 = alloca i32
	store i32* %0, i32** %3
	store i32 0, i32* %4
	br label %7

7:
	%8 = load i32, i32* %4
	%9 = load i32, i32* @n
	%10 = sub i32 %9, 1
	%11 = icmp slt i32 %8, %10
	br i1 %11, label %12, label %55

12:
	store i32 0, i32* %5
	br label %13

13:
	%14 = load i32, i32* %5
	%15 = load i32, i32* @n
	%16 = load i32, i32* %4
	%17 = sub i32 %15, %16
	%18 = sub i32 %17, 1
	%19 = icmp slt i32 %14, %18
	br i1 %19, label %20, label %52

20:
	%21 = load i32, i32* %5
	%22 = load i32*, i32** %3
	%23 = getelementptr i32, i32* %22, i32 %21
	%24 = load i32, i32* %23
	%25 = load i32, i32* %5
	%26 = add i32 %25, 1
	%27 = load i32*, i32** %3
	%28 = getelementptr i32, i32* %27, i32 %26
	%29 = load i32, i32* %28
	%30 = icmp sgt i32 %24, %29
	br i1 %30, label %31, label %49

31:
	%32 = load i32, i32* %5
	%33 = add i32 %32, 1
	%34 = load i32*, i32** %3
	%35 = getelementptr i32, i32* %34, i32 %33
	%36 = load i32, i32* %35
	store i32 %36, i32* %6
	%37 = load i32, i32* %5
	%38 = load i32*, i32** %3
	%39 = getelementptr i32, i32* %38, i32 %37
	%40 = load i32, i32* %39
	%41 = load i32, i32* %5
	%42 = add i32 %41, 1
	%43 = load i32*, i32** %3
	%44 = getelementptr i32, i32* %43, i32 %42
	store i32 %40, i32* %44
	%45 = load i32, i32* %6
	%46 = load i32, i32* %5
	%47 = load i32*, i32** %3
	%48 = getelementptr i32, i32* %47, i32 %46
	store i32 %45, i32* %48
	br label %49

49:
	%50 = load i32, i32* %5
	%51 = add i32 %50, 1
	store i32 %51, i32* %5
	br label %13

52:
	%53 = load i32, i32* %4
	%54 = add i32 %53, 1
	store i32 %54, i32* %4
	br label %7

55:
	store i32 0, i32* %2
	br label %56

56:
	%57 = load i32, i32* %2
	ret i32 %57

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
	%16 = call i32 @bubblesort(i32* %15)
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

