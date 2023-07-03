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

define dso_local i32 @QuickSort(i32* %0, i32 %1, i32 %2) {
3:
	%4 = alloca i32
	%5 = alloca i32*
	%6 = alloca i32
	%7 = alloca i32
	%8 = alloca i32
	%9 = alloca i32
	%10 = alloca i32
	%11 = alloca i32
	store i32* %0, i32** %5
	store i32 %1, i32* %6
	store i32 %2, i32* %7
	%12 = load i32, i32* %6
	%13 = load i32, i32* %7
	%14 = icmp slt i32 %12, %13
	br i1 %14, label %15, label %103

15:
	%16 = load i32, i32* %6
	store i32 %16, i32* %8
	%17 = load i32, i32* %7
	store i32 %17, i32* %9
	%18 = load i32, i32* %6
	%19 = load i32*, i32** %5
	%20 = getelementptr i32, i32* %19, i32 %18
	%21 = load i32, i32* %20
	store i32 %21, i32* %10
	br label %22

22:
	%23 = load i32, i32* %8
	%24 = load i32, i32* %9
	%25 = icmp slt i32 %23, %24
	br i1 %25, label %26, label %86

26:
	br label %27

27:
	%28 = load i32, i32* %8
	%29 = load i32, i32* %9
	%30 = icmp slt i32 %28, %29
	br i1 %30, label %31, label %42

31:
	%32 = load i32, i32* %9
	%33 = load i32*, i32** %5
	%34 = getelementptr i32, i32* %33, i32 %32
	%35 = load i32, i32* %34
	%36 = load i32, i32* %10
	%37 = sub i32 %36, 1
	%38 = icmp sgt i32 %35, %37
	br i1 %38, label %39, label %42

39:
	%40 = load i32, i32* %9
	%41 = sub i32 %40, 1
	store i32 %41, i32* %9
	br label %27

42:
	%43 = load i32, i32* %8
	%44 = load i32, i32* %9
	%45 = icmp slt i32 %43, %44
	br i1 %45, label %46, label %56

46:
	%47 = load i32, i32* %9
	%48 = load i32*, i32** %5
	%49 = getelementptr i32, i32* %48, i32 %47
	%50 = load i32, i32* %49
	%51 = load i32, i32* %8
	%52 = load i32*, i32** %5
	%53 = getelementptr i32, i32* %52, i32 %51
	store i32 %50, i32* %53
	%54 = load i32, i32* %8
	%55 = add i32 %54, 1
	store i32 %55, i32* %8
	br label %56

56:
	br label %57

57:
	%58 = load i32, i32* %8
	%59 = load i32, i32* %9
	%60 = icmp slt i32 %58, %59
	br i1 %60, label %61, label %71

61:
	%62 = load i32, i32* %8
	%63 = load i32*, i32** %5
	%64 = getelementptr i32, i32* %63, i32 %62
	%65 = load i32, i32* %64
	%66 = load i32, i32* %10
	%67 = icmp slt i32 %65, %66
	br i1 %67, label %68, label %71

68:
	%69 = load i32, i32* %8
	%70 = add i32 %69, 1
	store i32 %70, i32* %8
	br label %57

71:
	%72 = load i32, i32* %8
	%73 = load i32, i32* %9
	%74 = icmp slt i32 %72, %73
	br i1 %74, label %75, label %85

75:
	%76 = load i32, i32* %8
	%77 = load i32*, i32** %5
	%78 = getelementptr i32, i32* %77, i32 %76
	%79 = load i32, i32* %78
	%80 = load i32, i32* %9
	%81 = load i32*, i32** %5
	%82 = getelementptr i32, i32* %81, i32 %80
	store i32 %79, i32* %82
	%83 = load i32, i32* %9
	%84 = sub i32 %83, 1
	store i32 %84, i32* %9
	br label %85

85:
	br label %22

86:
	%87 = load i32, i32* %10
	%88 = load i32, i32* %8
	%89 = load i32*, i32** %5
	%90 = getelementptr i32, i32* %89, i32 %88
	store i32 %87, i32* %90
	%91 = load i32, i32* %8
	%92 = sub i32 %91, 1
	store i32 %92, i32* %11
	%93 = load i32*, i32** %5
	%94 = load i32, i32* %6
	%95 = load i32, i32* %11
	%96 = call i32 @QuickSort(i32* %93, i32 %94, i32 %95)
	store i32 %96, i32* %11
	%97 = load i32, i32* %8
	%98 = add i32 %97, 1
	store i32 %98, i32* %11
	%99 = load i32*, i32** %5
	%100 = load i32, i32* %11
	%101 = load i32, i32* %7
	%102 = call i32 @QuickSort(i32* %99, i32 %100, i32 %101)
	store i32 %102, i32* %11
	br label %103

103:
	store i32 0, i32* %4
	br label %104

104:
	%105 = load i32, i32* %4
	ret i32 %105

}

define dso_local i32 @main() {
0:
	%1 = alloca i32
	%2 = alloca [10 x i32]
	%3 = alloca i32
	%4 = alloca i32
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
	store i32 9, i32* %4
	%16 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 0
	%17 = load i32, i32* %3
	%18 = load i32, i32* %4
	%19 = call i32 @QuickSort(i32* %16, i32 %17, i32 %18)
	store i32 %19, i32* %3
	br label %20

20:
	%21 = load i32, i32* %3
	%22 = load i32, i32* @n
	%23 = icmp slt i32 %21, %22
	br i1 %23, label %24, label %32

24:
	%25 = load i32, i32* %3
	%26 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 %25
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

