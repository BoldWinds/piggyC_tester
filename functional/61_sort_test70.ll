@buf = dso_local global [2 x [100 x i32]] zeroinitializer

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

define dso_local void @merge_sort(i32 %0, i32 %1) {
2:
	%3 = alloca i32
	%4 = alloca i32
	%5 = alloca i32
	%6 = alloca i32
	%7 = alloca i32
	%8 = alloca i32
	store i32 %0, i32* %3
	store i32 %1, i32* %4
	%9 = load i32, i32* %3
	%10 = add i32 %9, 1
	%11 = load i32, i32* %4
	%12 = icmp sge i32 %10, %11
	br i1 %12, label %13, label %14

13:
	br label %105

14:
	%15 = load i32, i32* %3
	%16 = load i32, i32* %4
	%17 = add i32 %15, %16
	%18 = sdiv i32 %17, 2
	store i32 %18, i32* %5
	%19 = load i32, i32* %3
	%20 = load i32, i32* %5
	call void @merge_sort(i32 %19, i32 %20)
	%21 = load i32, i32* %5
	%22 = load i32, i32* %4
	call void @merge_sort(i32 %21, i32 %22)
	%23 = load i32, i32* %3
	store i32 %23, i32* %6
	%24 = load i32, i32* %5
	store i32 %24, i32* %7
	%25 = load i32, i32* %3
	store i32 %25, i32* %8
	br label %26

26:
	%27 = load i32, i32* %6
	%28 = load i32, i32* %5
	%29 = icmp slt i32 %27, %28
	br i1 %29, label %30, label %61

30:
	%31 = load i32, i32* %7
	%32 = load i32, i32* %4
	%33 = icmp slt i32 %31, %32
	br i1 %33, label %34, label %61

34:
	%35 = load i32, i32* %6
	%36 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 0, i32 %35
	%37 = load i32, i32* %36
	%38 = load i32, i32* %7
	%39 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 0, i32 %38
	%40 = load i32, i32* %39
	%41 = icmp slt i32 %37, %40
	br i1 %41, label %42, label %50

42:
	%43 = load i32, i32* %6
	%44 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 0, i32 %43
	%45 = load i32, i32* %44
	%46 = load i32, i32* %8
	%47 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 1, i32 %46
	store i32 %45, i32* %47
	%48 = load i32, i32* %6
	%49 = add i32 %48, 1
	store i32 %49, i32* %6
	br label %58

50:
	%51 = load i32, i32* %7
	%52 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 0, i32 %51
	%53 = load i32, i32* %52
	%54 = load i32, i32* %8
	%55 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 1, i32 %54
	store i32 %53, i32* %55
	%56 = load i32, i32* %7
	%57 = add i32 %56, 1
	store i32 %57, i32* %7
	br label %58

58:
	%59 = load i32, i32* %8
	%60 = add i32 %59, 1
	store i32 %60, i32* %8
	br label %26

61:
	br label %62

62:
	%63 = load i32, i32* %6
	%64 = load i32, i32* %5
	%65 = icmp slt i32 %63, %64
	br i1 %65, label %66, label %76

66:
	%67 = load i32, i32* %6
	%68 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 0, i32 %67
	%69 = load i32, i32* %68
	%70 = load i32, i32* %8
	%71 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 1, i32 %70
	store i32 %69, i32* %71
	%72 = load i32, i32* %6
	%73 = add i32 %72, 1
	store i32 %73, i32* %6
	%74 = load i32, i32* %8
	%75 = add i32 %74, 1
	store i32 %75, i32* %8
	br label %62

76:
	br label %77

77:
	%78 = load i32, i32* %7
	%79 = load i32, i32* %4
	%80 = icmp slt i32 %78, %79
	br i1 %80, label %81, label %91

81:
	%82 = load i32, i32* %7
	%83 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 0, i32 %82
	%84 = load i32, i32* %83
	%85 = load i32, i32* %8
	%86 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 1, i32 %85
	store i32 %84, i32* %86
	%87 = load i32, i32* %7
	%88 = add i32 %87, 1
	store i32 %88, i32* %7
	%89 = load i32, i32* %8
	%90 = add i32 %89, 1
	store i32 %90, i32* %8
	br label %77

91:
	br label %92

92:
	%93 = load i32, i32* %3
	%94 = load i32, i32* %4
	%95 = icmp slt i32 %93, %94
	br i1 %95, label %96, label %104

96:
	%97 = load i32, i32* %3
	%98 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 1, i32 %97
	%99 = load i32, i32* %98
	%100 = load i32, i32* %3
	%101 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 0, i32 %100
	store i32 %99, i32* %101
	%102 = load i32, i32* %3
	%103 = add i32 %102, 1
	store i32 %103, i32* %3
	br label %92

104:
	br label %105

105:
	ret void

}

define dso_local i32 @main() {
0:
	%1 = alloca i32
	%2 = alloca i32
	%3 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 0
	%4 = getelementptr [100 x i32], [100 x i32]* %3, i32 0, i32 0
	%5 = call i32 @getarray(i32* %4)
	store i32 %5, i32* %2
	%6 = load i32, i32* %2
	call void @merge_sort(i32 0, i32 %6)
	%7 = load i32, i32* %2
	%8 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 0
	%9 = getelementptr [100 x i32], [100 x i32]* %8, i32 0, i32 0
	call void @putarray(i32 %7, i32* %9)
	store i32 0, i32* %1
	br label %10

10:
	%11 = load i32, i32* %1
	ret i32 %11

}

