@b = dso_local global i32 5
@c = dso_local global [4 x i32]  [i32 6, i32 7, i32 8, i32 9]

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
	%5 = alloca [2 x [8 x i32]]
	%6 = alloca i32
	%7 = alloca [7 x [1 x [5 x i32]]]
	store i32 1, i32* %2
	store i32 2, i32* %3
	store i32 3, i32* %3
	%8 = load i32, i32* %3
	call void @putint(i32 %8)
	%9 = load i32, i32* %3
	call void @putint(i32 %9)
	%10 = load i32, i32* %2
	call void @putint(i32 %10)
	call void @putch(i32 10)
	br label %11

11:
	%12 = load i32, i32* %2
	%13 = icmp slt i32 %12, 5
	br i1 %13, label %14, label %21

14:
	store i32 0, i32* %4
	%15 = load i32, i32* %4
	%16 = add i32 %15, 1
	store i32 %16, i32* %4
	%17 = load i32, i32* %4
	%18 = icmp ne i32 %17, 0
	br i1 %18, label %19, label %20

19:
	br label %21

20:
	br label %11

21:
	%22 = load i32, i32* %2
	call void @putint(i32 %22)
	call void @putch(i32 10)
	%23 = getelementptr [4 x i32], [4 x i32]* @c, i32 0, i32 2
	store i32 1, i32* %23
	%24 = getelementptr [2 x [8 x i32]], [2 x [8 x i32]]* %5, i32 0, i32 0, i32 0
	store i32 0, i32* %24
	%25 = getelementptr [2 x [8 x i32]], [2 x [8 x i32]]* %5, i32 0, i32 0, i32 1
	store i32 9, i32* %25
	%26 = getelementptr [2 x [8 x i32]], [2 x [8 x i32]]* %5, i32 0, i32 0, i32 2
	store i32 0, i32* %26
	%27 = getelementptr [2 x [8 x i32]], [2 x [8 x i32]]* %5, i32 0, i32 0, i32 3
	store i32 0, i32* %27
	%28 = getelementptr [2 x [8 x i32]], [2 x [8 x i32]]* %5, i32 0, i32 0, i32 4
	store i32 0, i32* %28
	%29 = getelementptr [2 x [8 x i32]], [2 x [8 x i32]]* %5, i32 0, i32 0, i32 5
	store i32 0, i32* %29
	%30 = getelementptr [2 x [8 x i32]], [2 x [8 x i32]]* %5, i32 0, i32 0, i32 6
	store i32 0, i32* %30
	%31 = getelementptr [2 x [8 x i32]], [2 x [8 x i32]]* %5, i32 0, i32 0, i32 7
	store i32 0, i32* %31
	%32 = getelementptr [2 x [8 x i32]], [2 x [8 x i32]]* %5, i32 0, i32 1, i32 0
	store i32 8, i32* %32
	%33 = getelementptr [2 x [8 x i32]], [2 x [8 x i32]]* %5, i32 0, i32 1, i32 1
	store i32 3, i32* %33
	%34 = getelementptr [2 x [8 x i32]], [2 x [8 x i32]]* %5, i32 0, i32 1, i32 2
	store i32 0, i32* %34
	%35 = getelementptr [2 x [8 x i32]], [2 x [8 x i32]]* %5, i32 0, i32 1, i32 3
	store i32 0, i32* %35
	%36 = getelementptr [2 x [8 x i32]], [2 x [8 x i32]]* %5, i32 0, i32 1, i32 4
	store i32 0, i32* %36
	%37 = getelementptr [2 x [8 x i32]], [2 x [8 x i32]]* %5, i32 0, i32 1, i32 5
	store i32 0, i32* %37
	%38 = getelementptr [2 x [8 x i32]], [2 x [8 x i32]]* %5, i32 0, i32 1, i32 6
	store i32 0, i32* %38
	%39 = getelementptr [2 x [8 x i32]], [2 x [8 x i32]]* %5, i32 0, i32 1, i32 7
	store i32 0, i32* %39
	store i32 2, i32* %6
	%40 = getelementptr [4 x i32], [4 x i32]* @c, i32 0, i32 2
	%41 = load i32, i32* %40
	%42 = icmp ne i32 %41, 0
	br i1 %42, label %43, label %88

43:
	%44 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %7, i32 0, i32 0, i32 0, i32 0
	store i32 0, i32* %44
	%45 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %7, i32 0, i32 0, i32 0, i32 1
	store i32 0, i32* %45
	%46 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %7, i32 0, i32 0, i32 0, i32 2
	store i32 0, i32* %46
	%47 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %7, i32 0, i32 0, i32 0, i32 3
	store i32 0, i32* %47
	%48 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %7, i32 0, i32 0, i32 0, i32 4
	store i32 0, i32* %48
	%49 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %7, i32 0, i32 1, i32 0, i32 0
	store i32 0, i32* %49
	%50 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %7, i32 0, i32 1, i32 0, i32 1
	store i32 0, i32* %50
	%51 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %7, i32 0, i32 1, i32 0, i32 2
	store i32 0, i32* %51
	%52 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %7, i32 0, i32 1, i32 0, i32 3
	store i32 0, i32* %52
	%53 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %7, i32 0, i32 1, i32 0, i32 4
	store i32 0, i32* %53
	%54 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %7, i32 0, i32 2, i32 0, i32 0
	store i32 2, i32* %54
	%55 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %7, i32 0, i32 2, i32 0, i32 1
	store i32 1, i32* %55
	%56 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %7, i32 0, i32 2, i32 0, i32 2
	store i32 8, i32* %56
	%57 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %7, i32 0, i32 2, i32 0, i32 3
	store i32 0, i32* %57
	%58 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %7, i32 0, i32 2, i32 0, i32 4
	store i32 0, i32* %58
	%59 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %7, i32 0, i32 3, i32 0, i32 0
	store i32 0, i32* %59
	%60 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %7, i32 0, i32 3, i32 0, i32 1
	store i32 0, i32* %60
	%61 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %7, i32 0, i32 3, i32 0, i32 2
	store i32 0, i32* %61
	%62 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %7, i32 0, i32 3, i32 0, i32 3
	store i32 0, i32* %62
	%63 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %7, i32 0, i32 3, i32 0, i32 4
	store i32 0, i32* %63
	%64 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %7, i32 0, i32 4, i32 0, i32 0
	store i32 0, i32* %64
	%65 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %7, i32 0, i32 4, i32 0, i32 1
	store i32 0, i32* %65
	%66 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %7, i32 0, i32 4, i32 0, i32 2
	store i32 0, i32* %66
	%67 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %7, i32 0, i32 4, i32 0, i32 3
	store i32 0, i32* %67
	%68 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %7, i32 0, i32 4, i32 0, i32 4
	store i32 0, i32* %68
	%69 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %7, i32 0, i32 5, i32 0, i32 0
	store i32 0, i32* %69
	%70 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %7, i32 0, i32 5, i32 0, i32 1
	store i32 0, i32* %70
	%71 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %7, i32 0, i32 5, i32 0, i32 2
	store i32 0, i32* %71
	%72 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %7, i32 0, i32 5, i32 0, i32 3
	store i32 0, i32* %72
	%73 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %7, i32 0, i32 5, i32 0, i32 4
	store i32 0, i32* %73
	%74 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %7, i32 0, i32 6, i32 0, i32 0
	store i32 0, i32* %74
	%75 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %7, i32 0, i32 6, i32 0, i32 1
	store i32 0, i32* %75
	%76 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %7, i32 0, i32 6, i32 0, i32 2
	store i32 0, i32* %76
	%77 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %7, i32 0, i32 6, i32 0, i32 3
	store i32 0, i32* %77
	%78 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %7, i32 0, i32 6, i32 0, i32 4
	store i32 0, i32* %78
	%79 = load i32, i32* %6
	%80 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %7, i32 0, i32 %79, i32 0, i32 0
	%81 = load i32, i32* %80
	call void @putint(i32 %81)
	%82 = load i32, i32* %6
	%83 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %7, i32 0, i32 %82, i32 0, i32 1
	%84 = load i32, i32* %83
	call void @putint(i32 %84)
	%85 = load i32, i32* %6
	%86 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %7, i32 0, i32 %85, i32 0, i32 2
	%87 = load i32, i32* %86
	call void @putint(i32 %87)
	br label %88

88:
	call void @putch(i32 10)
	%89 = load i32, i32* @b
	call void @putint(i32 %89)
	call void @putch(i32 10)
	%90 = getelementptr [4 x i32], [4 x i32]* @c, i32 0, i32 0
	%91 = load i32, i32* %90
	call void @putint(i32 %91)
	%92 = getelementptr [4 x i32], [4 x i32]* @c, i32 0, i32 1
	%93 = load i32, i32* %92
	call void @putint(i32 %93)
	%94 = getelementptr [4 x i32], [4 x i32]* @c, i32 0, i32 2
	%95 = load i32, i32* %94
	call void @putint(i32 %95)
	%96 = getelementptr [4 x i32], [4 x i32]* @c, i32 0, i32 3
	%97 = load i32, i32* %96
	call void @putint(i32 %97)
	call void @putch(i32 10)
	store i32 0, i32* %1
	br label %98

98:
	%99 = load i32, i32* %1
	ret i32 %99

}

