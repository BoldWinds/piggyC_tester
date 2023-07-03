
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
	%4 = alloca [20 x i32]
	%5 = alloca i32
	store i32 2, i32* %2
	store i32 20, i32* %3
	%6 = getelementptr [20 x i32], [20 x i32]* %4, i32 0, i32 0
	store i32 1, i32* %6
	%7 = getelementptr [20 x i32], [20 x i32]* %4, i32 0, i32 1
	store i32 2, i32* %7
	%8 = getelementptr [20 x i32], [20 x i32]* %4, i32 0, i32 2
	store i32 0, i32* %8
	%9 = getelementptr [20 x i32], [20 x i32]* %4, i32 0, i32 3
	store i32 0, i32* %9
	%10 = getelementptr [20 x i32], [20 x i32]* %4, i32 0, i32 4
	store i32 0, i32* %10
	%11 = getelementptr [20 x i32], [20 x i32]* %4, i32 0, i32 5
	store i32 0, i32* %11
	%12 = getelementptr [20 x i32], [20 x i32]* %4, i32 0, i32 6
	store i32 0, i32* %12
	%13 = getelementptr [20 x i32], [20 x i32]* %4, i32 0, i32 7
	store i32 0, i32* %13
	%14 = getelementptr [20 x i32], [20 x i32]* %4, i32 0, i32 8
	store i32 0, i32* %14
	%15 = getelementptr [20 x i32], [20 x i32]* %4, i32 0, i32 9
	store i32 0, i32* %15
	%16 = getelementptr [20 x i32], [20 x i32]* %4, i32 0, i32 10
	store i32 0, i32* %16
	%17 = getelementptr [20 x i32], [20 x i32]* %4, i32 0, i32 11
	store i32 0, i32* %17
	%18 = getelementptr [20 x i32], [20 x i32]* %4, i32 0, i32 12
	store i32 0, i32* %18
	%19 = getelementptr [20 x i32], [20 x i32]* %4, i32 0, i32 13
	store i32 0, i32* %19
	%20 = getelementptr [20 x i32], [20 x i32]* %4, i32 0, i32 14
	store i32 0, i32* %20
	%21 = getelementptr [20 x i32], [20 x i32]* %4, i32 0, i32 15
	store i32 0, i32* %21
	%22 = getelementptr [20 x i32], [20 x i32]* %4, i32 0, i32 16
	store i32 0, i32* %22
	%23 = getelementptr [20 x i32], [20 x i32]* %4, i32 0, i32 17
	store i32 0, i32* %23
	%24 = getelementptr [20 x i32], [20 x i32]* %4, i32 0, i32 18
	store i32 0, i32* %24
	%25 = getelementptr [20 x i32], [20 x i32]* %4, i32 0, i32 19
	store i32 0, i32* %25
	store i32 0, i32* %5
	br label %26

26:
	%27 = load i32, i32* %2
	%28 = icmp slt i32 %27, 20
	br i1 %28, label %29, label %55

29:
	%30 = load i32, i32* %2
	%31 = getelementptr [20 x i32], [20 x i32]* %4, i32 0, i32 %30
	%32 = load i32, i32* %31
	%33 = load i32, i32* %2
	%34 = sub i32 %33, 1
	%35 = getelementptr [20 x i32], [20 x i32]* %4, i32 0, i32 %34
	%36 = load i32, i32* %35
	%37 = add i32 %32, %36
	%38 = load i32, i32* %2
	%39 = sub i32 %38, 2
	%40 = getelementptr [20 x i32], [20 x i32]* %4, i32 0, i32 %39
	%41 = load i32, i32* %40
	%42 = add i32 %37, %41
	%43 = load i32, i32* %2
	%44 = getelementptr [20 x i32], [20 x i32]* %4, i32 0, i32 %43
	store i32 %42, i32* %44
	%45 = load i32, i32* %5
	%46 = load i32, i32* %2
	%47 = getelementptr [20 x i32], [20 x i32]* %4, i32 0, i32 %46
	%48 = load i32, i32* %47
	%49 = add i32 %45, %48
	store i32 %49, i32* %5
	%50 = load i32, i32* %2
	%51 = getelementptr [20 x i32], [20 x i32]* %4, i32 0, i32 %50
	%52 = load i32, i32* %51
	call void @putint(i32 %52)
	call void @putch(i32 10)
	%53 = load i32, i32* %2
	%54 = add i32 %53, 1
	store i32 %54, i32* %2
	br label %26

55:
	%56 = load i32, i32* %5
	store i32 %56, i32* %1
	br label %57

57:
	%58 = load i32, i32* %1
	ret i32 %58

}

