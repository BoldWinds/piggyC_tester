@M = dso_local global i32 0
@L = dso_local global i32 0
@N = dso_local global i32 0

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

define dso_local i32 @add(float* %0, float* %1, float* %2, float* %3, float* %4, float* %5, float* %6, float* %7, float* %8) {
9:
	%10 = alloca i32
	%11 = alloca float*
	%12 = alloca float*
	%13 = alloca float*
	%14 = alloca float*
	%15 = alloca float*
	%16 = alloca float*
	%17 = alloca float*
	%18 = alloca float*
	%19 = alloca float*
	%20 = alloca i32
	store float* %0, float** %11
	store float* %1, float** %12
	store float* %2, float** %13
	store float* %3, float** %14
	store float* %4, float** %15
	store float* %5, float** %16
	store float* %6, float** %17
	store float* %7, float** %18
	store float* %8, float** %19
	store i32 0, i32* %20
	br label %21

21:
	%22 = load i32, i32* %20
	%23 = load i32, i32* @M
	%24 = icmp slt i32 %22, %23
	br i1 %24, label %25, label %64

25:
	%26 = load i32, i32* %20
	%27 = load float*, float** %11
	%28 = getelementptr float, float* %27, i32 %26
	%29 = load float, float* %28
	%30 = load i32, i32* %20
	%31 = load float*, float** %14
	%32 = getelementptr float, float* %31, i32 %30
	%33 = load float, float* %32
	%34 = fadd float %29, %33
	%35 = load i32, i32* %20
	%36 = load float*, float** %17
	%37 = getelementptr float, float* %36, i32 %35
	store float %34, float* %37
	%38 = load i32, i32* %20
	%39 = load float*, float** %12
	%40 = getelementptr float, float* %39, i32 %38
	%41 = load float, float* %40
	%42 = load i32, i32* %20
	%43 = load float*, float** %15
	%44 = getelementptr float, float* %43, i32 %42
	%45 = load float, float* %44
	%46 = fadd float %41, %45
	%47 = load i32, i32* %20
	%48 = load float*, float** %18
	%49 = getelementptr float, float* %48, i32 %47
	store float %46, float* %49
	%50 = load i32, i32* %20
	%51 = load float*, float** %13
	%52 = getelementptr float, float* %51, i32 %50
	%53 = load float, float* %52
	%54 = load i32, i32* %20
	%55 = load float*, float** %16
	%56 = getelementptr float, float* %55, i32 %54
	%57 = load float, float* %56
	%58 = fadd float %53, %57
	%59 = load i32, i32* %20
	%60 = load float*, float** %19
	%61 = getelementptr float, float* %60, i32 %59
	store float %58, float* %61
	%62 = load i32, i32* %20
	%63 = add i32 %62, 1
	store i32 %63, i32* %20
	br label %21

64:
	store i32 0, i32* %10
	br label %65

65:
	%66 = load i32, i32* %10
	ret i32 %66

}

define dso_local i32 @main() {
0:
	%1 = alloca i32
	%2 = alloca [3 x float]
	%3 = alloca [3 x float]
	%4 = alloca [3 x float]
	%5 = alloca [3 x float]
	%6 = alloca [3 x float]
	%7 = alloca [3 x float]
	%8 = alloca [6 x float]
	%9 = alloca [3 x float]
	%10 = alloca [3 x float]
	%11 = alloca i32
	%12 = alloca i32
	store i32 3, i32* @N
	store i32 3, i32* @M
	store i32 3, i32* @L
	store i32 0, i32* %11
	br label %13

13:
	%14 = load i32, i32* %11
	%15 = load i32, i32* @M
	%16 = icmp slt i32 %14, %15
	br i1 %16, label %17, label %44

17:
	%18 = load i32, i32* %11
	%19 = load i32, i32* %11
	%20 = getelementptr [3 x float], [3 x float]* %2, i32 0, i32 %19
	%21 = sitofp i32 %18 to float
	store float %21, float* %20
	%22 = load i32, i32* %11
	%23 = load i32, i32* %11
	%24 = getelementptr [3 x float], [3 x float]* %3, i32 0, i32 %23
	%25 = sitofp i32 %22 to float
	store float %25, float* %24
	%26 = load i32, i32* %11
	%27 = load i32, i32* %11
	%28 = getelementptr [3 x float], [3 x float]* %4, i32 0, i32 %27
	%29 = sitofp i32 %26 to float
	store float %29, float* %28
	%30 = load i32, i32* %11
	%31 = load i32, i32* %11
	%32 = getelementptr [3 x float], [3 x float]* %5, i32 0, i32 %31
	%33 = sitofp i32 %30 to float
	store float %33, float* %32
	%34 = load i32, i32* %11
	%35 = load i32, i32* %11
	%36 = getelementptr [3 x float], [3 x float]* %6, i32 0, i32 %35
	%37 = sitofp i32 %34 to float
	store float %37, float* %36
	%38 = load i32, i32* %11
	%39 = load i32, i32* %11
	%40 = getelementptr [3 x float], [3 x float]* %7, i32 0, i32 %39
	%41 = sitofp i32 %38 to float
	store float %41, float* %40
	%42 = load i32, i32* %11
	%43 = add i32 %42, 1
	store i32 %43, i32* %11
	br label %13

44:
	%45 = getelementptr [3 x float], [3 x float]* %2, i32 0, i32 0
	%46 = getelementptr [3 x float], [3 x float]* %3, i32 0, i32 0
	%47 = getelementptr [3 x float], [3 x float]* %4, i32 0, i32 0
	%48 = getelementptr [3 x float], [3 x float]* %5, i32 0, i32 0
	%49 = getelementptr [3 x float], [3 x float]* %6, i32 0, i32 0
	%50 = getelementptr [3 x float], [3 x float]* %7, i32 0, i32 0
	%51 = getelementptr [6 x float], [6 x float]* %8, i32 0, i32 0
	%52 = getelementptr [3 x float], [3 x float]* %9, i32 0, i32 0
	%53 = getelementptr [3 x float], [3 x float]* %10, i32 0, i32 0
	%54 = call i32 @add(float* %45, float* %46, float* %47, float* %48, float* %49, float* %50, float* %51, float* %52, float* %53)
	store i32 %54, i32* %11
	br label %55

55:
	%56 = load i32, i32* %11
	%57 = load i32, i32* @N
	%58 = icmp slt i32 %56, %57
	br i1 %58, label %59, label %67

59:
	%60 = load i32, i32* %11
	%61 = getelementptr [6 x float], [6 x float]* %8, i32 0, i32 %60
	%62 = load float, float* %61
	%63 = fptosi float %62 to i32
	store i32 %63, i32* %12
	%64 = load i32, i32* %12
	call void @putint(i32 %64)
	%65 = load i32, i32* %11
	%66 = add i32 %65, 1
	store i32 %66, i32* %11
	br label %55

67:
	store i32 10, i32* %12
	%68 = load i32, i32* %12
	call void @putch(i32 %68)
	store i32 0, i32* %11
	br label %69

69:
	%70 = load i32, i32* %11
	%71 = load i32, i32* @N
	%72 = icmp slt i32 %70, %71
	br i1 %72, label %73, label %81

73:
	%74 = load i32, i32* %11
	%75 = getelementptr [3 x float], [3 x float]* %9, i32 0, i32 %74
	%76 = load float, float* %75
	%77 = fptosi float %76 to i32
	store i32 %77, i32* %12
	%78 = load i32, i32* %12
	call void @putint(i32 %78)
	%79 = load i32, i32* %11
	%80 = add i32 %79, 1
	store i32 %80, i32* %11
	br label %69

81:
	store i32 10, i32* %12
	%82 = load i32, i32* %12
	call void @putch(i32 %82)
	store i32 0, i32* %11
	br label %83

83:
	%84 = load i32, i32* %11
	%85 = load i32, i32* @N
	%86 = icmp slt i32 %84, %85
	br i1 %86, label %87, label %95

87:
	%88 = load i32, i32* %11
	%89 = getelementptr [3 x float], [3 x float]* %10, i32 0, i32 %88
	%90 = load float, float* %89
	%91 = fptosi float %90 to i32
	store i32 %91, i32* %12
	%92 = load i32, i32* %12
	call void @putint(i32 %92)
	%93 = load i32, i32* %11
	%94 = add i32 %93, 1
	store i32 %94, i32* %11
	br label %83

95:
	store i32 10, i32* %12
	%96 = load i32, i32* %12
	call void @putch(i32 %96)
	store i32 0, i32* %1
	br label %97

97:
	%98 = load i32, i32* %1
	ret i32 %98

}

