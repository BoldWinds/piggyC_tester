@N = dso_local global i32 0
@M = dso_local global i32 0
@L = dso_local global i32 0

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

define dso_local i32 @sub(float* %0, float* %1, float* %2, float* %3, float* %4, float* %5, float* %6, float* %7, float* %8) {
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
	%23 = icmp slt i32 %22, 3
	br i1 %23, label %24, label %63

24:
	%25 = load i32, i32* %20
	%26 = load float*, float** %11
	%27 = getelementptr float, float* %26, i32 %25
	%28 = load float, float* %27
	%29 = load i32, i32* %20
	%30 = load float*, float** %14
	%31 = getelementptr float, float* %30, i32 %29
	%32 = load float, float* %31
	%33 = fsub float %28, %32
	%34 = load i32, i32* %20
	%35 = load float*, float** %17
	%36 = getelementptr float, float* %35, i32 %34
	store float %33, float* %36
	%37 = load i32, i32* %20
	%38 = load float*, float** %12
	%39 = getelementptr float, float* %38, i32 %37
	%40 = load float, float* %39
	%41 = load i32, i32* %20
	%42 = load float*, float** %15
	%43 = getelementptr float, float* %42, i32 %41
	%44 = load float, float* %43
	%45 = fsub float %40, %44
	%46 = load i32, i32* %20
	%47 = load float*, float** %18
	%48 = getelementptr float, float* %47, i32 %46
	store float %45, float* %48
	%49 = load i32, i32* %20
	%50 = load float*, float** %13
	%51 = getelementptr float, float* %50, i32 %49
	%52 = load float, float* %51
	%53 = load i32, i32* %20
	%54 = load float*, float** %16
	%55 = getelementptr float, float* %54, i32 %53
	%56 = load float, float* %55
	%57 = fsub float %52, %56
	%58 = load i32, i32* %20
	%59 = load float*, float** %19
	%60 = getelementptr float, float* %59, i32 %58
	store float %57, float* %60
	%61 = load i32, i32* %20
	%62 = add i32 %61, 1
	store i32 %62, i32* %20
	br label %21

63:
	store i32 0, i32* %10
	br label %64

64:
	%65 = load i32, i32* %10
	ret i32 %65

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
	%15 = icmp slt i32 %14, 3
	br i1 %15, label %16, label %43

16:
	%17 = load i32, i32* %11
	%18 = load i32, i32* %11
	%19 = getelementptr [3 x float], [3 x float]* %2, i32 0, i32 %18
	%20 = sitofp i32 %17 to float
	store float %20, float* %19
	%21 = load i32, i32* %11
	%22 = load i32, i32* %11
	%23 = getelementptr [3 x float], [3 x float]* %3, i32 0, i32 %22
	%24 = sitofp i32 %21 to float
	store float %24, float* %23
	%25 = load i32, i32* %11
	%26 = load i32, i32* %11
	%27 = getelementptr [3 x float], [3 x float]* %4, i32 0, i32 %26
	%28 = sitofp i32 %25 to float
	store float %28, float* %27
	%29 = load i32, i32* %11
	%30 = load i32, i32* %11
	%31 = getelementptr [3 x float], [3 x float]* %5, i32 0, i32 %30
	%32 = sitofp i32 %29 to float
	store float %32, float* %31
	%33 = load i32, i32* %11
	%34 = load i32, i32* %11
	%35 = getelementptr [3 x float], [3 x float]* %6, i32 0, i32 %34
	%36 = sitofp i32 %33 to float
	store float %36, float* %35
	%37 = load i32, i32* %11
	%38 = load i32, i32* %11
	%39 = getelementptr [3 x float], [3 x float]* %7, i32 0, i32 %38
	%40 = sitofp i32 %37 to float
	store float %40, float* %39
	%41 = load i32, i32* %11
	%42 = add i32 %41, 1
	store i32 %42, i32* %11
	br label %13

43:
	%44 = getelementptr [3 x float], [3 x float]* %2, i32 0, i32 0
	%45 = getelementptr [3 x float], [3 x float]* %3, i32 0, i32 0
	%46 = getelementptr [3 x float], [3 x float]* %4, i32 0, i32 0
	%47 = getelementptr [3 x float], [3 x float]* %5, i32 0, i32 0
	%48 = getelementptr [3 x float], [3 x float]* %6, i32 0, i32 0
	%49 = getelementptr [3 x float], [3 x float]* %7, i32 0, i32 0
	%50 = getelementptr [6 x float], [6 x float]* %8, i32 0, i32 0
	%51 = getelementptr [3 x float], [3 x float]* %9, i32 0, i32 0
	%52 = getelementptr [3 x float], [3 x float]* %10, i32 0, i32 0
	%53 = call i32 @sub(float* %44, float* %45, float* %46, float* %47, float* %48, float* %49, float* %50, float* %51, float* %52)
	store i32 %53, i32* %11
	br label %54

54:
	%55 = load i32, i32* %11
	%56 = icmp slt i32 %55, 3
	br i1 %56, label %57, label %65

57:
	%58 = load i32, i32* %11
	%59 = getelementptr [6 x float], [6 x float]* %8, i32 0, i32 %58
	%60 = load float, float* %59
	%61 = fptosi float %60 to i32
	store i32 %61, i32* %12
	%62 = load i32, i32* %12
	call void @putint(i32 %62)
	%63 = load i32, i32* %11
	%64 = add i32 %63, 1
	store i32 %64, i32* %11
	br label %54

65:
	store i32 10, i32* %12
	store i32 0, i32* %11
	%66 = load i32, i32* %12
	call void @putch(i32 %66)
	br label %67

67:
	%68 = load i32, i32* %11
	%69 = icmp slt i32 %68, 3
	br i1 %69, label %70, label %78

70:
	%71 = load i32, i32* %11
	%72 = getelementptr [3 x float], [3 x float]* %9, i32 0, i32 %71
	%73 = load float, float* %72
	%74 = fptosi float %73 to i32
	store i32 %74, i32* %12
	%75 = load i32, i32* %12
	call void @putint(i32 %75)
	%76 = load i32, i32* %11
	%77 = add i32 %76, 1
	store i32 %77, i32* %11
	br label %67

78:
	store i32 10, i32* %12
	store i32 0, i32* %11
	%79 = load i32, i32* %12
	call void @putch(i32 %79)
	br label %80

80:
	%81 = load i32, i32* %11
	%82 = icmp slt i32 %81, 3
	br i1 %82, label %83, label %91

83:
	%84 = load i32, i32* %11
	%85 = getelementptr [3 x float], [3 x float]* %10, i32 0, i32 %84
	%86 = load float, float* %85
	%87 = fptosi float %86 to i32
	store i32 %87, i32* %12
	%88 = load i32, i32* %12
	call void @putint(i32 %88)
	%89 = load i32, i32* %11
	%90 = add i32 %89, 1
	store i32 %90, i32* %11
	br label %80

91:
	store i32 10, i32* %12
	%92 = load i32, i32* %12
	call void @putch(i32 %92)
	store i32 0, i32* %1
	br label %93

93:
	%94 = load i32, i32* %1
	ret i32 %94

}

