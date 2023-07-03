@INF = dso_local constant i32 65535
@e = dso_local global [16 x [16 x i32]] zeroinitializer
@book = dso_local global [16 x i32] zeroinitializer
@dis = dso_local global [16 x i32] zeroinitializer
@n = dso_local global i32 0
@m = dso_local global i32 0
@v1 = dso_local global i32 0
@v2 = dso_local global i32 0
@w = dso_local global i32 0

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

define dso_local void @Dijkstra() {
0:
	%1 = alloca i32
	%2 = alloca i32
	%3 = alloca i32
	%4 = alloca i32
	%5 = alloca i32
	%6 = alloca i32
	store i32 1, i32* %1
	br label %7

7:
	%8 = load i32, i32* %1
	%9 = load i32, i32* @n
	%10 = icmp sle i32 %8, %9
	br i1 %10, label %11, label %21

11:
	%12 = load i32, i32* %1
	%13 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* @e, i32 0, i32 1, i32 %12
	%14 = load i32, i32* %13
	%15 = load i32, i32* %1
	%16 = getelementptr [16 x i32], [16 x i32]* @dis, i32 0, i32 %15
	store i32 %14, i32* %16
	%17 = load i32, i32* %1
	%18 = getelementptr [16 x i32], [16 x i32]* @book, i32 0, i32 %17
	store i32 0, i32* %18
	%19 = load i32, i32* %1
	%20 = add i32 %19, 1
	store i32 %20, i32* %1
	br label %7

21:
	%22 = getelementptr [16 x i32], [16 x i32]* @book, i32 0, i32 1
	store i32 1, i32* %22
	store i32 1, i32* %1
	br label %23

23:
	%24 = load i32, i32* %1
	%25 = load i32, i32* @n
	%26 = sub i32 %25, 1
	%27 = icmp sle i32 %24, %26
	br i1 %27, label %28, label %96

28:
	store i32 65535, i32* %3
	store i32 0, i32* %4
	store i32 1, i32* %5
	br label %29

29:
	%30 = load i32, i32* %5
	%31 = load i32, i32* @n
	%32 = icmp sle i32 %30, %31
	br i1 %32, label %33, label %52

33:
	%34 = load i32, i32* %3
	%35 = load i32, i32* %5
	%36 = getelementptr [16 x i32], [16 x i32]* @dis, i32 0, i32 %35
	%37 = load i32, i32* %36
	%38 = icmp sgt i32 %34, %37
	br i1 %38, label %39, label %49

39:
	%40 = load i32, i32* %5
	%41 = getelementptr [16 x i32], [16 x i32]* @book, i32 0, i32 %40
	%42 = load i32, i32* %41
	%43 = icmp eq i32 %42, 0
	br i1 %43, label %44, label %49

44:
	%45 = load i32, i32* %5
	%46 = getelementptr [16 x i32], [16 x i32]* @dis, i32 0, i32 %45
	%47 = load i32, i32* %46
	store i32 %47, i32* %3
	%48 = load i32, i32* %5
	store i32 %48, i32* %4
	br label %49

49:
	%50 = load i32, i32* %5
	%51 = add i32 %50, 1
	store i32 %51, i32* %5
	br label %29

52:
	%53 = load i32, i32* %4
	%54 = getelementptr [16 x i32], [16 x i32]* @book, i32 0, i32 %53
	store i32 1, i32* %54
	store i32 1, i32* %6
	br label %55

55:
	%56 = load i32, i32* %6
	%57 = load i32, i32* @n
	%58 = icmp sle i32 %56, %57
	br i1 %58, label %59, label %93

59:
	%60 = load i32, i32* %4
	%61 = load i32, i32* %6
	%62 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* @e, i32 0, i32 %60, i32 %61
	%63 = load i32, i32* %62
	%64 = icmp slt i32 %63, 65535
	br i1 %64, label %65, label %90

65:
	%66 = load i32, i32* %6
	%67 = getelementptr [16 x i32], [16 x i32]* @dis, i32 0, i32 %66
	%68 = load i32, i32* %67
	%69 = load i32, i32* %4
	%70 = getelementptr [16 x i32], [16 x i32]* @dis, i32 0, i32 %69
	%71 = load i32, i32* %70
	%72 = load i32, i32* %4
	%73 = load i32, i32* %6
	%74 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* @e, i32 0, i32 %72, i32 %73
	%75 = load i32, i32* %74
	%76 = add i32 %71, %75
	%77 = icmp sgt i32 %68, %76
	br i1 %77, label %78, label %89

78:
	%79 = load i32, i32* %4
	%80 = getelementptr [16 x i32], [16 x i32]* @dis, i32 0, i32 %79
	%81 = load i32, i32* %80
	%82 = load i32, i32* %4
	%83 = load i32, i32* %6
	%84 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* @e, i32 0, i32 %82, i32 %83
	%85 = load i32, i32* %84
	%86 = add i32 %81, %85
	%87 = load i32, i32* %6
	%88 = getelementptr [16 x i32], [16 x i32]* @dis, i32 0, i32 %87
	store i32 %86, i32* %88
	br label %89

89:
	br label %90

90:
	%91 = load i32, i32* %6
	%92 = add i32 %91, 1
	store i32 %92, i32* %6
	br label %55

93:
	%94 = load i32, i32* %1
	%95 = add i32 %94, 1
	store i32 %95, i32* %1
	br label %23

96:
	br label %97

97:
	ret void

}

define dso_local i32 @main() {
0:
	%1 = alloca i32
	%2 = alloca i32
	%3 = alloca i32
	%4 = alloca i32
	%5 = alloca i32
	%6 = call i32 @getint()
	store i32 %6, i32* @n
	%7 = call i32 @getint()
	store i32 %7, i32* @m
	store i32 1, i32* %2
	br label %8

8:
	%9 = load i32, i32* %2
	%10 = load i32, i32* @n
	%11 = icmp sle i32 %9, %10
	br i1 %11, label %12, label %35

12:
	store i32 1, i32* %3
	br label %13

13:
	%14 = load i32, i32* %3
	%15 = load i32, i32* @n
	%16 = icmp sle i32 %14, %15
	br i1 %16, label %17, label %32

17:
	%18 = load i32, i32* %2
	%19 = load i32, i32* %3
	%20 = icmp eq i32 %18, %19
	br i1 %20, label %21, label %25

21:
	%22 = load i32, i32* %2
	%23 = load i32, i32* %3
	%24 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* @e, i32 0, i32 %22, i32 %23
	store i32 0, i32* %24
	br label %29

25:
	%26 = load i32, i32* %2
	%27 = load i32, i32* %3
	%28 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* @e, i32 0, i32 %26, i32 %27
	store i32 65535, i32* %28
	br label %29

29:
	%30 = load i32, i32* %3
	%31 = add i32 %30, 1
	store i32 %31, i32* %3
	br label %13

32:
	%33 = load i32, i32* %2
	%34 = add i32 %33, 1
	store i32 %34, i32* %2
	br label %8

35:
	store i32 1, i32* %2
	br label %36

36:
	%37 = load i32, i32* %2
	%38 = load i32, i32* @m
	%39 = icmp sle i32 %37, %38
	br i1 %39, label %40, label %49

40:
	%41 = call i32 @getint()
	store i32 %41, i32* %4
	%42 = call i32 @getint()
	store i32 %42, i32* %5
	%43 = call i32 @getint()
	%44 = load i32, i32* %4
	%45 = load i32, i32* %5
	%46 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* @e, i32 0, i32 %44, i32 %45
	store i32 %43, i32* %46
	%47 = load i32, i32* %2
	%48 = add i32 %47, 1
	store i32 %48, i32* %2
	br label %36

49:
	call void @Dijkstra()
	store i32 1, i32* %2
	br label %50

50:
	%51 = load i32, i32* %2
	%52 = load i32, i32* @n
	%53 = icmp sle i32 %51, %52
	br i1 %53, label %54, label %60

54:
	%55 = load i32, i32* %2
	%56 = getelementptr [16 x i32], [16 x i32]* @dis, i32 0, i32 %55
	%57 = load i32, i32* %56
	call void @putint(i32 %57)
	call void @putch(i32 32)
	%58 = load i32, i32* %2
	%59 = add i32 %58, 1
	store i32 %59, i32* %2
	br label %50

60:
	call void @putch(i32 10)
	store i32 0, i32* %1
	br label %61

61:
	%62 = load i32, i32* %1
	ret i32 %62

}

