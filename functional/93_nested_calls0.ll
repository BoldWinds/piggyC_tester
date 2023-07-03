
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

define dso_local i32 @func1(i32 %0, i32 %1, i32 %2) {
3:
	%4 = alloca i32
	%5 = alloca i32
	%6 = alloca i32
	%7 = alloca i32
	store i32 %0, i32* %5
	store i32 %1, i32* %6
	store i32 %2, i32* %7
	%8 = load i32, i32* %7
	%9 = icmp eq i32 %8, 0
	br i1 %9, label %10, label %14

10:
	%11 = load i32, i32* %5
	%12 = load i32, i32* %6
	%13 = mul i32 %11, %12
	store i32 %13, i32* %4
	br label %21

14:
	%15 = load i32, i32* %5
	%16 = load i32, i32* %6
	%17 = load i32, i32* %7
	%18 = sub i32 %16, %17
	%19 = call i32 @func1(i32 %15, i32 %18, i32 0)
	store i32 %19, i32* %4
	br label %21

20:
	br label %21

21:
	%22 = load i32, i32* %4
	ret i32 %22

}

define dso_local i32 @func2(i32 %0, i32 %1) {
2:
	%3 = alloca i32
	%4 = alloca i32
	%5 = alloca i32
	store i32 %0, i32* %4
	store i32 %1, i32* %5
	%6 = load i32, i32* %5
	%7 = icmp ne i32 %6, 0
	br i1 %7, label %8, label %13

8:
	%9 = load i32, i32* %4
	%10 = load i32, i32* %5
	%11 = srem i32 %9, %10
	%12 = call i32 @func2(i32 %11, i32 0)
	store i32 %12, i32* %3
	br label %16

13:
	%14 = load i32, i32* %4
	store i32 %14, i32* %3
	br label %16

15:
	br label %16

16:
	%17 = load i32, i32* %3
	ret i32 %17

}

define dso_local i32 @func3(i32 %0, i32 %1) {
2:
	%3 = alloca i32
	%4 = alloca i32
	%5 = alloca i32
	store i32 %0, i32* %4
	store i32 %1, i32* %5
	%6 = load i32, i32* %5
	%7 = icmp eq i32 %6, 0
	br i1 %7, label %8, label %11

8:
	%9 = load i32, i32* %4
	%10 = add i32 %9, 1
	store i32 %10, i32* %3
	br label %17

11:
	%12 = load i32, i32* %4
	%13 = load i32, i32* %5
	%14 = add i32 %12, %13
	%15 = call i32 @func3(i32 %14, i32 0)
	store i32 %15, i32* %3
	br label %17

16:
	br label %17

17:
	%18 = load i32, i32* %3
	ret i32 %18

}

define dso_local i32 @func4(i32 %0, i32 %1, i32 %2) {
3:
	%4 = alloca i32
	%5 = alloca i32
	%6 = alloca i32
	%7 = alloca i32
	store i32 %0, i32* %5
	store i32 %1, i32* %6
	store i32 %2, i32* %7
	%8 = load i32, i32* %5
	%9 = icmp ne i32 %8, 0
	br i1 %9, label %10, label %12

10:
	%11 = load i32, i32* %6
	store i32 %11, i32* %4
	br label %15

12:
	%13 = load i32, i32* %7
	store i32 %13, i32* %4
	br label %15

14:
	br label %15

15:
	%16 = load i32, i32* %4
	ret i32 %16

}

define dso_local i32 @func5(i32 %0) {
1:
	%2 = alloca i32
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = load i32, i32* %3
	%5 = sub i32 0, %4
	store i32 %5, i32* %2
	br label %6

6:
	%7 = load i32, i32* %2
	ret i32 %7

}

define dso_local i32 @func6(i32 %0, i32 %1) {
2:
	%3 = alloca i32
	%4 = alloca i32
	%5 = alloca i32
	store i32 %0, i32* %4
	store i32 %1, i32* %5
	%6 = load i32, i32* %4
	%7 = icmp ne i32 %6, 0
	br i1 %7, label %8, label %12

8:
	%9 = load i32, i32* %5
	%10 = icmp ne i32 %9, 0
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

define dso_local i32 @func7(i32 %0) {
1:
	%2 = alloca i32
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = load i32, i32* %3
	%5 = icmp ne i32 %4, 0
	%6 = xor i1 %5, true
	br i1 %6, label %7, label %8

7:
	store i32 1, i32* %2
	br label %10

8:
	store i32 0, i32* %2
	br label %10

9:
	br label %10

10:
	%11 = load i32, i32* %2
	ret i32 %11

}

define dso_local i32 @main() {
0:
	%1 = alloca i32
	%2 = alloca i32
	%3 = alloca i32
	%4 = alloca i32
	%5 = alloca i32
	%6 = alloca [10 x i32]
	%7 = alloca i32
	%8 = alloca i32
	%9 = call i32 @getint()
	store i32 %9, i32* %2
	%10 = call i32 @getint()
	store i32 %10, i32* %3
	%11 = call i32 @getint()
	store i32 %11, i32* %4
	%12 = call i32 @getint()
	store i32 %12, i32* %5
	store i32 0, i32* %7
	br label %13

13:
	%14 = load i32, i32* %7
	%15 = icmp slt i32 %14, 10
	br i1 %15, label %16, label %22

16:
	%17 = call i32 @getint()
	%18 = load i32, i32* %7
	%19 = getelementptr [10 x i32], [10 x i32]* %6, i32 0, i32 %18
	store i32 %17, i32* %19
	%20 = load i32, i32* %7
	%21 = add i32 %20, 1
	store i32 %21, i32* %7
	br label %13

22:
	%23 = load i32, i32* %2
	%24 = call i32 @func7(i32 %23)
	%25 = load i32, i32* %3
	%26 = call i32 @func5(i32 %25)
	%27 = call i32 @func6(i32 %24, i32 %26)
	%28 = load i32, i32* %4
	%29 = call i32 @func2(i32 %27, i32 %28)
	%30 = load i32, i32* %5
	%31 = call i32 @func3(i32 %29, i32 %30)
	%32 = call i32 @func5(i32 %31)
	%33 = getelementptr [10 x i32], [10 x i32]* %6, i32 0, i32 0
	%34 = load i32, i32* %33
	%35 = getelementptr [10 x i32], [10 x i32]* %6, i32 0, i32 1
	%36 = load i32, i32* %35
	%37 = call i32 @func5(i32 %36)
	%38 = getelementptr [10 x i32], [10 x i32]* %6, i32 0, i32 2
	%39 = load i32, i32* %38
	%40 = getelementptr [10 x i32], [10 x i32]* %6, i32 0, i32 3
	%41 = load i32, i32* %40
	%42 = call i32 @func7(i32 %41)
	%43 = call i32 @func6(i32 %39, i32 %42)
	%44 = getelementptr [10 x i32], [10 x i32]* %6, i32 0, i32 4
	%45 = load i32, i32* %44
	%46 = getelementptr [10 x i32], [10 x i32]* %6, i32 0, i32 5
	%47 = load i32, i32* %46
	%48 = call i32 @func7(i32 %47)
	%49 = call i32 @func2(i32 %45, i32 %48)
	%50 = call i32 @func4(i32 %37, i32 %43, i32 %49)
	%51 = getelementptr [10 x i32], [10 x i32]* %6, i32 0, i32 6
	%52 = load i32, i32* %51
	%53 = call i32 @func3(i32 %50, i32 %52)
	%54 = getelementptr [10 x i32], [10 x i32]* %6, i32 0, i32 7
	%55 = load i32, i32* %54
	%56 = call i32 @func2(i32 %53, i32 %55)
	%57 = getelementptr [10 x i32], [10 x i32]* %6, i32 0, i32 8
	%58 = load i32, i32* %57
	%59 = getelementptr [10 x i32], [10 x i32]* %6, i32 0, i32 9
	%60 = load i32, i32* %59
	%61 = call i32 @func7(i32 %60)
	%62 = call i32 @func3(i32 %58, i32 %61)
	%63 = load i32, i32* %2
	%64 = call i32 @func1(i32 %56, i32 %62, i32 %63)
	%65 = call i32 @func4(i32 %32, i32 %34, i32 %64)
	%66 = load i32, i32* %3
	%67 = load i32, i32* %4
	%68 = call i32 @func7(i32 %67)
	%69 = load i32, i32* %5
	%70 = call i32 @func3(i32 %68, i32 %69)
	%71 = call i32 @func2(i32 %66, i32 %70)
	%72 = call i32 @func3(i32 %65, i32 %71)
	%73 = getelementptr [10 x i32], [10 x i32]* %6, i32 0, i32 0
	%74 = load i32, i32* %73
	%75 = getelementptr [10 x i32], [10 x i32]* %6, i32 0, i32 1
	%76 = load i32, i32* %75
	%77 = call i32 @func1(i32 %72, i32 %74, i32 %76)
	%78 = getelementptr [10 x i32], [10 x i32]* %6, i32 0, i32 2
	%79 = load i32, i32* %78
	%80 = call i32 @func2(i32 %77, i32 %79)
	%81 = getelementptr [10 x i32], [10 x i32]* %6, i32 0, i32 3
	%82 = load i32, i32* %81
	%83 = getelementptr [10 x i32], [10 x i32]* %6, i32 0, i32 4
	%84 = load i32, i32* %83
	%85 = getelementptr [10 x i32], [10 x i32]* %6, i32 0, i32 5
	%86 = load i32, i32* %85
	%87 = call i32 @func5(i32 %86)
	%88 = call i32 @func3(i32 %84, i32 %87)
	%89 = getelementptr [10 x i32], [10 x i32]* %6, i32 0, i32 6
	%90 = load i32, i32* %89
	%91 = call i32 @func5(i32 %90)
	%92 = call i32 @func2(i32 %88, i32 %91)
	%93 = getelementptr [10 x i32], [10 x i32]* %6, i32 0, i32 7
	%94 = load i32, i32* %93
	%95 = getelementptr [10 x i32], [10 x i32]* %6, i32 0, i32 8
	%96 = load i32, i32* %95
	%97 = call i32 @func7(i32 %96)
	%98 = call i32 @func1(i32 %92, i32 %94, i32 %97)
	%99 = getelementptr [10 x i32], [10 x i32]* %6, i32 0, i32 9
	%100 = load i32, i32* %99
	%101 = call i32 @func5(i32 %100)
	%102 = call i32 @func2(i32 %98, i32 %101)
	%103 = load i32, i32* %2
	%104 = call i32 @func3(i32 %102, i32 %103)
	%105 = call i32 @func1(i32 %80, i32 %82, i32 %104)
	store i32 %105, i32* %8
	%106 = load i32, i32* %8
	store i32 %106, i32* %1
	br label %107

107:
	%108 = load i32, i32* %1
	ret i32 %108

}

