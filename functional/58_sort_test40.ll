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

define dso_local i32 @select_sort(i32* %0, i32 %1) {
2:
	%3 = alloca i32
	%4 = alloca i32*
	%5 = alloca i32
	%6 = alloca i32
	%7 = alloca i32
	%8 = alloca i32
	%9 = alloca i32
	store i32* %0, i32** %4
	store i32 %1, i32* %5
	store i32 0, i32* %6
	br label %10

10:
	%11 = load i32, i32* %6
	%12 = load i32, i32* %5
	%13 = sub i32 %12, 1
	%14 = icmp slt i32 %11, %13
	br i1 %14, label %15, label %61

15:
	%16 = load i32, i32* %6
	store i32 %16, i32* %8
	%17 = load i32, i32* %6
	%18 = add i32 %17, 1
	store i32 %18, i32* %7
	br label %19

19:
	%20 = load i32, i32* %7
	%21 = load i32, i32* %5
	%22 = icmp slt i32 %20, %21
	br i1 %22, label %23, label %38

23:
	%24 = load i32, i32* %8
	%25 = load i32*, i32** %4
	%26 = getelementptr i32, i32* %25, i32 %24
	%27 = load i32, i32* %26
	%28 = load i32, i32* %7
	%29 = load i32*, i32** %4
	%30 = getelementptr i32, i32* %29, i32 %28
	%31 = load i32, i32* %30
	%32 = icmp sgt i32 %27, %31
	br i1 %32, label %33, label %35

33:
	%34 = load i32, i32* %7
	store i32 %34, i32* %8
	br label %35

35:
	%36 = load i32, i32* %7
	%37 = add i32 %36, 1
	store i32 %37, i32* %7
	br label %19

38:
	%39 = load i32, i32* %8
	%40 = load i32, i32* %6
	%41 = icmp ne i32 %39, %40
	br i1 %41, label %42, label %58

42:
	%43 = load i32, i32* %8
	%44 = load i32*, i32** %4
	%45 = getelementptr i32, i32* %44, i32 %43
	%46 = load i32, i32* %45
	store i32 %46, i32* %9
	%47 = load i32, i32* %6
	%48 = load i32*, i32** %4
	%49 = getelementptr i32, i32* %48, i32 %47
	%50 = load i32, i32* %49
	%51 = load i32, i32* %8
	%52 = load i32*, i32** %4
	%53 = getelementptr i32, i32* %52, i32 %51
	store i32 %50, i32* %53
	%54 = load i32, i32* %9
	%55 = load i32, i32* %6
	%56 = load i32*, i32** %4
	%57 = getelementptr i32, i32* %56, i32 %55
	store i32 %54, i32* %57
	br label %58

58:
	%59 = load i32, i32* %6
	%60 = add i32 %59, 1
	store i32 %60, i32* %6
	br label %10

61:
	store i32 0, i32* %3
	br label %62

62:
	%63 = load i32, i32* %3
	ret i32 %63

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
	store i32 0, i32* %3
	%15 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 0
	%16 = load i32, i32* @n
	%17 = call i32 @select_sort(i32* %15, i32 %16)
	store i32 %17, i32* %3
	br label %18

18:
	%19 = load i32, i32* %3
	%20 = load i32, i32* @n
	%21 = icmp slt i32 %19, %20
	br i1 %21, label %22, label %30

22:
	%23 = load i32, i32* %3
	%24 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 %23
	%25 = load i32, i32* %24
	store i32 %25, i32* %4
	%26 = load i32, i32* %4
	call void @putint(i32 %26)
	store i32 10, i32* %4
	%27 = load i32, i32* %4
	call void @putch(i32 %27)
	%28 = load i32, i32* %3
	%29 = add i32 %28, 1
	store i32 %29, i32* %3
	br label %18

30:
	store i32 0, i32* %1
	br label %31

31:
	%32 = load i32, i32* %1
	ret i32 %32

}

