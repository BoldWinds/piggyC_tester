
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

define dso_local i32 @foo() {
0:
	%1 = alloca i32
	%2 = alloca [16 x i32]
	%3 = alloca i32
	%4 = alloca i32
	%5 = alloca i32
	%6 = alloca i32
	%7 = alloca i32
	%8 = alloca i32
	%9 = alloca i32
	%10 = alloca i32
	%11 = alloca i32
	%12 = alloca i32
	%13 = alloca i32
	%14 = alloca i32
	%15 = alloca i32
	%16 = alloca i32
	%17 = alloca i32
	%18 = alloca i32
	%19 = alloca i32
	%20 = alloca i32
	%21 = getelementptr [16 x i32], [16 x i32]* %2, i32 0, i32 0
	store i32 0, i32* %21
	%22 = getelementptr [16 x i32], [16 x i32]* %2, i32 0, i32 1
	store i32 1, i32* %22
	%23 = getelementptr [16 x i32], [16 x i32]* %2, i32 0, i32 2
	store i32 2, i32* %23
	%24 = getelementptr [16 x i32], [16 x i32]* %2, i32 0, i32 3
	store i32 3, i32* %24
	%25 = getelementptr [16 x i32], [16 x i32]* %2, i32 0, i32 4
	store i32 0, i32* %25
	%26 = getelementptr [16 x i32], [16 x i32]* %2, i32 0, i32 5
	store i32 1, i32* %26
	%27 = getelementptr [16 x i32], [16 x i32]* %2, i32 0, i32 6
	store i32 2, i32* %27
	%28 = getelementptr [16 x i32], [16 x i32]* %2, i32 0, i32 7
	store i32 3, i32* %28
	%29 = getelementptr [16 x i32], [16 x i32]* %2, i32 0, i32 8
	store i32 0, i32* %29
	%30 = getelementptr [16 x i32], [16 x i32]* %2, i32 0, i32 9
	store i32 1, i32* %30
	%31 = getelementptr [16 x i32], [16 x i32]* %2, i32 0, i32 10
	store i32 2, i32* %31
	%32 = getelementptr [16 x i32], [16 x i32]* %2, i32 0, i32 11
	store i32 3, i32* %32
	%33 = getelementptr [16 x i32], [16 x i32]* %2, i32 0, i32 12
	store i32 0, i32* %33
	%34 = getelementptr [16 x i32], [16 x i32]* %2, i32 0, i32 13
	store i32 1, i32* %34
	%35 = getelementptr [16 x i32], [16 x i32]* %2, i32 0, i32 14
	store i32 2, i32* %35
	%36 = getelementptr [16 x i32], [16 x i32]* %2, i32 0, i32 15
	store i32 3, i32* %36
	store i32 3, i32* %3
	store i32 7, i32* %4
	store i32 5, i32* %5
	store i32 6, i32* %6
	store i32 1, i32* %7
	store i32 0, i32* %8
	store i32 3, i32* %9
	store i32 5, i32* %10
	store i32 4, i32* %11
	store i32 2, i32* %12
	store i32 7, i32* %13
	store i32 9, i32* %14
	store i32 8, i32* %15
	store i32 1, i32* %16
	store i32 4, i32* %17
	store i32 6, i32* %18
	%37 = load i32, i32* %3
	%38 = load i32, i32* %4
	%39 = add i32 %37, %38
	%40 = load i32, i32* %5
	%41 = add i32 %39, %40
	%42 = load i32, i32* %6
	%43 = add i32 %41, %42
	%44 = load i32, i32* %7
	%45 = add i32 %43, %44
	%46 = load i32, i32* %8
	%47 = add i32 %45, %46
	%48 = load i32, i32* %9
	%49 = add i32 %47, %48
	%50 = load i32, i32* %10
	%51 = add i32 %49, %50
	store i32 %51, i32* %19
	%52 = load i32, i32* %11
	%53 = load i32, i32* %12
	%54 = add i32 %52, %53
	%55 = load i32, i32* %13
	%56 = add i32 %54, %55
	%57 = load i32, i32* %14
	%58 = add i32 %56, %57
	%59 = load i32, i32* %15
	%60 = add i32 %58, %59
	%61 = load i32, i32* %16
	%62 = add i32 %60, %61
	%63 = load i32, i32* %17
	%64 = add i32 %62, %63
	%65 = load i32, i32* %18
	%66 = add i32 %64, %65
	store i32 %66, i32* %20
	%67 = load i32, i32* %19
	%68 = load i32, i32* %20
	%69 = add i32 %67, %68
	%70 = load i32, i32* %3
	%71 = getelementptr [16 x i32], [16 x i32]* %2, i32 0, i32 %70
	%72 = load i32, i32* %71
	%73 = add i32 %69, %72
	store i32 %73, i32* %1
	br label %74

74:
	%75 = load i32, i32* %1
	ret i32 %75

}

define dso_local i32 @main() {
0:
	%1 = alloca i32
	%2 = alloca i32
	%3 = alloca i32
	%4 = alloca i32
	%5 = alloca i32
	%6 = alloca i32
	%7 = alloca i32
	%8 = alloca i32
	%9 = alloca i32
	%10 = alloca i32
	%11 = alloca i32
	%12 = alloca i32
	%13 = alloca i32
	%14 = alloca i32
	%15 = alloca i32
	%16 = alloca i32
	%17 = alloca i32
	%18 = alloca i32
	%19 = alloca i32
	%20 = alloca i32
	%21 = alloca i32
	%22 = alloca i32
	%23 = alloca i32
	%24 = alloca i32
	%25 = alloca i32
	%26 = alloca i32
	%27 = alloca i32
	%28 = alloca i32
	%29 = alloca i32
	store i32 3, i32* %2
	store i32 7, i32* %3
	store i32 5, i32* %4
	store i32 6, i32* %5
	store i32 1, i32* %6
	store i32 0, i32* %7
	store i32 3, i32* %8
	store i32 5, i32* %9
	store i32 4, i32* %10
	store i32 2, i32* %11
	store i32 7, i32* %12
	store i32 9, i32* %13
	store i32 8, i32* %14
	store i32 1, i32* %15
	store i32 4, i32* %16
	store i32 6, i32* %17
	%30 = load i32, i32* %2
	%31 = load i32, i32* %3
	%32 = add i32 %30, %31
	%33 = load i32, i32* %4
	%34 = add i32 %32, %33
	%35 = load i32, i32* %5
	%36 = add i32 %34, %35
	%37 = load i32, i32* %6
	%38 = add i32 %36, %37
	%39 = load i32, i32* %7
	%40 = add i32 %38, %39
	%41 = load i32, i32* %8
	%42 = add i32 %40, %41
	%43 = load i32, i32* %9
	%44 = add i32 %42, %43
	store i32 %44, i32* %18
	%45 = load i32, i32* %10
	%46 = load i32, i32* %11
	%47 = add i32 %45, %46
	%48 = load i32, i32* %12
	%49 = add i32 %47, %48
	%50 = load i32, i32* %13
	%51 = add i32 %49, %50
	%52 = load i32, i32* %14
	%53 = add i32 %51, %52
	%54 = load i32, i32* %15
	%55 = add i32 %53, %54
	%56 = load i32, i32* %16
	%57 = add i32 %55, %56
	%58 = load i32, i32* %17
	%59 = add i32 %57, %58
	store i32 %59, i32* %19
	%60 = load i32, i32* %18
	%61 = call i32 @foo()
	%62 = add i32 %60, %61
	store i32 %62, i32* %18
	store i32 4, i32* %20
	store i32 7, i32* %21
	store i32 2, i32* %22
	store i32 5, i32* %23
	store i32 8, i32* %24
	store i32 0, i32* %25
	store i32 6, i32* %26
	store i32 3, i32* %27
	%63 = load i32, i32* %19
	%64 = call i32 @foo()
	%65 = add i32 %63, %64
	store i32 %65, i32* %19
	%66 = load i32, i32* %10
	store i32 %66, i32* %2
	%67 = load i32, i32* %11
	store i32 %67, i32* %3
	%68 = load i32, i32* %12
	store i32 %68, i32* %4
	%69 = load i32, i32* %13
	store i32 %69, i32* %5
	%70 = load i32, i32* %14
	store i32 %70, i32* %6
	%71 = load i32, i32* %15
	store i32 %71, i32* %7
	%72 = load i32, i32* %16
	store i32 %72, i32* %8
	%73 = load i32, i32* %17
	store i32 %73, i32* %9
	%74 = load i32, i32* %20
	%75 = load i32, i32* %21
	%76 = add i32 %74, %75
	%77 = load i32, i32* %22
	%78 = add i32 %76, %77
	%79 = load i32, i32* %23
	%80 = add i32 %78, %79
	%81 = load i32, i32* %24
	%82 = add i32 %80, %81
	%83 = load i32, i32* %25
	%84 = add i32 %82, %83
	%85 = load i32, i32* %26
	%86 = add i32 %84, %85
	%87 = load i32, i32* %27
	%88 = add i32 %86, %87
	store i32 %88, i32* %28
	%89 = load i32, i32* %18
	%90 = load i32, i32* %19
	%91 = add i32 %89, %90
	%92 = load i32, i32* %28
	%93 = add i32 %91, %92
	store i32 %93, i32* %29
	%94 = load i32, i32* %29
	call void @putint(i32 %94)
	call void @putch(i32 10)
	store i32 0, i32* %1
	br label %95

95:
	%96 = load i32, i32* %1
	ret i32 %96

}

