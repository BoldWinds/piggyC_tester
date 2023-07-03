@n = dso_local global i32 0

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

define dso_local i32 @swap(i32* %0, i32 %1, i32 %2) {
3:
	%4 = alloca i32
	%5 = alloca i32*
	%6 = alloca i32
	%7 = alloca i32
	%8 = alloca i32
	store i32* %0, i32** %5
	store i32 %1, i32* %6
	store i32 %2, i32* %7
	%9 = load i32, i32* %6
	%10 = load i32*, i32** %5
	%11 = getelementptr i32, i32* %10, i32 %9
	%12 = load i32, i32* %11
	store i32 %12, i32* %8
	%13 = load i32, i32* %7
	%14 = load i32*, i32** %5
	%15 = getelementptr i32, i32* %14, i32 %13
	%16 = load i32, i32* %15
	%17 = load i32, i32* %6
	%18 = load i32*, i32** %5
	%19 = getelementptr i32, i32* %18, i32 %17
	store i32 %16, i32* %19
	%20 = load i32, i32* %8
	%21 = load i32, i32* %7
	%22 = load i32*, i32** %5
	%23 = getelementptr i32, i32* %22, i32 %21
	store i32 %20, i32* %23
	store i32 0, i32* %4
	br label %24

24:
	%25 = load i32, i32* %4
	ret i32 %25

}

define dso_local i32 @heap_ajust(i32* %0, i32 %1, i32 %2) {
3:
	%4 = alloca i32
	%5 = alloca i32*
	%6 = alloca i32
	%7 = alloca i32
	%8 = alloca i32
	%9 = alloca i32
	store i32* %0, i32** %5
	store i32 %1, i32* %6
	store i32 %2, i32* %7
	%10 = load i32, i32* %6
	store i32 %10, i32* %8
	%11 = load i32, i32* %8
	%12 = mul i32 %11, 2
	%13 = add i32 %12, 1
	store i32 %13, i32* %9
	br label %14

14:
	%15 = load i32, i32* %9
	%16 = load i32, i32* %7
	%17 = add i32 %16, 1
	%18 = icmp slt i32 %15, %17
	br i1 %18, label %19, label %58

19:
	%20 = load i32, i32* %9
	%21 = load i32, i32* %7
	%22 = icmp slt i32 %20, %21
	br i1 %22, label %23, label %37

23:
	%24 = load i32, i32* %9
	%25 = load i32*, i32** %5
	%26 = getelementptr i32, i32* %25, i32 %24
	%27 = load i32, i32* %26
	%28 = load i32, i32* %9
	%29 = add i32 %28, 1
	%30 = load i32*, i32** %5
	%31 = getelementptr i32, i32* %30, i32 %29
	%32 = load i32, i32* %31
	%33 = icmp slt i32 %27, %32
	br i1 %33, label %34, label %37

34:
	%35 = load i32, i32* %9
	%36 = add i32 %35, 1
	store i32 %36, i32* %9
	br label %37

37:
	%38 = load i32, i32* %8
	%39 = load i32*, i32** %5
	%40 = getelementptr i32, i32* %39, i32 %38
	%41 = load i32, i32* %40
	%42 = load i32, i32* %9
	%43 = load i32*, i32** %5
	%44 = getelementptr i32, i32* %43, i32 %42
	%45 = load i32, i32* %44
	%46 = icmp sgt i32 %41, %45
	br i1 %46, label %47, label %48

47:
	store i32 0, i32* %4
	br label %59

48:
	%49 = load i32*, i32** %5
	%50 = load i32, i32* %8
	%51 = load i32, i32* %9
	%52 = call i32 @swap(i32* %49, i32 %50, i32 %51)
	store i32 %52, i32* %8
	%53 = load i32, i32* %9
	store i32 %53, i32* %8
	%54 = load i32, i32* %8
	%55 = mul i32 %54, 2
	%56 = add i32 %55, 1
	store i32 %56, i32* %9
	br label %57

57:
	br label %14

58:
	store i32 0, i32* %4
	br label %59

59:
	%60 = load i32, i32* %4
	ret i32 %60

}

define dso_local i32 @heap_sort(i32* %0, i32 %1) {
2:
	%3 = alloca i32
	%4 = alloca i32*
	%5 = alloca i32
	%6 = alloca i32
	%7 = alloca i32
	%8 = alloca i32
	store i32* %0, i32** %4
	store i32 %1, i32* %5
	%9 = load i32, i32* %5
	%10 = sdiv i32 %9, 2
	%11 = sub i32 %10, 1
	store i32 %11, i32* %6
	br label %12

12:
	%13 = load i32, i32* %6
	%14 = icmp sgt i32 %13, -1
	br i1 %14, label %15, label %24

15:
	%16 = load i32, i32* %5
	%17 = sub i32 %16, 1
	store i32 %17, i32* %7
	%18 = load i32*, i32** %4
	%19 = load i32, i32* %6
	%20 = load i32, i32* %7
	%21 = call i32 @heap_ajust(i32* %18, i32 %19, i32 %20)
	store i32 %21, i32* %7
	%22 = load i32, i32* %6
	%23 = sub i32 %22, 1
	store i32 %23, i32* %6
	br label %12

24:
	%25 = load i32, i32* %5
	%26 = sub i32 %25, 1
	store i32 %26, i32* %6
	br label %27

27:
	%28 = load i32, i32* %6
	%29 = icmp sgt i32 %28, 0
	br i1 %29, label %30, label %43

30:
	store i32 0, i32* %8
	%31 = load i32*, i32** %4
	%32 = load i32, i32* %8
	%33 = load i32, i32* %6
	%34 = call i32 @swap(i32* %31, i32 %32, i32 %33)
	store i32 %34, i32* %7
	%35 = load i32, i32* %6
	%36 = sub i32 %35, 1
	store i32 %36, i32* %7
	%37 = load i32*, i32** %4
	%38 = load i32, i32* %8
	%39 = load i32, i32* %7
	%40 = call i32 @heap_ajust(i32* %37, i32 %38, i32 %39)
	store i32 %40, i32* %7
	%41 = load i32, i32* %6
	%42 = sub i32 %41, 1
	store i32 %42, i32* %6
	br label %27

43:
	store i32 0, i32* %3
	br label %44

44:
	%45 = load i32, i32* %3
	ret i32 %45

}

define dso_local i32 @main() {
0:
	%1 = alloca i32
	%2 = alloca [10 x i32]
	%3 = alloca i32
	%4 = alloca i32
	store i32 10, i32* @n
	%5 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 0
	store i32 4, i32* %5
	%6 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 1
	store i32 3, i32* %6
	%7 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 2
	store i32 9, i32* %7
	%8 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 3
	store i32 2, i32* %8
	%9 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 4
	store i32 0, i32* %9
	%10 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 5
	store i32 1, i32* %10
	%11 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 6
	store i32 6, i32* %11
	%12 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 7
	store i32 5, i32* %12
	%13 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 8
	store i32 7, i32* %13
	%14 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 9
	store i32 8, i32* %14
	store i32 0, i32* %3
	%15 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 0
	%16 = load i32, i32* @n
	%17 = call i32 @heap_sort(i32* %15, i32 %16)
	store i32 %17, i32* %3
	br label %18

18:
	%19 = load i32, i32* %3
	%20 = load i32, i32* @n
	%21 = icmp slt i32 %19, %20
	br i1 %21, label %22, label %30

22:
	%23 = load i32, i32* %3
	%24 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 %23
	%25 = load i32, i32* %24
	store i32 %25, i32* %4
	%26 = load i32, i32* %4
	call void @putint(i32 %26)
	store i32 10, i32* %4
	%27 = load i32, i32* %4
	call void @putch(i32 %27)
	%28 = load i32, i32* %3
	%29 = add i32 %28, 1
	store i32 %29, i32* %3
	br label %18

30:
	store i32 0, i32* %1
	br label %31

31:
	%32 = load i32, i32* %1
	ret i32 %32

}

