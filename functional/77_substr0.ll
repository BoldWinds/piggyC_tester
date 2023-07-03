
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

define dso_local i32 @MAX(i32 %0, i32 %1) {
2:
	%3 = alloca i32
	%4 = alloca i32
	%5 = alloca i32
	store i32 %0, i32* %4
	store i32 %1, i32* %5
	%6 = load i32, i32* %4
	%7 = load i32, i32* %5
	%8 = icmp eq i32 %6, %7
	br i1 %8, label %9, label %11

9:
	%10 = load i32, i32* %4
	store i32 %10, i32* %3
	br label %21

11:
	%12 = load i32, i32* %4
	%13 = load i32, i32* %5
	%14 = icmp sgt i32 %12, %13
	br i1 %14, label %15, label %17

15:
	%16 = load i32, i32* %4
	store i32 %16, i32* %3
	br label %21

17:
	%18 = load i32, i32* %5
	store i32 %18, i32* %3
	br label %21

19:
	br label %20

20:
	br label %21

21:
	%22 = load i32, i32* %3
	ret i32 %22

}

define dso_local i32 @max_sum_nonadjacent(i32* %0, i32 %1) {
2:
	%3 = alloca i32
	%4 = alloca i32*
	%5 = alloca i32
	%6 = alloca [16 x i32]
	%7 = alloca i32
	store i32* %0, i32** %4
	store i32 %1, i32* %5
	%8 = getelementptr [16 x i32], [16 x i32]* %6, i32 0, i32 0
	store i32 0, i32* %8
	%9 = getelementptr [16 x i32], [16 x i32]* %6, i32 0, i32 1
	store i32 0, i32* %9
	%10 = getelementptr [16 x i32], [16 x i32]* %6, i32 0, i32 2
	store i32 0, i32* %10
	%11 = getelementptr [16 x i32], [16 x i32]* %6, i32 0, i32 3
	store i32 0, i32* %11
	%12 = getelementptr [16 x i32], [16 x i32]* %6, i32 0, i32 4
	store i32 0, i32* %12
	%13 = getelementptr [16 x i32], [16 x i32]* %6, i32 0, i32 5
	store i32 0, i32* %13
	%14 = getelementptr [16 x i32], [16 x i32]* %6, i32 0, i32 6
	store i32 0, i32* %14
	%15 = getelementptr [16 x i32], [16 x i32]* %6, i32 0, i32 7
	store i32 0, i32* %15
	%16 = getelementptr [16 x i32], [16 x i32]* %6, i32 0, i32 8
	store i32 0, i32* %16
	%17 = getelementptr [16 x i32], [16 x i32]* %6, i32 0, i32 9
	store i32 0, i32* %17
	%18 = getelementptr [16 x i32], [16 x i32]* %6, i32 0, i32 10
	store i32 0, i32* %18
	%19 = getelementptr [16 x i32], [16 x i32]* %6, i32 0, i32 11
	store i32 0, i32* %19
	%20 = getelementptr [16 x i32], [16 x i32]* %6, i32 0, i32 12
	store i32 0, i32* %20
	%21 = getelementptr [16 x i32], [16 x i32]* %6, i32 0, i32 13
	store i32 0, i32* %21
	%22 = getelementptr [16 x i32], [16 x i32]* %6, i32 0, i32 14
	store i32 0, i32* %22
	%23 = getelementptr [16 x i32], [16 x i32]* %6, i32 0, i32 15
	store i32 0, i32* %23
	%24 = load i32*, i32** %4
	%25 = getelementptr i32, i32* %24, i32 0
	%26 = load i32, i32* %25
	%27 = getelementptr [16 x i32], [16 x i32]* %6, i32 0, i32 0
	store i32 %26, i32* %27
	%28 = load i32*, i32** %4
	%29 = getelementptr i32, i32* %28, i32 0
	%30 = load i32, i32* %29
	%31 = load i32*, i32** %4
	%32 = getelementptr i32, i32* %31, i32 1
	%33 = load i32, i32* %32
	%34 = call i32 @MAX(i32 %30, i32 %33)
	%35 = getelementptr [16 x i32], [16 x i32]* %6, i32 0, i32 1
	store i32 %34, i32* %35
	store i32 2, i32* %7
	br label %36

36:
	%37 = load i32, i32* %7
	%38 = load i32, i32* %5
	%39 = icmp slt i32 %37, %38
	br i1 %39, label %40, label %59

40:
	%41 = load i32, i32* %7
	%42 = sub i32 %41, 2
	%43 = getelementptr [16 x i32], [16 x i32]* %6, i32 0, i32 %42
	%44 = load i32, i32* %43
	%45 = load i32, i32* %7
	%46 = load i32*, i32** %4
	%47 = getelementptr i32, i32* %46, i32 %45
	%48 = load i32, i32* %47
	%49 = add i32 %44, %48
	%50 = load i32, i32* %7
	%51 = sub i32 %50, 1
	%52 = getelementptr [16 x i32], [16 x i32]* %6, i32 0, i32 %51
	%53 = load i32, i32* %52
	%54 = call i32 @MAX(i32 %49, i32 %53)
	%55 = load i32, i32* %7
	%56 = getelementptr [16 x i32], [16 x i32]* %6, i32 0, i32 %55
	store i32 %54, i32* %56
	%57 = load i32, i32* %7
	%58 = add i32 %57, 1
	store i32 %58, i32* %7
	br label %36

59:
	%60 = load i32, i32* %5
	%61 = sub i32 %60, 1
	%62 = getelementptr [16 x i32], [16 x i32]* %6, i32 0, i32 %61
	%63 = load i32, i32* %62
	store i32 %63, i32* %3
	br label %64

64:
	%65 = load i32, i32* %3
	ret i32 %65

}

define dso_local i32 @longest_common_subseq(i32* %0, i32 %1, i32* %2, i32 %3) {
4:
	%5 = alloca i32
	%6 = alloca i32*
	%7 = alloca i32
	%8 = alloca i32*
	%9 = alloca i32
	%10 = alloca [16 x [16 x i32]]
	%11 = alloca i32
	%12 = alloca i32
	store i32* %0, i32** %6
	store i32 %1, i32* %7
	store i32* %2, i32** %8
	store i32 %3, i32* %9
	%13 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 0, i32 0
	store i32 0, i32* %13
	%14 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 0, i32 1
	store i32 0, i32* %14
	%15 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 0, i32 2
	store i32 0, i32* %15
	%16 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 0, i32 3
	store i32 0, i32* %16
	%17 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 0, i32 4
	store i32 0, i32* %17
	%18 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 0, i32 5
	store i32 0, i32* %18
	%19 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 0, i32 6
	store i32 0, i32* %19
	%20 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 0, i32 7
	store i32 0, i32* %20
	%21 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 0, i32 8
	store i32 0, i32* %21
	%22 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 0, i32 9
	store i32 0, i32* %22
	%23 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 0, i32 10
	store i32 0, i32* %23
	%24 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 0, i32 11
	store i32 0, i32* %24
	%25 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 0, i32 12
	store i32 0, i32* %25
	%26 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 0, i32 13
	store i32 0, i32* %26
	%27 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 0, i32 14
	store i32 0, i32* %27
	%28 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 0, i32 15
	store i32 0, i32* %28
	%29 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 1, i32 0
	store i32 0, i32* %29
	%30 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 1, i32 1
	store i32 0, i32* %30
	%31 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 1, i32 2
	store i32 0, i32* %31
	%32 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 1, i32 3
	store i32 0, i32* %32
	%33 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 1, i32 4
	store i32 0, i32* %33
	%34 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 1, i32 5
	store i32 0, i32* %34
	%35 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 1, i32 6
	store i32 0, i32* %35
	%36 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 1, i32 7
	store i32 0, i32* %36
	%37 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 1, i32 8
	store i32 0, i32* %37
	%38 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 1, i32 9
	store i32 0, i32* %38
	%39 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 1, i32 10
	store i32 0, i32* %39
	%40 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 1, i32 11
	store i32 0, i32* %40
	%41 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 1, i32 12
	store i32 0, i32* %41
	%42 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 1, i32 13
	store i32 0, i32* %42
	%43 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 1, i32 14
	store i32 0, i32* %43
	%44 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 1, i32 15
	store i32 0, i32* %44
	%45 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 2, i32 0
	store i32 0, i32* %45
	%46 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 2, i32 1
	store i32 0, i32* %46
	%47 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 2, i32 2
	store i32 0, i32* %47
	%48 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 2, i32 3
	store i32 0, i32* %48
	%49 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 2, i32 4
	store i32 0, i32* %49
	%50 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 2, i32 5
	store i32 0, i32* %50
	%51 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 2, i32 6
	store i32 0, i32* %51
	%52 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 2, i32 7
	store i32 0, i32* %52
	%53 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 2, i32 8
	store i32 0, i32* %53
	%54 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 2, i32 9
	store i32 0, i32* %54
	%55 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 2, i32 10
	store i32 0, i32* %55
	%56 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 2, i32 11
	store i32 0, i32* %56
	%57 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 2, i32 12
	store i32 0, i32* %57
	%58 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 2, i32 13
	store i32 0, i32* %58
	%59 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 2, i32 14
	store i32 0, i32* %59
	%60 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 2, i32 15
	store i32 0, i32* %60
	%61 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 3, i32 0
	store i32 0, i32* %61
	%62 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 3, i32 1
	store i32 0, i32* %62
	%63 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 3, i32 2
	store i32 0, i32* %63
	%64 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 3, i32 3
	store i32 0, i32* %64
	%65 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 3, i32 4
	store i32 0, i32* %65
	%66 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 3, i32 5
	store i32 0, i32* %66
	%67 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 3, i32 6
	store i32 0, i32* %67
	%68 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 3, i32 7
	store i32 0, i32* %68
	%69 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 3, i32 8
	store i32 0, i32* %69
	%70 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 3, i32 9
	store i32 0, i32* %70
	%71 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 3, i32 10
	store i32 0, i32* %71
	%72 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 3, i32 11
	store i32 0, i32* %72
	%73 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 3, i32 12
	store i32 0, i32* %73
	%74 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 3, i32 13
	store i32 0, i32* %74
	%75 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 3, i32 14
	store i32 0, i32* %75
	%76 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 3, i32 15
	store i32 0, i32* %76
	%77 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 4, i32 0
	store i32 0, i32* %77
	%78 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 4, i32 1
	store i32 0, i32* %78
	%79 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 4, i32 2
	store i32 0, i32* %79
	%80 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 4, i32 3
	store i32 0, i32* %80
	%81 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 4, i32 4
	store i32 0, i32* %81
	%82 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 4, i32 5
	store i32 0, i32* %82
	%83 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 4, i32 6
	store i32 0, i32* %83
	%84 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 4, i32 7
	store i32 0, i32* %84
	%85 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 4, i32 8
	store i32 0, i32* %85
	%86 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 4, i32 9
	store i32 0, i32* %86
	%87 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 4, i32 10
	store i32 0, i32* %87
	%88 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 4, i32 11
	store i32 0, i32* %88
	%89 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 4, i32 12
	store i32 0, i32* %89
	%90 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 4, i32 13
	store i32 0, i32* %90
	%91 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 4, i32 14
	store i32 0, i32* %91
	%92 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 4, i32 15
	store i32 0, i32* %92
	%93 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 5, i32 0
	store i32 0, i32* %93
	%94 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 5, i32 1
	store i32 0, i32* %94
	%95 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 5, i32 2
	store i32 0, i32* %95
	%96 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 5, i32 3
	store i32 0, i32* %96
	%97 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 5, i32 4
	store i32 0, i32* %97
	%98 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 5, i32 5
	store i32 0, i32* %98
	%99 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 5, i32 6
	store i32 0, i32* %99
	%100 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 5, i32 7
	store i32 0, i32* %100
	%101 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 5, i32 8
	store i32 0, i32* %101
	%102 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 5, i32 9
	store i32 0, i32* %102
	%103 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 5, i32 10
	store i32 0, i32* %103
	%104 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 5, i32 11
	store i32 0, i32* %104
	%105 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 5, i32 12
	store i32 0, i32* %105
	%106 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 5, i32 13
	store i32 0, i32* %106
	%107 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 5, i32 14
	store i32 0, i32* %107
	%108 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 5, i32 15
	store i32 0, i32* %108
	%109 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 6, i32 0
	store i32 0, i32* %109
	%110 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 6, i32 1
	store i32 0, i32* %110
	%111 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 6, i32 2
	store i32 0, i32* %111
	%112 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 6, i32 3
	store i32 0, i32* %112
	%113 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 6, i32 4
	store i32 0, i32* %113
	%114 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 6, i32 5
	store i32 0, i32* %114
	%115 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 6, i32 6
	store i32 0, i32* %115
	%116 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 6, i32 7
	store i32 0, i32* %116
	%117 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 6, i32 8
	store i32 0, i32* %117
	%118 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 6, i32 9
	store i32 0, i32* %118
	%119 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 6, i32 10
	store i32 0, i32* %119
	%120 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 6, i32 11
	store i32 0, i32* %120
	%121 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 6, i32 12
	store i32 0, i32* %121
	%122 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 6, i32 13
	store i32 0, i32* %122
	%123 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 6, i32 14
	store i32 0, i32* %123
	%124 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 6, i32 15
	store i32 0, i32* %124
	%125 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 7, i32 0
	store i32 0, i32* %125
	%126 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 7, i32 1
	store i32 0, i32* %126
	%127 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 7, i32 2
	store i32 0, i32* %127
	%128 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 7, i32 3
	store i32 0, i32* %128
	%129 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 7, i32 4
	store i32 0, i32* %129
	%130 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 7, i32 5
	store i32 0, i32* %130
	%131 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 7, i32 6
	store i32 0, i32* %131
	%132 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 7, i32 7
	store i32 0, i32* %132
	%133 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 7, i32 8
	store i32 0, i32* %133
	%134 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 7, i32 9
	store i32 0, i32* %134
	%135 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 7, i32 10
	store i32 0, i32* %135
	%136 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 7, i32 11
	store i32 0, i32* %136
	%137 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 7, i32 12
	store i32 0, i32* %137
	%138 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 7, i32 13
	store i32 0, i32* %138
	%139 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 7, i32 14
	store i32 0, i32* %139
	%140 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 7, i32 15
	store i32 0, i32* %140
	%141 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 8, i32 0
	store i32 0, i32* %141
	%142 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 8, i32 1
	store i32 0, i32* %142
	%143 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 8, i32 2
	store i32 0, i32* %143
	%144 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 8, i32 3
	store i32 0, i32* %144
	%145 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 8, i32 4
	store i32 0, i32* %145
	%146 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 8, i32 5
	store i32 0, i32* %146
	%147 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 8, i32 6
	store i32 0, i32* %147
	%148 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 8, i32 7
	store i32 0, i32* %148
	%149 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 8, i32 8
	store i32 0, i32* %149
	%150 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 8, i32 9
	store i32 0, i32* %150
	%151 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 8, i32 10
	store i32 0, i32* %151
	%152 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 8, i32 11
	store i32 0, i32* %152
	%153 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 8, i32 12
	store i32 0, i32* %153
	%154 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 8, i32 13
	store i32 0, i32* %154
	%155 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 8, i32 14
	store i32 0, i32* %155
	%156 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 8, i32 15
	store i32 0, i32* %156
	%157 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 9, i32 0
	store i32 0, i32* %157
	%158 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 9, i32 1
	store i32 0, i32* %158
	%159 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 9, i32 2
	store i32 0, i32* %159
	%160 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 9, i32 3
	store i32 0, i32* %160
	%161 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 9, i32 4
	store i32 0, i32* %161
	%162 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 9, i32 5
	store i32 0, i32* %162
	%163 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 9, i32 6
	store i32 0, i32* %163
	%164 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 9, i32 7
	store i32 0, i32* %164
	%165 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 9, i32 8
	store i32 0, i32* %165
	%166 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 9, i32 9
	store i32 0, i32* %166
	%167 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 9, i32 10
	store i32 0, i32* %167
	%168 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 9, i32 11
	store i32 0, i32* %168
	%169 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 9, i32 12
	store i32 0, i32* %169
	%170 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 9, i32 13
	store i32 0, i32* %170
	%171 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 9, i32 14
	store i32 0, i32* %171
	%172 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 9, i32 15
	store i32 0, i32* %172
	%173 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 10, i32 0
	store i32 0, i32* %173
	%174 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 10, i32 1
	store i32 0, i32* %174
	%175 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 10, i32 2
	store i32 0, i32* %175
	%176 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 10, i32 3
	store i32 0, i32* %176
	%177 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 10, i32 4
	store i32 0, i32* %177
	%178 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 10, i32 5
	store i32 0, i32* %178
	%179 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 10, i32 6
	store i32 0, i32* %179
	%180 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 10, i32 7
	store i32 0, i32* %180
	%181 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 10, i32 8
	store i32 0, i32* %181
	%182 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 10, i32 9
	store i32 0, i32* %182
	%183 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 10, i32 10
	store i32 0, i32* %183
	%184 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 10, i32 11
	store i32 0, i32* %184
	%185 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 10, i32 12
	store i32 0, i32* %185
	%186 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 10, i32 13
	store i32 0, i32* %186
	%187 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 10, i32 14
	store i32 0, i32* %187
	%188 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 10, i32 15
	store i32 0, i32* %188
	%189 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 11, i32 0
	store i32 0, i32* %189
	%190 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 11, i32 1
	store i32 0, i32* %190
	%191 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 11, i32 2
	store i32 0, i32* %191
	%192 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 11, i32 3
	store i32 0, i32* %192
	%193 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 11, i32 4
	store i32 0, i32* %193
	%194 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 11, i32 5
	store i32 0, i32* %194
	%195 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 11, i32 6
	store i32 0, i32* %195
	%196 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 11, i32 7
	store i32 0, i32* %196
	%197 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 11, i32 8
	store i32 0, i32* %197
	%198 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 11, i32 9
	store i32 0, i32* %198
	%199 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 11, i32 10
	store i32 0, i32* %199
	%200 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 11, i32 11
	store i32 0, i32* %200
	%201 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 11, i32 12
	store i32 0, i32* %201
	%202 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 11, i32 13
	store i32 0, i32* %202
	%203 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 11, i32 14
	store i32 0, i32* %203
	%204 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 11, i32 15
	store i32 0, i32* %204
	%205 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 12, i32 0
	store i32 0, i32* %205
	%206 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 12, i32 1
	store i32 0, i32* %206
	%207 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 12, i32 2
	store i32 0, i32* %207
	%208 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 12, i32 3
	store i32 0, i32* %208
	%209 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 12, i32 4
	store i32 0, i32* %209
	%210 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 12, i32 5
	store i32 0, i32* %210
	%211 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 12, i32 6
	store i32 0, i32* %211
	%212 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 12, i32 7
	store i32 0, i32* %212
	%213 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 12, i32 8
	store i32 0, i32* %213
	%214 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 12, i32 9
	store i32 0, i32* %214
	%215 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 12, i32 10
	store i32 0, i32* %215
	%216 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 12, i32 11
	store i32 0, i32* %216
	%217 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 12, i32 12
	store i32 0, i32* %217
	%218 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 12, i32 13
	store i32 0, i32* %218
	%219 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 12, i32 14
	store i32 0, i32* %219
	%220 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 12, i32 15
	store i32 0, i32* %220
	%221 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 13, i32 0
	store i32 0, i32* %221
	%222 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 13, i32 1
	store i32 0, i32* %222
	%223 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 13, i32 2
	store i32 0, i32* %223
	%224 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 13, i32 3
	store i32 0, i32* %224
	%225 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 13, i32 4
	store i32 0, i32* %225
	%226 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 13, i32 5
	store i32 0, i32* %226
	%227 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 13, i32 6
	store i32 0, i32* %227
	%228 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 13, i32 7
	store i32 0, i32* %228
	%229 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 13, i32 8
	store i32 0, i32* %229
	%230 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 13, i32 9
	store i32 0, i32* %230
	%231 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 13, i32 10
	store i32 0, i32* %231
	%232 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 13, i32 11
	store i32 0, i32* %232
	%233 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 13, i32 12
	store i32 0, i32* %233
	%234 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 13, i32 13
	store i32 0, i32* %234
	%235 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 13, i32 14
	store i32 0, i32* %235
	%236 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 13, i32 15
	store i32 0, i32* %236
	%237 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 14, i32 0
	store i32 0, i32* %237
	%238 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 14, i32 1
	store i32 0, i32* %238
	%239 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 14, i32 2
	store i32 0, i32* %239
	%240 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 14, i32 3
	store i32 0, i32* %240
	%241 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 14, i32 4
	store i32 0, i32* %241
	%242 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 14, i32 5
	store i32 0, i32* %242
	%243 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 14, i32 6
	store i32 0, i32* %243
	%244 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 14, i32 7
	store i32 0, i32* %244
	%245 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 14, i32 8
	store i32 0, i32* %245
	%246 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 14, i32 9
	store i32 0, i32* %246
	%247 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 14, i32 10
	store i32 0, i32* %247
	%248 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 14, i32 11
	store i32 0, i32* %248
	%249 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 14, i32 12
	store i32 0, i32* %249
	%250 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 14, i32 13
	store i32 0, i32* %250
	%251 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 14, i32 14
	store i32 0, i32* %251
	%252 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 14, i32 15
	store i32 0, i32* %252
	%253 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 15, i32 0
	store i32 0, i32* %253
	%254 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 15, i32 1
	store i32 0, i32* %254
	%255 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 15, i32 2
	store i32 0, i32* %255
	%256 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 15, i32 3
	store i32 0, i32* %256
	%257 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 15, i32 4
	store i32 0, i32* %257
	%258 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 15, i32 5
	store i32 0, i32* %258
	%259 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 15, i32 6
	store i32 0, i32* %259
	%260 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 15, i32 7
	store i32 0, i32* %260
	%261 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 15, i32 8
	store i32 0, i32* %261
	%262 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 15, i32 9
	store i32 0, i32* %262
	%263 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 15, i32 10
	store i32 0, i32* %263
	%264 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 15, i32 11
	store i32 0, i32* %264
	%265 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 15, i32 12
	store i32 0, i32* %265
	%266 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 15, i32 13
	store i32 0, i32* %266
	%267 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 15, i32 14
	store i32 0, i32* %267
	%268 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 15, i32 15
	store i32 0, i32* %268
	store i32 1, i32* %11
	br label %269

269:
	%270 = load i32, i32* %11
	%271 = load i32, i32* %7
	%272 = icmp sle i32 %270, %271
	br i1 %272, label %273, label %322

273:
	store i32 1, i32* %12
	br label %274

274:
	%275 = load i32, i32* %12
	%276 = load i32, i32* %9
	%277 = icmp sle i32 %275, %276
	br i1 %277, label %278, label %319

278:
	%279 = load i32, i32* %11
	%280 = sub i32 %279, 1
	%281 = load i32*, i32** %6
	%282 = getelementptr i32, i32* %281, i32 %280
	%283 = load i32, i32* %282
	%284 = load i32, i32* %12
	%285 = sub i32 %284, 1
	%286 = load i32*, i32** %8
	%287 = getelementptr i32, i32* %286, i32 %285
	%288 = load i32, i32* %287
	%289 = icmp eq i32 %283, %288
	br i1 %289, label %290, label %301

290:
	%291 = load i32, i32* %11
	%292 = sub i32 %291, 1
	%293 = load i32, i32* %12
	%294 = sub i32 %293, 1
	%295 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 %292, i32 %294
	%296 = load i32, i32* %295
	%297 = add i32 %296, 1
	%298 = load i32, i32* %11
	%299 = load i32, i32* %12
	%300 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 %298, i32 %299
	store i32 %297, i32* %300
	br label %316

301:
	%302 = load i32, i32* %11
	%303 = sub i32 %302, 1
	%304 = load i32, i32* %12
	%305 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 %303, i32 %304
	%306 = load i32, i32* %305
	%307 = load i32, i32* %11
	%308 = load i32, i32* %12
	%309 = sub i32 %308, 1
	%310 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 %307, i32 %309
	%311 = load i32, i32* %310
	%312 = call i32 @MAX(i32 %306, i32 %311)
	%313 = load i32, i32* %11
	%314 = load i32, i32* %12
	%315 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 %313, i32 %314
	store i32 %312, i32* %315
	br label %316

316:
	%317 = load i32, i32* %12
	%318 = add i32 %317, 1
	store i32 %318, i32* %12
	br label %274

319:
	%320 = load i32, i32* %11
	%321 = add i32 %320, 1
	store i32 %321, i32* %11
	br label %269

322:
	%323 = load i32, i32* %7
	%324 = load i32, i32* %9
	%325 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %10, i32 0, i32 %323, i32 %324
	%326 = load i32, i32* %325
	store i32 %326, i32* %5
	br label %327

327:
	%328 = load i32, i32* %5
	ret i32 %328

}

define dso_local i32 @main() {
0:
	%1 = alloca i32
	%2 = alloca [15 x i32]
	%3 = alloca [13 x i32]
	%4 = alloca i32
	%5 = alloca i32
	%6 = getelementptr [15 x i32], [15 x i32]* %2, i32 0, i32 0
	store i32 8, i32* %6
	%7 = getelementptr [15 x i32], [15 x i32]* %2, i32 0, i32 1
	store i32 7, i32* %7
	%8 = getelementptr [15 x i32], [15 x i32]* %2, i32 0, i32 2
	store i32 4, i32* %8
	%9 = getelementptr [15 x i32], [15 x i32]* %2, i32 0, i32 3
	store i32 1, i32* %9
	%10 = getelementptr [15 x i32], [15 x i32]* %2, i32 0, i32 4
	store i32 2, i32* %10
	%11 = getelementptr [15 x i32], [15 x i32]* %2, i32 0, i32 5
	store i32 7, i32* %11
	%12 = getelementptr [15 x i32], [15 x i32]* %2, i32 0, i32 6
	store i32 0, i32* %12
	%13 = getelementptr [15 x i32], [15 x i32]* %2, i32 0, i32 7
	store i32 1, i32* %13
	%14 = getelementptr [15 x i32], [15 x i32]* %2, i32 0, i32 8
	store i32 9, i32* %14
	%15 = getelementptr [15 x i32], [15 x i32]* %2, i32 0, i32 9
	store i32 3, i32* %15
	%16 = getelementptr [15 x i32], [15 x i32]* %2, i32 0, i32 10
	store i32 4, i32* %16
	%17 = getelementptr [15 x i32], [15 x i32]* %2, i32 0, i32 11
	store i32 8, i32* %17
	%18 = getelementptr [15 x i32], [15 x i32]* %2, i32 0, i32 12
	store i32 3, i32* %18
	%19 = getelementptr [15 x i32], [15 x i32]* %2, i32 0, i32 13
	store i32 7, i32* %19
	%20 = getelementptr [15 x i32], [15 x i32]* %2, i32 0, i32 14
	store i32 0, i32* %20
	%21 = getelementptr [13 x i32], [13 x i32]* %3, i32 0, i32 0
	store i32 3, i32* %21
	%22 = getelementptr [13 x i32], [13 x i32]* %3, i32 0, i32 1
	store i32 9, i32* %22
	%23 = getelementptr [13 x i32], [13 x i32]* %3, i32 0, i32 2
	store i32 7, i32* %23
	%24 = getelementptr [13 x i32], [13 x i32]* %3, i32 0, i32 3
	store i32 1, i32* %24
	%25 = getelementptr [13 x i32], [13 x i32]* %3, i32 0, i32 4
	store i32 4, i32* %25
	%26 = getelementptr [13 x i32], [13 x i32]* %3, i32 0, i32 5
	store i32 2, i32* %26
	%27 = getelementptr [13 x i32], [13 x i32]* %3, i32 0, i32 6
	store i32 4, i32* %27
	%28 = getelementptr [13 x i32], [13 x i32]* %3, i32 0, i32 7
	store i32 3, i32* %28
	%29 = getelementptr [13 x i32], [13 x i32]* %3, i32 0, i32 8
	store i32 6, i32* %29
	%30 = getelementptr [13 x i32], [13 x i32]* %3, i32 0, i32 9
	store i32 8, i32* %30
	%31 = getelementptr [13 x i32], [13 x i32]* %3, i32 0, i32 10
	store i32 0, i32* %31
	%32 = getelementptr [13 x i32], [13 x i32]* %3, i32 0, i32 11
	store i32 1, i32* %32
	%33 = getelementptr [13 x i32], [13 x i32]* %3, i32 0, i32 12
	store i32 5, i32* %33
	%34 = getelementptr [15 x i32], [15 x i32]* %2, i32 0, i32 0
	%35 = call i32 @max_sum_nonadjacent(i32* %34, i32 15)
	call void @putint(i32 %35)
	call void @putch(i32 10)
	%36 = getelementptr [15 x i32], [15 x i32]* %2, i32 0, i32 0
	%37 = getelementptr [13 x i32], [13 x i32]* %3, i32 0, i32 0
	%38 = call i32 @longest_common_subseq(i32* %36, i32 15, i32* %37, i32 13)
	call void @putint(i32 %38)
	call void @putch(i32 10)
	store i32 0, i32* %1
	br label %39

39:
	%40 = load i32, i32* %1
	ret i32 %40

}

