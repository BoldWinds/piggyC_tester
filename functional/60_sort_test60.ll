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

define dso_local i32 @counting_sort(i32* %0, i32* %1, i32 %2) {
3:
	%4 = alloca i32
	%5 = alloca i32*
	%6 = alloca i32*
	%7 = alloca i32
	%8 = alloca [10 x i32]
	%9 = alloca i32
	%10 = alloca i32
	%11 = alloca i32
	store i32* %0, i32** %5
	store i32* %1, i32** %6
	store i32 %2, i32* %7
	store i32 0, i32* %11
	store i32 0, i32* %9
	store i32 0, i32* %10
	br label %12

12:
	%13 = load i32, i32* %11
	%14 = icmp slt i32 %13, 10
	br i1 %14, label %15, label %20

15:
	%16 = load i32, i32* %11
	%17 = getelementptr [10 x i32], [10 x i32]* %8, i32 0, i32 %16
	store i32 0, i32* %17
	%18 = load i32, i32* %11
	%19 = add i32 %18, 1
	store i32 %19, i32* %11
	br label %12

20:
	br label %21

21:
	%22 = load i32, i32* %9
	%23 = load i32, i32* %7
	%24 = icmp slt i32 %22, %23
	br i1 %24, label %25, label %40

25:
	%26 = load i32, i32* %9
	%27 = load i32*, i32** %5
	%28 = getelementptr i32, i32* %27, i32 %26
	%29 = load i32, i32* %28
	%30 = getelementptr [10 x i32], [10 x i32]* %8, i32 0, i32 %29
	%31 = load i32, i32* %30
	%32 = add i32 %31, 1
	%33 = load i32, i32* %9
	%34 = load i32*, i32** %5
	%35 = getelementptr i32, i32* %34, i32 %33
	%36 = load i32, i32* %35
	%37 = getelementptr [10 x i32], [10 x i32]* %8, i32 0, i32 %36
	store i32 %32, i32* %37
	%38 = load i32, i32* %9
	%39 = add i32 %38, 1
	store i32 %39, i32* %9
	br label %21

40:
	store i32 1, i32* %11
	br label %41

41:
	%42 = load i32, i32* %11
	%43 = icmp slt i32 %42, 10
	br i1 %43, label %44, label %57

44:
	%45 = load i32, i32* %11
	%46 = getelementptr [10 x i32], [10 x i32]* %8, i32 0, i32 %45
	%47 = load i32, i32* %46
	%48 = load i32, i32* %11
	%49 = sub i32 %48, 1
	%50 = getelementptr [10 x i32], [10 x i32]* %8, i32 0, i32 %49
	%51 = load i32, i32* %50
	%52 = add i32 %47, %51
	%53 = load i32, i32* %11
	%54 = getelementptr [10 x i32], [10 x i32]* %8, i32 0, i32 %53
	store i32 %52, i32* %54
	%55 = load i32, i32* %11
	%56 = add i32 %55, 1
	store i32 %56, i32* %11
	br label %41

57:
	%58 = load i32, i32* %7
	store i32 %58, i32* %10
	br label %59

59:
	%60 = load i32, i32* %10
	%61 = icmp sgt i32 %60, 0
	br i1 %61, label %62, label %93

62:
	%63 = load i32, i32* %10
	%64 = sub i32 %63, 1
	%65 = load i32*, i32** %5
	%66 = getelementptr i32, i32* %65, i32 %64
	%67 = load i32, i32* %66
	%68 = getelementptr [10 x i32], [10 x i32]* %8, i32 0, i32 %67
	%69 = load i32, i32* %68
	%70 = sub i32 %69, 1
	%71 = load i32, i32* %10
	%72 = sub i32 %71, 1
	%73 = load i32*, i32** %5
	%74 = getelementptr i32, i32* %73, i32 %72
	%75 = load i32, i32* %74
	%76 = getelementptr [10 x i32], [10 x i32]* %8, i32 0, i32 %75
	store i32 %70, i32* %76
	%77 = load i32, i32* %10
	%78 = sub i32 %77, 1
	%79 = load i32*, i32** %5
	%80 = getelementptr i32, i32* %79, i32 %78
	%81 = load i32, i32* %80
	%82 = load i32, i32* %10
	%83 = sub i32 %82, 1
	%84 = load i32*, i32** %5
	%85 = getelementptr i32, i32* %84, i32 %83
	%86 = load i32, i32* %85
	%87 = getelementptr [10 x i32], [10 x i32]* %8, i32 0, i32 %86
	%88 = load i32, i32* %87
	%89 = load i32*, i32** %6
	%90 = getelementptr i32, i32* %89, i32 %88
	store i32 %81, i32* %90
	%91 = load i32, i32* %10
	%92 = sub i32 %91, 1
	store i32 %92, i32* %10
	br label %59

93:
	store i32 0, i32* %4
	br label %94

94:
	%95 = load i32, i32* %4
	ret i32 %95

}

define dso_local i32 @main() {
0:
	%1 = alloca i32
	%2 = alloca [10 x i32]
	%3 = alloca i32
	%4 = alloca [10 x i32]
	%5 = alloca i32
	store i32 10, i32* @n
	%6 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 0
	store i32 4, i32* %6
	%7 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 1
	store i32 3, i32* %7
	%8 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 2
	store i32 9, i32* %8
	%9 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 3
	store i32 2, i32* %9
	%10 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 4
	store i32 0, i32* %10
	%11 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 5
	store i32 1, i32* %11
	%12 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 6
	store i32 6, i32* %12
	%13 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 7
	store i32 5, i32* %13
	%14 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 8
	store i32 7, i32* %14
	%15 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 9
	store i32 8, i32* %15
	store i32 0, i32* %3
	%16 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 0
	%17 = getelementptr [10 x i32], [10 x i32]* %4, i32 0, i32 0
	%18 = load i32, i32* @n
	%19 = call i32 @counting_sort(i32* %16, i32* %17, i32 %18)
	store i32 %19, i32* %3
	br label %20

20:
	%21 = load i32, i32* %3
	%22 = load i32, i32* @n
	%23 = icmp slt i32 %21, %22
	br i1 %23, label %24, label %32

24:
	%25 = load i32, i32* %3
	%26 = getelementptr [10 x i32], [10 x i32]* %4, i32 0, i32 %25
	%27 = load i32, i32* %26
	store i32 %27, i32* %5
	%28 = load i32, i32* %5
	call void @putint(i32 %28)
	store i32 10, i32* %5
	%29 = load i32, i32* %5
	call void @putch(i32 %29)
	%30 = load i32, i32* %3
	%31 = add i32 %30, 1
	store i32 %31, i32* %3
	br label %20

32:
	store i32 0, i32* %1
	br label %33

33:
	%34 = load i32, i32* %1
	ret i32 %34

}

