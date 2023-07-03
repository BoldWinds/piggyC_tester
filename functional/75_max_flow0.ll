@INF = dso_local constant i32 1879048192
@size = dso_local global [10 x i32] zeroinitializer
@to = dso_local global [10 x [10 x i32]] zeroinitializer
@cap = dso_local global [10 x [10 x i32]] zeroinitializer
@rev = dso_local global [10 x [10 x i32]] zeroinitializer
@used = dso_local global [10 x i32] zeroinitializer

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

define dso_local void @my_memset(i32* %0, i32 %1, i32 %2) {
3:
	%4 = alloca i32*
	%5 = alloca i32
	%6 = alloca i32
	%7 = alloca i32
	store i32* %0, i32** %4
	store i32 %1, i32* %5
	store i32 %2, i32* %6
	store i32 0, i32* %7
	br label %8

8:
	%9 = load i32, i32* %7
	%10 = load i32, i32* %6
	%11 = icmp slt i32 %9, %10
	br i1 %11, label %12, label %19

12:
	%13 = load i32, i32* %5
	%14 = load i32, i32* %7
	%15 = load i32*, i32** %4
	%16 = getelementptr i32, i32* %15, i32 %14
	store i32 %13, i32* %16
	%17 = load i32, i32* %7
	%18 = add i32 %17, 1
	store i32 %18, i32* %7
	br label %8

19:
	br label %20

20:
	ret void

}

define dso_local void @add_node(i32 %0, i32 %1, i32 %2) {
3:
	%4 = alloca i32
	%5 = alloca i32
	%6 = alloca i32
	store i32 %0, i32* %4
	store i32 %1, i32* %5
	store i32 %2, i32* %6
	%7 = load i32, i32* %5
	%8 = load i32, i32* %4
	%9 = load i32, i32* %4
	%10 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 %9
	%11 = load i32, i32* %10
	%12 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @to, i32 0, i32 %8, i32 %11
	store i32 %7, i32* %12
	%13 = load i32, i32* %6
	%14 = load i32, i32* %4
	%15 = load i32, i32* %4
	%16 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 %15
	%17 = load i32, i32* %16
	%18 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %14, i32 %17
	store i32 %13, i32* %18
	%19 = load i32, i32* %5
	%20 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 %19
	%21 = load i32, i32* %20
	%22 = load i32, i32* %4
	%23 = load i32, i32* %4
	%24 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 %23
	%25 = load i32, i32* %24
	%26 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @rev, i32 0, i32 %22, i32 %25
	store i32 %21, i32* %26
	%27 = load i32, i32* %4
	%28 = load i32, i32* %5
	%29 = load i32, i32* %5
	%30 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 %29
	%31 = load i32, i32* %30
	%32 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @to, i32 0, i32 %28, i32 %31
	store i32 %27, i32* %32
	%33 = load i32, i32* %5
	%34 = load i32, i32* %5
	%35 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 %34
	%36 = load i32, i32* %35
	%37 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %33, i32 %36
	store i32 0, i32* %37
	%38 = load i32, i32* %4
	%39 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 %38
	%40 = load i32, i32* %39
	%41 = load i32, i32* %5
	%42 = load i32, i32* %5
	%43 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 %42
	%44 = load i32, i32* %43
	%45 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @rev, i32 0, i32 %41, i32 %44
	store i32 %40, i32* %45
	%46 = load i32, i32* %4
	%47 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 %46
	%48 = load i32, i32* %47
	%49 = add i32 %48, 1
	%50 = load i32, i32* %4
	%51 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 %50
	store i32 %49, i32* %51
	%52 = load i32, i32* %5
	%53 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 %52
	%54 = load i32, i32* %53
	%55 = add i32 %54, 1
	%56 = load i32, i32* %5
	%57 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 %56
	store i32 %55, i32* %57
	br label %58

58:
	ret void

}

define dso_local i32 @dfs(i32 %0, i32 %1, i32 %2) {
3:
	%4 = alloca i32
	%5 = alloca i32
	%6 = alloca i32
	%7 = alloca i32
	%8 = alloca i32
	%9 = alloca i32
	%10 = alloca i32
	store i32 %0, i32* %5
	store i32 %1, i32* %6
	store i32 %2, i32* %7
	%11 = load i32, i32* %5
	%12 = load i32, i32* %6
	%13 = icmp eq i32 %11, %12
	br i1 %13, label %14, label %16

14:
	%15 = load i32, i32* %7
	store i32 %15, i32* %4
	br label %105

16:
	%17 = load i32, i32* %5
	%18 = getelementptr [10 x i32], [10 x i32]* @used, i32 0, i32 %17
	store i32 1, i32* %18
	store i32 0, i32* %8
	br label %19

19:
	%20 = load i32, i32* %8
	%21 = load i32, i32* %5
	%22 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 %21
	%23 = load i32, i32* %22
	%24 = icmp slt i32 %20, %23
	br i1 %24, label %25, label %104

25:
	%26 = load i32, i32* %5
	%27 = load i32, i32* %8
	%28 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @to, i32 0, i32 %26, i32 %27
	%29 = load i32, i32* %28
	%30 = getelementptr [10 x i32], [10 x i32]* @used, i32 0, i32 %29
	%31 = load i32, i32* %30
	%32 = icmp ne i32 %31, 0
	br i1 %32, label %33, label %36

33:
	%34 = load i32, i32* %8
	%35 = add i32 %34, 1
	store i32 %35, i32* %8
	br label %19

36:
	%37 = load i32, i32* %5
	%38 = load i32, i32* %8
	%39 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %37, i32 %38
	%40 = load i32, i32* %39
	%41 = icmp sle i32 %40, 0
	br i1 %41, label %42, label %45

42:
	%43 = load i32, i32* %8
	%44 = add i32 %43, 1
	store i32 %44, i32* %8
	br label %19

45:
	%46 = load i32, i32* %7
	%47 = load i32, i32* %5
	%48 = load i32, i32* %8
	%49 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %47, i32 %48
	%50 = load i32, i32* %49
	%51 = icmp slt i32 %46, %50
	br i1 %51, label %52, label %54

52:
	%53 = load i32, i32* %7
	store i32 %53, i32* %9
	br label %59

54:
	%55 = load i32, i32* %5
	%56 = load i32, i32* %8
	%57 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %55, i32 %56
	%58 = load i32, i32* %57
	store i32 %58, i32* %9
	br label %59

59:
	%60 = load i32, i32* %5
	%61 = load i32, i32* %8
	%62 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @to, i32 0, i32 %60, i32 %61
	%63 = load i32, i32* %62
	%64 = load i32, i32* %6
	%65 = load i32, i32* %9
	%66 = call i32 @dfs(i32 %63, i32 %64, i32 %65)
	store i32 %66, i32* %10
	%67 = load i32, i32* %10
	%68 = icmp sgt i32 %67, 0
	br i1 %68, label %69, label %101

69:
	%70 = load i32, i32* %5
	%71 = load i32, i32* %8
	%72 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %70, i32 %71
	%73 = load i32, i32* %72
	%74 = load i32, i32* %10
	%75 = sub i32 %73, %74
	%76 = load i32, i32* %5
	%77 = load i32, i32* %8
	%78 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %76, i32 %77
	store i32 %75, i32* %78
	%79 = load i32, i32* %5
	%80 = load i32, i32* %8
	%81 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @to, i32 0, i32 %79, i32 %80
	%82 = load i32, i32* %81
	%83 = load i32, i32* %5
	%84 = load i32, i32* %8
	%85 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @rev, i32 0, i32 %83, i32 %84
	%86 = load i32, i32* %85
	%87 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %82, i32 %86
	%88 = load i32, i32* %87
	%89 = load i32, i32* %10
	%90 = add i32 %88, %89
	%91 = load i32, i32* %5
	%92 = load i32, i32* %8
	%93 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @to, i32 0, i32 %91, i32 %92
	%94 = load i32, i32* %93
	%95 = load i32, i32* %5
	%96 = load i32, i32* %8
	%97 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @rev, i32 0, i32 %95, i32 %96
	%98 = load i32, i32* %97
	%99 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %94, i32 %98
	store i32 %90, i32* %99
	%100 = load i32, i32* %10
	store i32 %100, i32* %4
	br label %105

101:
	%102 = load i32, i32* %8
	%103 = add i32 %102, 1
	store i32 %103, i32* %8
	br label %19

104:
	store i32 0, i32* %4
	br label %105

105:
	%106 = load i32, i32* %4
	ret i32 %106

}

define dso_local i32 @max_flow(i32 %0, i32 %1) {
2:
	%3 = alloca i32
	%4 = alloca i32
	%5 = alloca i32
	%6 = alloca i32
	%7 = alloca i32
	store i32 %0, i32* %4
	store i32 %1, i32* %5
	store i32 0, i32* %6
	br label %8

8:
	%9 = icmp ne i32 1, 0
	br i1 %9, label %10, label %23

10:
	%11 = getelementptr [10 x i32], [10 x i32]* @used, i32 0, i32 0
	call void @my_memset(i32* %11, i32 0, i32 10)
	%12 = load i32, i32* %4
	%13 = load i32, i32* %5
	%14 = call i32 @dfs(i32 %12, i32 %13, i32 1879048192)
	store i32 %14, i32* %7
	%15 = load i32, i32* %7
	%16 = icmp eq i32 %15, 0
	br i1 %16, label %17, label %19

17:
	%18 = load i32, i32* %6
	store i32 %18, i32* %3
	br label %24

19:
	%20 = load i32, i32* %6
	%21 = load i32, i32* %7
	%22 = add i32 %20, %21
	store i32 %22, i32* %6
	br label %8

23:
	br label %24

24:
	%25 = load i32, i32* %3
	ret i32 %25

}

define dso_local i32 @main() {
0:
	%1 = alloca i32
	%2 = alloca i32
	%3 = alloca i32
	%4 = alloca i32
	%5 = alloca i32
	%6 = alloca i32
	%7 = call i32 @getint()
	store i32 %7, i32* %2
	%8 = call i32 @getint()
	store i32 %8, i32* %3
	%9 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 0
	call void @my_memset(i32* %9, i32 0, i32 10)
	br label %10

10:
	%11 = load i32, i32* %3
	%12 = icmp sgt i32 %11, 0
	br i1 %12, label %13, label %22

13:
	%14 = call i32 @getint()
	store i32 %14, i32* %4
	%15 = call i32 @getint()
	store i32 %15, i32* %5
	%16 = call i32 @getint()
	store i32 %16, i32* %6
	%17 = load i32, i32* %4
	%18 = load i32, i32* %5
	%19 = load i32, i32* %6
	call void @add_node(i32 %17, i32 %18, i32 %19)
	%20 = load i32, i32* %3
	%21 = sub i32 %20, 1
	store i32 %21, i32* %3
	br label %10

22:
	%23 = load i32, i32* %2
	%24 = call i32 @max_flow(i32 1, i32 %23)
	call void @putint(i32 %24)
	call void @putch(i32 10)
	store i32 0, i32* %1
	br label %25

25:
	%26 = load i32, i32* %1
	ret i32 %26

}

