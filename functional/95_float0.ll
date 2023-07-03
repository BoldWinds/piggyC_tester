@RADIUS = dso_local constant float 0x4016000000000000
@PI = dso_local constant float 0x400921fb60000000
@EPS = dso_local constant float 0x3eb0c6f7a0000000
@PI_HEX = dso_local constant float 0x400921fb60000000
@HEX2 = dso_local constant float 0x3fb4000000000000
@FACT = dso_local constant float 0xc0e01d0000000000
@EVAL1 = dso_local constant float 0x4057c21fc0000000
@EVAL2 = dso_local constant float 0x4041475ce0000000
@EVAL3 = dso_local constant float 0x4041475ce0000000
@CONV1 = dso_local constant float 0x406d200000000000
@CONV2 = dso_local constant float 0x40affe0000000000
@MAX = dso_local constant i32 1000000000
@TWO = dso_local constant i32 2
@THREE = dso_local constant i32 3
@FIVE = dso_local constant i32 5

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

define dso_local float @float_abs(float %0) {
1:
	%2 = alloca float
	%3 = alloca float
	store float %0, float* %3
	%4 = load float, float* %3
	%5 = fcmp olt float %4, 0x0
	br i1 %5, label %6, label %9

6:
	%7 = load float, float* %3
	%8 = fneg float %7
	store float %8, float* %2
	br label %11

9:
	%10 = load float, float* %3
	store float %10, float* %2
	br label %11

11:
	%12 = load float, float* %2
	ret float %12

}

define dso_local float @circle_area(i32 %0) {
1:
	%2 = alloca float
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = load i32, i32* %3
	%5 = sitofp i32 %4 to float
	%6 = fmul float 0x400921fb60000000, %5
	%7 = load i32, i32* %3
	%8 = sitofp i32 %7 to float
	%9 = fmul float %6, %8
	%10 = load i32, i32* %3
	%11 = load i32, i32* %3
	%12 = mul i32 %10, %11
	%13 = sitofp i32 %12 to float
	%14 = fmul float %13, 0x400921fb60000000
	%15 = fadd float %9, %14
	%16 = fdiv float %15, 0x4000000000000000
	store float %16, float* %2
	br label %17

17:
	%18 = load float, float* %2
	ret float %18

}

define dso_local i32 @float_eq(float %0, float %1) {
2:
	%3 = alloca i32
	%4 = alloca float
	%5 = alloca float
	store float %0, float* %4
	store float %1, float* %5
	%6 = load float, float* %4
	%7 = load float, float* %5
	%8 = fsub float %6, %7
	%9 = call float @float_abs(float %8)
	%10 = fcmp olt float %9, 0x3eb0c6f7a0000000
	br i1 %10, label %11, label %12

11:
	store i32 1, i32* %3
	br label %14

12:
	store i32 0, i32* %3
	br label %14

13:
	br label %14

14:
	%15 = load i32, i32* %3
	ret i32 %15

}

define dso_local void @error() {
0:
	call void @putch(i32 101)
	call void @putch(i32 114)
	call void @putch(i32 114)
	call void @putch(i32 111)
	call void @putch(i32 114)
	call void @putch(i32 10)
	br label %1

1:
	ret void

}

define dso_local void @ok() {
0:
	call void @putch(i32 111)
	call void @putch(i32 107)
	call void @putch(i32 10)
	br label %1

1:
	ret void

}

define dso_local void @assert(i32 %0) {
1:
	%2 = alloca i32
	store i32 %0, i32* %2
	%3 = load i32, i32* %2
	%4 = icmp ne i32 %3, 0
	%5 = xor i1 %4, true
	br i1 %5, label %6, label %7

6:
	call void @error()
	br label %8

7:
	call void @ok()
	br label %8

8:
	br label %9

9:
	ret void

}

define dso_local void @assert_not(i32 %0) {
1:
	%2 = alloca i32
	store i32 %0, i32* %2
	%3 = load i32, i32* %2
	%4 = icmp ne i32 %3, 0
	br i1 %4, label %5, label %6

5:
	call void @error()
	br label %7

6:
	call void @ok()
	br label %7

7:
	br label %8

8:
	ret void

}

define dso_local i32 @main() {
0:
	%1 = alloca i32
	%2 = alloca i32
	%3 = alloca i32
	%4 = alloca [10 x float]
	%5 = alloca i32
	%6 = alloca float
	%7 = alloca float
	%8 = alloca float
	%9 = call i32 @float_eq(float 0x3fb4000000000000, float 0xc0e01d0000000000)
	call void @assert_not(i32 %9)
	%10 = call i32 @float_eq(float 0x4057c21fc0000000, float 0x4041475ce0000000)
	call void @assert_not(i32 %10)
	%11 = call i32 @float_eq(float 0x4041475ce0000000, float 0x4041475ce0000000)
	call void @assert(i32 %11)
	%12 = call float @circle_area(i32 0x4016000000000000)
	%13 = call float @circle_area(i32 5)
	%14 = call i32 @float_eq(float %12, float %13)
	call void @assert(i32 %14)
	%15 = call i32 @float_eq(float 0x406d200000000000, float 0x40affe0000000000)
	call void @assert_not(i32 %15)
	%16 = fcmp one float 0x3ff8000000000000, 0x0
	br i1 %16, label %17, label %18

17:
	call void @ok()
	br label %18

18:
	%19 = fcmp one float 0x400a666660000000, 0x0
	%20 = xor i1 %19, true
	%21 = xor i1 %20, true
	br i1 %21, label %22, label %23

22:
	call void @ok()
	br label %23

23:
	%24 = fcmp one float 0x0, 0x0
	br i1 %24, label %25, label %28

25:
	%26 = icmp ne i32 3, 0
	br i1 %26, label %27, label %28

27:
	call void @error()
	br label %28

28:
	%29 = icmp ne i32 0, 0
	br i1 %29, label %32, label %30

30:
	%31 = fcmp one float 0x3fd3333340000000, 0x0
	br i1 %31, label %32, label %33

32:
	call void @ok()
	br label %33

33:
	store i32 1, i32* %2
	store i32 0, i32* %3
	%34 = getelementptr [10 x float], [10 x float]* %4, i32 0, i32 0
	store float 0x3ff0000000000000, float* %34
	%35 = getelementptr [10 x float], [10 x float]* %4, i32 0, i32 1
	store float 0x4000000000000000, float* %35
	%36 = getelementptr [10 x float], [10 x float]* %4, i32 0, i32 2
	store float 0x0, float* %36
	%37 = getelementptr [10 x float], [10 x float]* %4, i32 0, i32 3
	store float 0x0, float* %37
	%38 = getelementptr [10 x float], [10 x float]* %4, i32 0, i32 4
	store float 0x0, float* %38
	%39 = getelementptr [10 x float], [10 x float]* %4, i32 0, i32 5
	store float 0x0, float* %39
	%40 = getelementptr [10 x float], [10 x float]* %4, i32 0, i32 6
	store float 0x0, float* %40
	%41 = getelementptr [10 x float], [10 x float]* %4, i32 0, i32 7
	store float 0x0, float* %41
	%42 = getelementptr [10 x float], [10 x float]* %4, i32 0, i32 8
	store float 0x0, float* %42
	%43 = getelementptr [10 x float], [10 x float]* %4, i32 0, i32 9
	store float 0x0, float* %43
	%44 = getelementptr [10 x float], [10 x float]* %4, i32 0, i32 0
	%45 = call i32 @getfarray(float* %44)
	store i32 %45, i32* %5
	br label %46

46:
	%47 = load i32, i32* %2
	%48 = icmp slt i32 %47, 1000000000
	br i1 %48, label %49, label %72

49:
	%50 = call float @getfloat()
	store float %50, float* %6
	%51 = load float, float* %6
	%52 = fmul float 0x400921fb60000000, %51
	%53 = load float, float* %6
	%54 = fmul float %52, %53
	store float %54, float* %7
	%55 = load float, float* %6
	%56 = call float @circle_area(i32 %55)
	store float %56, float* %8
	%57 = load i32, i32* %3
	%58 = getelementptr [10 x float], [10 x float]* %4, i32 0, i32 %57
	%59 = load float, float* %58
	%60 = load float, float* %6
	%61 = fadd float %59, %60
	%62 = load i32, i32* %3
	%63 = getelementptr [10 x float], [10 x float]* %4, i32 0, i32 %62
	store float %61, float* %63
	%64 = load float, float* %7
	call void @putfloat(float %64)
	call void @putch(i32 32)
	%65 = load float, float* %8
	call void @putint(i32 %65)
	call void @putch(i32 10)
	%66 = load i32, i32* %2
	%67 = sitofp i32 %66 to float
	%68 = fmul float %67, 0x4024000000000000
	%69 = fptosi float %68 to i32
	store i32 %69, i32* %2
	%70 = load i32, i32* %3
	%71 = add i32 %70, 1
	store i32 %71, i32* %3
	br label %46

72:
	%73 = load i32, i32* %5
	%74 = getelementptr [10 x float], [10 x float]* %4, i32 0, i32 0
	call void @putfarray(i32 %73, float* %74)
	store i32 0, i32* %1
	br label %75

75:
	%76 = load i32, i32* %1
	ret i32 %76

}

