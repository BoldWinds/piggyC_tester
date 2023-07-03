
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

define dso_local void @get_next(i32* %0, i32* %1) {
2:
	%3 = alloca i32*
	%4 = alloca i32*
	%5 = alloca i32
	%6 = alloca i32
	store i32* %0, i32** %3
	store i32* %1, i32** %4
	%7 = load i32*, i32** %4
	%8 = getelementptr i32, i32* %7, i32 0
	store i32 -1, i32* %8
	store i32 0, i32* %5
	store i32 -1, i32* %6
	br label %9

9:
	%10 = load i32, i32* %5
	%11 = load i32*, i32** %3
	%12 = getelementptr i32, i32* %11, i32 %10
	%13 = load i32, i32* %12
	%14 = icmp ne i32 %13, 0
	br i1 %14, label %15, label %43

15:
	%16 = load i32, i32* %6
	%17 = icmp eq i32 %16, -1
	br i1 %17, label %28, label %18

18:
	%19 = load i32, i32* %5
	%20 = load i32*, i32** %3
	%21 = getelementptr i32, i32* %20, i32 %19
	%22 = load i32, i32* %21
	%23 = load i32, i32* %6
	%24 = load i32*, i32** %3
	%25 = getelementptr i32, i32* %24, i32 %23
	%26 = load i32, i32* %25
	%27 = icmp eq i32 %22, %26
	br i1 %27, label %28, label %37

28:
	%29 = load i32, i32* %6
	%30 = add i32 %29, 1
	store i32 %30, i32* %6
	%31 = load i32, i32* %5
	%32 = add i32 %31, 1
	store i32 %32, i32* %5
	%33 = load i32, i32* %6
	%34 = load i32, i32* %5
	%35 = load i32*, i32** %4
	%36 = getelementptr i32, i32* %35, i32 %34
	store i32 %33, i32* %36
	br label %42

37:
	%38 = load i32, i32* %6
	%39 = load i32*, i32** %4
	%40 = getelementptr i32, i32* %39, i32 %38
	%41 = load i32, i32* %40
	store i32 %41, i32* %6
	br label %42

42:
	br label %9

43:
	br label %44

44:
	ret void

}

define dso_local i32 @KMP(i32* %0, i32* %1) {
2:
	%3 = alloca i32
	%4 = alloca i32*
	%5 = alloca i32*
	%6 = alloca [4096 x i32]
	%7 = alloca i32
	%8 = alloca i32
	store i32* %0, i32** %4
	store i32* %1, i32** %5
	%9 = load i32*, i32** %4
	%10 = getelementptr [4096 x i32], [4096 x i32]* %6, i32 0, i32 0
	call void @get_next(i32* %9, i32* %10)
	store i32 0, i32* %7
	store i32 0, i32* %8
	br label %11

11:
	%12 = load i32, i32* %8
	%13 = load i32*, i32** %5
	%14 = getelementptr i32, i32* %13, i32 %12
	%15 = load i32, i32* %14
	%16 = icmp ne i32 %15, 0
	br i1 %16, label %17, label %54

17:
	%18 = load i32, i32* %7
	%19 = load i32*, i32** %4
	%20 = getelementptr i32, i32* %19, i32 %18
	%21 = load i32, i32* %20
	%22 = load i32, i32* %8
	%23 = load i32*, i32** %5
	%24 = getelementptr i32, i32* %23, i32 %22
	%25 = load i32, i32* %24
	%26 = icmp eq i32 %21, %25
	br i1 %26, label %27, label %41

27:
	%28 = load i32, i32* %7
	%29 = add i32 %28, 1
	store i32 %29, i32* %7
	%30 = load i32, i32* %8
	%31 = add i32 %30, 1
	store i32 %31, i32* %8
	%32 = load i32, i32* %7
	%33 = load i32*, i32** %4
	%34 = getelementptr i32, i32* %33, i32 %32
	%35 = load i32, i32* %34
	%36 = icmp ne i32 %35, 0
	%37 = xor i1 %36, true
	br i1 %37, label %38, label %40

38:
	%39 = load i32, i32* %8
	store i32 %39, i32* %3
	br label %55

40:
	br label %53

41:
	%42 = load i32, i32* %7
	%43 = getelementptr [4096 x i32], [4096 x i32]* %6, i32 0, i32 %42
	%44 = load i32, i32* %43
	store i32 %44, i32* %7
	%45 = load i32, i32* %7
	%46 = icmp eq i32 %45, -1
	br i1 %46, label %47, label %52

47:
	%48 = load i32, i32* %7
	%49 = add i32 %48, 1
	store i32 %49, i32* %7
	%50 = load i32, i32* %8
	%51 = add i32 %50, 1
	store i32 %51, i32* %8
	br label %52

52:
	br label %53

53:
	br label %11

54:
	store i32 -1, i32* %3
	br label %55

55:
	%56 = load i32, i32* %3
	ret i32 %56

}

define dso_local i32 @read_str(i32* %0) {
1:
	%2 = alloca i32
	%3 = alloca i32*
	%4 = alloca i32
	store i32* %0, i32** %3
	store i32 0, i32* %4
	br label %5

5:
	%6 = icmp ne i32 1, 0
	br i1 %6, label %7, label %21

7:
	%8 = call i32 @getch()
	%9 = load i32, i32* %4
	%10 = load i32*, i32** %3
	%11 = getelementptr i32, i32* %10, i32 %9
	store i32 %8, i32* %11
	%12 = load i32, i32* %4
	%13 = load i32*, i32** %3
	%14 = getelementptr i32, i32* %13, i32 %12
	%15 = load i32, i32* %14
	%16 = icmp eq i32 %15, 10
	br i1 %16, label %17, label %18

17:
	br label %21

18:
	%19 = load i32, i32* %4
	%20 = add i32 %19, 1
	store i32 %20, i32* %4
	br label %5

21:
	%22 = load i32, i32* %4
	%23 = load i32*, i32** %3
	%24 = getelementptr i32, i32* %23, i32 %22
	store i32 0, i32* %24
	%25 = load i32, i32* %4
	store i32 %25, i32* %2
	br label %26

26:
	%27 = load i32, i32* %2
	ret i32 %27

}

define dso_local i32 @main() {
0:
	%1 = alloca i32
	%2 = alloca [4096 x i32]
	%3 = alloca [4096 x i32]
	%4 = getelementptr [4096 x i32], [4096 x i32]* %2, i32 0, i32 0
	%5 = call i32 @read_str(i32* %4)
	%6 = getelementptr [4096 x i32], [4096 x i32]* %3, i32 0, i32 0
	%7 = call i32 @read_str(i32* %6)
	%8 = getelementptr [4096 x i32], [4096 x i32]* %2, i32 0, i32 0
	%9 = getelementptr [4096 x i32], [4096 x i32]* %3, i32 0, i32 0
	%10 = call i32 @KMP(i32* %8, i32* %9)
	call void @putint(i32 %10)
	call void @putch(i32 10)
	store i32 0, i32* %1
	br label %11

11:
	%12 = load i32, i32* %1
	ret i32 %12

}

