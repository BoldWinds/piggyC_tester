
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
	%2 = alloca [4 x [2 x i32]]
	%3 = alloca i32
	%4 = alloca [4 x [2 x i32]]
	%5 = alloca [4 x [2 x i32]]
	%6 = alloca [4 x [2 x i32]]
	%7 = alloca [4 x [2 x [1 x i32]]]
	%8 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %2, i32 0, i32 0, i32 0
	store i32 1, i32* %8
	%9 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %2, i32 0, i32 0, i32 1
	store i32 2, i32* %9
	%10 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %2, i32 0, i32 1, i32 0
	store i32 3, i32* %10
	%11 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %2, i32 0, i32 1, i32 1
	store i32 4, i32* %11
	%12 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %2, i32 0, i32 2, i32 0
	store i32 0, i32* %12
	%13 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %2, i32 0, i32 2, i32 1
	store i32 0, i32* %13
	%14 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %2, i32 0, i32 3, i32 0
	store i32 7, i32* %14
	%15 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %2, i32 0, i32 3, i32 1
	store i32 0, i32* %15
	store i32 3, i32* %3
	%16 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %4, i32 0, i32 0, i32 0
	store i32 0, i32* %16
	%17 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %4, i32 0, i32 0, i32 1
	store i32 0, i32* %17
	%18 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %4, i32 0, i32 1, i32 0
	store i32 0, i32* %18
	%19 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %4, i32 0, i32 1, i32 1
	store i32 0, i32* %19
	%20 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %4, i32 0, i32 2, i32 0
	store i32 0, i32* %20
	%21 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %4, i32 0, i32 2, i32 1
	store i32 0, i32* %21
	%22 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %4, i32 0, i32 3, i32 0
	store i32 0, i32* %22
	%23 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %4, i32 0, i32 3, i32 1
	store i32 0, i32* %23
	%24 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %5, i32 0, i32 0, i32 0
	store i32 1, i32* %24
	%25 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %5, i32 0, i32 0, i32 1
	store i32 2, i32* %25
	%26 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %5, i32 0, i32 1, i32 0
	store i32 3, i32* %26
	%27 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %5, i32 0, i32 1, i32 1
	store i32 4, i32* %27
	%28 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %5, i32 0, i32 2, i32 0
	store i32 5, i32* %28
	%29 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %5, i32 0, i32 2, i32 1
	store i32 6, i32* %29
	%30 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %5, i32 0, i32 3, i32 0
	store i32 7, i32* %30
	%31 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %5, i32 0, i32 3, i32 1
	store i32 8, i32* %31
	%32 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %6, i32 0, i32 0, i32 0
	store i32 1, i32* %32
	%33 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %6, i32 0, i32 0, i32 1
	store i32 2, i32* %33
	%34 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %6, i32 0, i32 1, i32 0
	store i32 3, i32* %34
	%35 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %6, i32 0, i32 1, i32 1
	store i32 0, i32* %35
	%36 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %6, i32 0, i32 2, i32 0
	store i32 5, i32* %36
	%37 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %6, i32 0, i32 2, i32 1
	store i32 0, i32* %37
	%38 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %6, i32 0, i32 3, i32 0
	store i32 7, i32* %38
	%39 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %6, i32 0, i32 3, i32 1
	store i32 8, i32* %39
	%40 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %6, i32 0, i32 2, i32 1
	%41 = load i32, i32* %40
	%42 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %5, i32 0, i32 2, i32 1
	%43 = load i32, i32* %42
	%44 = getelementptr [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %7, i32 0, i32 0, i32 0, i32 0
	store i32 %41, i32* %44
	%45 = getelementptr [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %7, i32 0, i32 0, i32 1, i32 0
	store i32 %43, i32* %45
	%46 = getelementptr [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %7, i32 0, i32 1, i32 0, i32 0
	store i32 3, i32* %46
	%47 = getelementptr [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %7, i32 0, i32 1, i32 1, i32 0
	store i32 4, i32* %47
	%48 = getelementptr [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %7, i32 0, i32 2, i32 0, i32 0
	store i32 5, i32* %48
	%49 = getelementptr [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %7, i32 0, i32 2, i32 1, i32 0
	store i32 6, i32* %49
	%50 = getelementptr [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %7, i32 0, i32 3, i32 0, i32 0
	store i32 7, i32* %50
	%51 = getelementptr [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %7, i32 0, i32 3, i32 1, i32 0
	store i32 8, i32* %51
	%52 = getelementptr [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %7, i32 0, i32 3, i32 1, i32 0
	%53 = load i32, i32* %52
	%54 = getelementptr [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %7, i32 0, i32 0, i32 0, i32 0
	%55 = load i32, i32* %54
	%56 = add i32 %53, %55
	%57 = getelementptr [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %7, i32 0, i32 0, i32 1, i32 0
	%58 = load i32, i32* %57
	%59 = add i32 %56, %58
	%60 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %6, i32 0, i32 3, i32 0
	%61 = load i32, i32* %60
	%62 = add i32 %59, %61
	store i32 %62, i32* %1
	br label %63

63:
	%64 = load i32, i32* %1
	ret i32 %64

}

