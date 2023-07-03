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

define dso_local i32 @bubblesort(i32* %0) {
1:
	%2 = alloca i32
	%3 = alloca i32*
	%4 = alloca i32
	%5 = alloca i32
	%6 = alloca i32
	store i32* %0, i32** %3
	store i32 0, i32* %4
	br label %7

7:
	%8 = load i32, i32* %4
	%9 = load i32, i32* @n
	%10 = sub i32 %9, 1
	%11 = icmp slt i32 %8, %10
	br i1 %11, label %12, label %55

12:
	store i32 0, i32* %5
	br label %13

13:
	%14 = load i32, i32* %5
	%15 = load i32, i32* @n
	%16 = load i32, i32* %4
	%17 = sub i32 %15, %16
	%18 = sub i32 %17, 1
	%19 = icmp slt i32 %14, %18
	br i1 %19, label %20, label %52

20:
	%21 = load i32, i32* %5
	%22 = load i32*, i32** %3
	%23 = getelementptr i32, i32* %22, i32 %21
	%24 = load i32, i32* %23
	%25 = load i32, i32* %5
	%26 = add i32 %25, 1
	%27 = load i32*, i32** %3
	%28 = getelementptr i32, i32* %27, i32 %26
	%29 = load i32, i32* %28
	%30 = icmp sgt i32 %24, %29
	br i1 %30, label %31, label %49

31:
	%32 = load i32, i32* %5
	%33 = add i32 %32, 1
	%34 = load i32*, i32** %3
	%35 = getelementptr i32, i32* %34, i32 %33
	%36 = load i32, i32* %35
	store i32 %36, i32* %6
	%37 = load i32, i32* %5
	%38 = load i32*, i32** %3
	%39 = getelementptr i32, i32* %38, i32 %37
	%40 = load i32, i32* %39
	%41 = load i32, i32* %5
	%42 = add i32 %41, 1
	%43 = load i32*, i32** %3
	%44 = getelementptr i32, i32* %43, i32 %42
	store i32 %40, i32* %44
	%45 = load i32, i32* %6
	%46 = load i32, i32* %5
	%47 = load i32*, i32** %3
	%48 = getelementptr i32, i32* %47, i32 %46
	store i32 %45, i32* %48
	br label %49

49:
	%50 = load i32, i32* %5
	%51 = add i32 %50, 1
	store i32 %51, i32* %5
	br label %13

52:
	%53 = load i32, i32* %4
	%54 = add i32 %53, 1
	store i32 %54, i32* %4
	br label %7

55:
	store i32 0, i32* %2
	br label %56

56:
	%57 = load i32, i32* %2
	ret i32 %57

}

define dso_local i32 @insertsort(i32* %0) {
1:
	%2 = alloca i32
	%3 = alloca i32*
	%4 = alloca i32
	%5 = alloca i32
	%6 = alloca i32
	store i32* %0, i32** %3
	store i32 1, i32* %4
	br label %7

7:
	%8 = load i32, i32* %4
	%9 = load i32, i32* @n
	%10 = icmp slt i32 %8, %9
	br i1 %10, label %11, label %47

11:
	%12 = load i32, i32* %4
	%13 = load i32*, i32** %3
	%14 = getelementptr i32, i32* %13, i32 %12
	%15 = load i32, i32* %14
	store i32 %15, i32* %5
	%16 = load i32, i32* %4
	%17 = sub i32 %16, 1
	store i32 %17, i32* %6
	br label %18

18:
	%19 = load i32, i32* %6
	%20 = icmp sgt i32 %19, -1
	br i1 %20, label %21, label %39

21:
	%22 = load i32, i32* %5
	%23 = load i32, i32* %6
	%24 = load i32*, i32** %3
	%25 = getelementptr i32, i32* %24, i32 %23
	%26 = load i32, i32* %25
	%27 = icmp slt i32 %22, %26
	br i1 %27, label %28, label %39

28:
	%29 = load i32, i32* %6
	%30 = load i32*, i32** %3
	%31 = getelementptr i32, i32* %30, i32 %29
	%32 = load i32, i32* %31
	%33 = load i32, i32* %6
	%34 = add i32 %33, 1
	%35 = load i32*, i32** %3
	%36 = getelementptr i32, i32* %35, i32 %34
	store i32 %32, i32* %36
	%37 = load i32, i32* %6
	%38 = sub i32 %37, 1
	store i32 %38, i32* %6
	br label %18

39:
	%40 = load i32, i32* %5
	%41 = load i32, i32* %6
	%42 = add i32 %41, 1
	%43 = load i32*, i32** %3
	%44 = getelementptr i32, i32* %43, i32 %42
	store i32 %40, i32* %44
	%45 = load i32, i32* %4
	%46 = add i32 %45, 1
	store i32 %46, i32* %4
	br label %7

47:
	store i32 0, i32* %2
	br label %48

48:
	%49 = load i32, i32* %2
	ret i32 %49

}

define dso_local i32 @QuickSort(i32* %0, i32 %1, i32 %2) {
3:
	%4 = alloca i32
	%5 = alloca i32*
	%6 = alloca i32
	%7 = alloca i32
	%8 = alloca i32
	%9 = alloca i32
	%10 = alloca i32
	%11 = alloca i32
	store i32* %0, i32** %5
	store i32 %1, i32* %6
	store i32 %2, i32* %7
	%12 = load i32, i32* %6
	%13 = load i32, i32* %7
	%14 = icmp slt i32 %12, %13
	br i1 %14, label %15, label %103

15:
	%16 = load i32, i32* %6
	store i32 %16, i32* %8
	%17 = load i32, i32* %7
	store i32 %17, i32* %9
	%18 = load i32, i32* %6
	%19 = load i32*, i32** %5
	%20 = getelementptr i32, i32* %19, i32 %18
	%21 = load i32, i32* %20
	store i32 %21, i32* %10
	br label %22

22:
	%23 = load i32, i32* %8
	%24 = load i32, i32* %9
	%25 = icmp slt i32 %23, %24
	br i1 %25, label %26, label %86

26:
	br label %27

27:
	%28 = load i32, i32* %8
	%29 = load i32, i32* %9
	%30 = icmp slt i32 %28, %29
	br i1 %30, label %31, label %42

31:
	%32 = load i32, i32* %9
	%33 = load i32*, i32** %5
	%34 = getelementptr i32, i32* %33, i32 %32
	%35 = load i32, i32* %34
	%36 = load i32, i32* %10
	%37 = sub i32 %36, 1
	%38 = icmp sgt i32 %35, %37
	br i1 %38, label %39, label %42

39:
	%40 = load i32, i32* %9
	%41 = sub i32 %40, 1
	store i32 %41, i32* %9
	br label %27

42:
	%43 = load i32, i32* %8
	%44 = load i32, i32* %9
	%45 = icmp slt i32 %43, %44
	br i1 %45, label %46, label %56

46:
	%47 = load i32, i32* %9
	%48 = load i32*, i32** %5
	%49 = getelementptr i32, i32* %48, i32 %47
	%50 = load i32, i32* %49
	%51 = load i32, i32* %8
	%52 = load i32*, i32** %5
	%53 = getelementptr i32, i32* %52, i32 %51
	store i32 %50, i32* %53
	%54 = load i32, i32* %8
	%55 = add i32 %54, 1
	store i32 %55, i32* %8
	br label %56

56:
	br label %57

57:
	%58 = load i32, i32* %8
	%59 = load i32, i32* %9
	%60 = icmp slt i32 %58, %59
	br i1 %60, label %61, label %71

61:
	%62 = load i32, i32* %8
	%63 = load i32*, i32** %5
	%64 = getelementptr i32, i32* %63, i32 %62
	%65 = load i32, i32* %64
	%66 = load i32, i32* %10
	%67 = icmp slt i32 %65, %66
	br i1 %67, label %68, label %71

68:
	%69 = load i32, i32* %8
	%70 = add i32 %69, 1
	store i32 %70, i32* %8
	br label %57

71:
	%72 = load i32, i32* %8
	%73 = load i32, i32* %9
	%74 = icmp slt i32 %72, %73
	br i1 %74, label %75, label %85

75:
	%76 = load i32, i32* %8
	%77 = load i32*, i32** %5
	%78 = getelementptr i32, i32* %77, i32 %76
	%79 = load i32, i32* %78
	%80 = load i32, i32* %9
	%81 = load i32*, i32** %5
	%82 = getelementptr i32, i32* %81, i32 %80
	store i32 %79, i32* %82
	%83 = load i32, i32* %9
	%84 = sub i32 %83, 1
	store i32 %84, i32* %9
	br label %85

85:
	br label %22

86:
	%87 = load i32, i32* %10
	%88 = load i32, i32* %8
	%89 = load i32*, i32** %5
	%90 = getelementptr i32, i32* %89, i32 %88
	store i32 %87, i32* %90
	%91 = load i32, i32* %8
	%92 = sub i32 %91, 1
	store i32 %92, i32* %11
	%93 = load i32*, i32** %5
	%94 = load i32, i32* %6
	%95 = load i32, i32* %11
	%96 = call i32 @QuickSort(i32* %93, i32 %94, i32 %95)
	store i32 %96, i32* %11
	%97 = load i32, i32* %8
	%98 = add i32 %97, 1
	store i32 %98, i32* %11
	%99 = load i32*, i32** %5
	%100 = load i32, i32* %11
	%101 = load i32, i32* %7
	%102 = call i32 @QuickSort(i32* %99, i32 %100, i32 %101)
	store i32 %102, i32* %11
	br label %103

103:
	store i32 0, i32* %4
	br label %104

104:
	%105 = load i32, i32* %4
	ret i32 %105

}

define dso_local i32 @getMid(i32* %0) {
1:
	%2 = alloca i32
	%3 = alloca i32*
	%4 = alloca i32
	store i32* %0, i32** %3
	%5 = load i32, i32* @n
	%6 = srem i32 %5, 2
	%7 = icmp eq i32 %6, 0
	br i1 %7, label %8, label %22

8:
	%9 = load i32, i32* @n
	%10 = sdiv i32 %9, 2
	store i32 %10, i32* %4
	%11 = load i32, i32* %4
	%12 = load i32*, i32** %3
	%13 = getelementptr i32, i32* %12, i32 %11
	%14 = load i32, i32* %13
	%15 = load i32, i32* %4
	%16 = sub i32 %15, 1
	%17 = load i32*, i32** %3
	%18 = getelementptr i32, i32* %17, i32 %16
	%19 = load i32, i32* %18
	%20 = add i32 %14, %19
	%21 = sdiv i32 %20, 2
	store i32 %21, i32* %2
	br label %30

22:
	%23 = load i32, i32* @n
	%24 = sdiv i32 %23, 2
	store i32 %24, i32* %4
	%25 = load i32, i32* %4
	%26 = load i32*, i32** %3
	%27 = getelementptr i32, i32* %26, i32 %25
	%28 = load i32, i32* %27
	store i32 %28, i32* %2
	br label %30

29:
	br label %30

30:
	%31 = load i32, i32* %2
	ret i32 %31

}

define dso_local i32 @getMost(i32* %0) {
1:
	%2 = alloca i32
	%3 = alloca i32*
	%4 = alloca [1000 x i32]
	%5 = alloca i32
	%6 = alloca i32
	%7 = alloca i32
	%8 = alloca i32
	store i32* %0, i32** %3
	store i32 0, i32* %5
	br label %9

9:
	%10 = load i32, i32* %5
	%11 = icmp slt i32 %10, 1000
	br i1 %11, label %12, label %17

12:
	%13 = load i32, i32* %5
	%14 = getelementptr [1000 x i32], [1000 x i32]* %4, i32 0, i32 %13
	store i32 0, i32* %14
	%15 = load i32, i32* %5
	%16 = add i32 %15, 1
	store i32 %16, i32* %5
	br label %9

17:
	store i32 0, i32* %5
	store i32 0, i32* %6
	br label %18

18:
	%19 = load i32, i32* %5
	%20 = load i32, i32* @n
	%21 = icmp slt i32 %19, %20
	br i1 %21, label %22, label %46

22:
	%23 = load i32, i32* %5
	%24 = load i32*, i32** %3
	%25 = getelementptr i32, i32* %24, i32 %23
	%26 = load i32, i32* %25
	store i32 %26, i32* %8
	%27 = load i32, i32* %8
	%28 = getelementptr [1000 x i32], [1000 x i32]* %4, i32 0, i32 %27
	%29 = load i32, i32* %28
	%30 = add i32 %29, 1
	%31 = load i32, i32* %8
	%32 = getelementptr [1000 x i32], [1000 x i32]* %4, i32 0, i32 %31
	store i32 %30, i32* %32
	%33 = load i32, i32* %8
	%34 = getelementptr [1000 x i32], [1000 x i32]* %4, i32 0, i32 %33
	%35 = load i32, i32* %34
	%36 = load i32, i32* %6
	%37 = icmp sgt i32 %35, %36
	br i1 %37, label %38, label %43

38:
	%39 = load i32, i32* %8
	%40 = getelementptr [1000 x i32], [1000 x i32]* %4, i32 0, i32 %39
	%41 = load i32, i32* %40
	store i32 %41, i32* %6
	%42 = load i32, i32* %8
	store i32 %42, i32* %7
	br label %43

43:
	%44 = load i32, i32* %5
	%45 = add i32 %44, 1
	store i32 %45, i32* %5
	br label %18

46:
	%47 = load i32, i32* %7
	store i32 %47, i32* %2
	br label %48

48:
	%49 = load i32, i32* %2
	ret i32 %49

}

define dso_local i32 @revert(i32* %0) {
1:
	%2 = alloca i32
	%3 = alloca i32*
	%4 = alloca i32
	%5 = alloca i32
	%6 = alloca i32
	store i32* %0, i32** %3
	store i32 0, i32* %5
	store i32 0, i32* %6
	br label %7

7:
	%8 = load i32, i32* %5
	%9 = load i32, i32* %6
	%10 = icmp slt i32 %8, %9
	br i1 %10, label %11, label %31

11:
	%12 = load i32, i32* %5
	%13 = load i32*, i32** %3
	%14 = getelementptr i32, i32* %13, i32 %12
	%15 = load i32, i32* %14
	store i32 %15, i32* %4
	%16 = load i32, i32* %6
	%17 = load i32*, i32** %3
	%18 = getelementptr i32, i32* %17, i32 %16
	%19 = load i32, i32* %18
	%20 = load i32, i32* %5
	%21 = load i32*, i32** %3
	%22 = getelementptr i32, i32* %21, i32 %20
	store i32 %19, i32* %22
	%23 = load i32, i32* %4
	%24 = load i32, i32* %6
	%25 = load i32*, i32** %3
	%26 = getelementptr i32, i32* %25, i32 %24
	store i32 %23, i32* %26
	%27 = load i32, i32* %5
	%28 = add i32 %27, 1
	store i32 %28, i32* %5
	%29 = load i32, i32* %6
	%30 = sub i32 %29, 1
	store i32 %30, i32* %6
	br label %7

31:
	store i32 0, i32* %2
	br label %32

32:
	%33 = load i32, i32* %2
	ret i32 %33

}

define dso_local i32 @arrCopy(i32* %0, i32* %1) {
2:
	%3 = alloca i32
	%4 = alloca i32*
	%5 = alloca i32*
	%6 = alloca i32
	store i32* %0, i32** %4
	store i32* %1, i32** %5
	store i32 0, i32* %6
	br label %7

7:
	%8 = load i32, i32* %6
	%9 = load i32, i32* @n
	%10 = icmp slt i32 %8, %9
	br i1 %10, label %11, label %21

11:
	%12 = load i32, i32* %6
	%13 = load i32*, i32** %4
	%14 = getelementptr i32, i32* %13, i32 %12
	%15 = load i32, i32* %14
	%16 = load i32, i32* %6
	%17 = load i32*, i32** %5
	%18 = getelementptr i32, i32* %17, i32 %16
	store i32 %15, i32* %18
	%19 = load i32, i32* %6
	%20 = add i32 %19, 1
	store i32 %20, i32* %6
	br label %7

21:
	store i32 0, i32* %3
	br label %22

22:
	%23 = load i32, i32* %3
	ret i32 %23

}

define dso_local i32 @calSum(i32* %0, i32 %1) {
2:
	%3 = alloca i32
	%4 = alloca i32*
	%5 = alloca i32
	%6 = alloca i32
	%7 = alloca i32
	store i32* %0, i32** %4
	store i32 %1, i32* %5
	store i32 0, i32* %6
	store i32 0, i32* %7
	br label %8

8:
	%9 = load i32, i32* %7
	%10 = load i32, i32* @n
	%11 = icmp slt i32 %9, %10
	br i1 %11, label %12, label %37

12:
	%13 = load i32, i32* %6
	%14 = load i32, i32* %7
	%15 = load i32*, i32** %4
	%16 = getelementptr i32, i32* %15, i32 %14
	%17 = load i32, i32* %16
	%18 = add i32 %13, %17
	store i32 %18, i32* %6
	%19 = load i32, i32* %7
	%20 = load i32, i32* %5
	%21 = srem i32 %19, %20
	%22 = load i32, i32* %5
	%23 = sub i32 %22, 1
	%24 = icmp ne i32 %21, %23
	br i1 %24, label %25, label %29

25:
	%26 = load i32, i32* %7
	%27 = load i32*, i32** %4
	%28 = getelementptr i32, i32* %27, i32 %26
	store i32 0, i32* %28
	br label %34

29:
	%30 = load i32, i32* %6
	%31 = load i32, i32* %7
	%32 = load i32*, i32** %4
	%33 = getelementptr i32, i32* %32, i32 %31
	store i32 %30, i32* %33
	store i32 0, i32* %6
	br label %34

34:
	%35 = load i32, i32* %7
	%36 = add i32 %35, 1
	store i32 %36, i32* %7
	br label %8

37:
	store i32 0, i32* %3
	br label %38

38:
	%39 = load i32, i32* %3
	ret i32 %39

}

define dso_local i32 @avgPooling(i32* %0, i32 %1) {
2:
	%3 = alloca i32
	%4 = alloca i32*
	%5 = alloca i32
	%6 = alloca i32
	%7 = alloca i32
	%8 = alloca i32
	store i32* %0, i32** %4
	store i32 %1, i32* %5
	store i32 0, i32* %7
	store i32 0, i32* %6
	br label %9

9:
	%10 = load i32, i32* %7
	%11 = load i32, i32* @n
	%12 = icmp slt i32 %10, %11
	br i1 %12, label %13, label %68

13:
	%14 = load i32, i32* %7
	%15 = load i32, i32* %5
	%16 = sub i32 %15, 1
	%17 = icmp slt i32 %14, %16
	br i1 %17, label %18, label %25

18:
	%19 = load i32, i32* %6
	%20 = load i32, i32* %7
	%21 = load i32*, i32** %4
	%22 = getelementptr i32, i32* %21, i32 %20
	%23 = load i32, i32* %22
	%24 = add i32 %19, %23
	store i32 %24, i32* %6
	br label %65

25:
	%26 = load i32, i32* %7
	%27 = load i32, i32* %5
	%28 = sub i32 %27, 1
	%29 = icmp eq i32 %26, %28
	br i1 %29, label %30, label %39

30:
	%31 = load i32*, i32** %4
	%32 = getelementptr i32, i32* %31, i32 0
	%33 = load i32, i32* %32
	store i32 %33, i32* %8
	%34 = load i32, i32* %6
	%35 = load i32, i32* %5
	%36 = sdiv i32 %34, %35
	%37 = load i32*, i32** %4
	%38 = getelementptr i32, i32* %37, i32 0
	store i32 %36, i32* %38
	br label %64

39:
	%40 = load i32, i32* %6
	%41 = load i32, i32* %7
	%42 = load i32*, i32** %4
	%43 = getelementptr i32, i32* %42, i32 %41
	%44 = load i32, i32* %43
	%45 = add i32 %40, %44
	%46 = load i32, i32* %8
	%47 = sub i32 %45, %46
	store i32 %47, i32* %6
	%48 = load i32, i32* %7
	%49 = load i32, i32* %5
	%50 = sub i32 %48, %49
	%51 = add i32 %50, 1
	%52 = load i32*, i32** %4
	%53 = getelementptr i32, i32* %52, i32 %51
	%54 = load i32, i32* %53
	store i32 %54, i32* %8
	%55 = load i32, i32* %6
	%56 = load i32, i32* %5
	%57 = sdiv i32 %55, %56
	%58 = load i32, i32* %7
	%59 = load i32, i32* %5
	%60 = sub i32 %58, %59
	%61 = add i32 %60, 1
	%62 = load i32*, i32** %4
	%63 = getelementptr i32, i32* %62, i32 %61
	store i32 %57, i32* %63
	br label %64

64:
	br label %65

65:
	%66 = load i32, i32* %7
	%67 = add i32 %66, 1
	store i32 %67, i32* %7
	br label %9

68:
	%69 = load i32, i32* @n
	%70 = load i32, i32* %5
	%71 = sub i32 %69, %70
	%72 = add i32 %71, 1
	store i32 %72, i32* %7
	br label %73

73:
	%74 = load i32, i32* %7
	%75 = load i32, i32* @n
	%76 = icmp slt i32 %74, %75
	br i1 %76, label %77, label %83

77:
	%78 = load i32, i32* %7
	%79 = load i32*, i32** %4
	%80 = getelementptr i32, i32* %79, i32 %78
	store i32 0, i32* %80
	%81 = load i32, i32* %7
	%82 = add i32 %81, 1
	store i32 %82, i32* %7
	br label %73

83:
	store i32 0, i32* %3
	br label %84

84:
	%85 = load i32, i32* %3
	ret i32 %85

}

define dso_local i32 @main() {
0:
	%1 = alloca i32
	%2 = alloca [32 x i32]
	%3 = alloca [32 x i32]
	%4 = alloca i32
	%5 = alloca i32
	store i32 32, i32* @n
	%6 = getelementptr [32 x i32], [32 x i32]* %2, i32 0, i32 0
	store i32 7, i32* %6
	%7 = getelementptr [32 x i32], [32 x i32]* %2, i32 0, i32 1
	store i32 23, i32* %7
	%8 = getelementptr [32 x i32], [32 x i32]* %2, i32 0, i32 2
	store i32 89, i32* %8
	%9 = getelementptr [32 x i32], [32 x i32]* %2, i32 0, i32 3
	store i32 26, i32* %9
	%10 = getelementptr [32 x i32], [32 x i32]* %2, i32 0, i32 4
	store i32 282, i32* %10
	%11 = getelementptr [32 x i32], [32 x i32]* %2, i32 0, i32 5
	store i32 254, i32* %11
	%12 = getelementptr [32 x i32], [32 x i32]* %2, i32 0, i32 6
	store i32 27, i32* %12
	%13 = getelementptr [32 x i32], [32 x i32]* %2, i32 0, i32 7
	store i32 5, i32* %13
	%14 = getelementptr [32 x i32], [32 x i32]* %2, i32 0, i32 8
	store i32 83, i32* %14
	%15 = getelementptr [32 x i32], [32 x i32]* %2, i32 0, i32 9
	store i32 273, i32* %15
	%16 = getelementptr [32 x i32], [32 x i32]* %2, i32 0, i32 10
	store i32 574, i32* %16
	%17 = getelementptr [32 x i32], [32 x i32]* %2, i32 0, i32 11
	store i32 905, i32* %17
	%18 = getelementptr [32 x i32], [32 x i32]* %2, i32 0, i32 12
	store i32 354, i32* %18
	%19 = getelementptr [32 x i32], [32 x i32]* %2, i32 0, i32 13
	store i32 657, i32* %19
	%20 = getelementptr [32 x i32], [32 x i32]* %2, i32 0, i32 14
	store i32 935, i32* %20
	%21 = getelementptr [32 x i32], [32 x i32]* %2, i32 0, i32 15
	store i32 264, i32* %21
	%22 = getelementptr [32 x i32], [32 x i32]* %2, i32 0, i32 16
	store i32 639, i32* %22
	%23 = getelementptr [32 x i32], [32 x i32]* %2, i32 0, i32 17
	store i32 459, i32* %23
	%24 = getelementptr [32 x i32], [32 x i32]* %2, i32 0, i32 18
	store i32 29, i32* %24
	%25 = getelementptr [32 x i32], [32 x i32]* %2, i32 0, i32 19
	store i32 68, i32* %25
	%26 = getelementptr [32 x i32], [32 x i32]* %2, i32 0, i32 20
	store i32 929, i32* %26
	%27 = getelementptr [32 x i32], [32 x i32]* %2, i32 0, i32 21
	store i32 756, i32* %27
	%28 = getelementptr [32 x i32], [32 x i32]* %2, i32 0, i32 22
	store i32 452, i32* %28
	%29 = getelementptr [32 x i32], [32 x i32]* %2, i32 0, i32 23
	store i32 279, i32* %29
	%30 = getelementptr [32 x i32], [32 x i32]* %2, i32 0, i32 24
	store i32 58, i32* %30
	%31 = getelementptr [32 x i32], [32 x i32]* %2, i32 0, i32 25
	store i32 87, i32* %31
	%32 = getelementptr [32 x i32], [32 x i32]* %2, i32 0, i32 26
	store i32 96, i32* %32
	%33 = getelementptr [32 x i32], [32 x i32]* %2, i32 0, i32 27
	store i32 36, i32* %33
	%34 = getelementptr [32 x i32], [32 x i32]* %2, i32 0, i32 28
	store i32 39, i32* %34
	%35 = getelementptr [32 x i32], [32 x i32]* %2, i32 0, i32 29
	store i32 28, i32* %35
	%36 = getelementptr [32 x i32], [32 x i32]* %2, i32 0, i32 30
	store i32 1, i32* %36
	%37 = getelementptr [32 x i32], [32 x i32]* %2, i32 0, i32 31
	store i32 290, i32* %37
	%38 = getelementptr [32 x i32], [32 x i32]* %2, i32 0, i32 0
	%39 = getelementptr [32 x i32], [32 x i32]* %3, i32 0, i32 0
	%40 = call i32 @arrCopy(i32* %38, i32* %39)
	store i32 %40, i32* %4
	%41 = getelementptr [32 x i32], [32 x i32]* %3, i32 0, i32 0
	%42 = call i32 @revert(i32* %41)
	store i32 %42, i32* %4
	store i32 0, i32* %5
	br label %43

43:
	%44 = load i32, i32* %5
	%45 = icmp slt i32 %44, 32
	br i1 %45, label %46, label %53

46:
	%47 = load i32, i32* %5
	%48 = getelementptr [32 x i32], [32 x i32]* %3, i32 0, i32 %47
	%49 = load i32, i32* %48
	store i32 %49, i32* %4
	%50 = load i32, i32* %4
	call void @putint(i32 %50)
	%51 = load i32, i32* %5
	%52 = add i32 %51, 1
	store i32 %52, i32* %5
	br label %43

53:
	%54 = getelementptr [32 x i32], [32 x i32]* %3, i32 0, i32 0
	%55 = call i32 @bubblesort(i32* %54)
	store i32 %55, i32* %4
	store i32 0, i32* %5
	br label %56

56:
	%57 = load i32, i32* %5
	%58 = icmp slt i32 %57, 32
	br i1 %58, label %59, label %66

59:
	%60 = load i32, i32* %5
	%61 = getelementptr [32 x i32], [32 x i32]* %3, i32 0, i32 %60
	%62 = load i32, i32* %61
	store i32 %62, i32* %4
	%63 = load i32, i32* %4
	call void @putint(i32 %63)
	%64 = load i32, i32* %5
	%65 = add i32 %64, 1
	store i32 %65, i32* %5
	br label %56

66:
	%67 = getelementptr [32 x i32], [32 x i32]* %3, i32 0, i32 0
	%68 = call i32 @getMid(i32* %67)
	store i32 %68, i32* %4
	%69 = load i32, i32* %4
	call void @putint(i32 %69)
	%70 = getelementptr [32 x i32], [32 x i32]* %3, i32 0, i32 0
	%71 = call i32 @getMost(i32* %70)
	store i32 %71, i32* %4
	%72 = load i32, i32* %4
	call void @putint(i32 %72)
	%73 = getelementptr [32 x i32], [32 x i32]* %2, i32 0, i32 0
	%74 = getelementptr [32 x i32], [32 x i32]* %3, i32 0, i32 0
	%75 = call i32 @arrCopy(i32* %73, i32* %74)
	store i32 %75, i32* %4
	%76 = getelementptr [32 x i32], [32 x i32]* %3, i32 0, i32 0
	%77 = call i32 @bubblesort(i32* %76)
	store i32 %77, i32* %4
	store i32 0, i32* %5
	br label %78

78:
	%79 = load i32, i32* %5
	%80 = icmp slt i32 %79, 32
	br i1 %80, label %81, label %88

81:
	%82 = load i32, i32* %5
	%83 = getelementptr [32 x i32], [32 x i32]* %3, i32 0, i32 %82
	%84 = load i32, i32* %83
	store i32 %84, i32* %4
	%85 = load i32, i32* %4
	call void @putint(i32 %85)
	%86 = load i32, i32* %5
	%87 = add i32 %86, 1
	store i32 %87, i32* %5
	br label %78

88:
	%89 = getelementptr [32 x i32], [32 x i32]* %2, i32 0, i32 0
	%90 = getelementptr [32 x i32], [32 x i32]* %3, i32 0, i32 0
	%91 = call i32 @arrCopy(i32* %89, i32* %90)
	store i32 %91, i32* %4
	%92 = getelementptr [32 x i32], [32 x i32]* %3, i32 0, i32 0
	%93 = call i32 @insertsort(i32* %92)
	store i32 %93, i32* %4
	store i32 0, i32* %5
	br label %94

94:
	%95 = load i32, i32* %5
	%96 = icmp slt i32 %95, 32
	br i1 %96, label %97, label %104

97:
	%98 = load i32, i32* %5
	%99 = getelementptr [32 x i32], [32 x i32]* %3, i32 0, i32 %98
	%100 = load i32, i32* %99
	store i32 %100, i32* %4
	%101 = load i32, i32* %4
	call void @putint(i32 %101)
	%102 = load i32, i32* %5
	%103 = add i32 %102, 1
	store i32 %103, i32* %5
	br label %94

104:
	%105 = getelementptr [32 x i32], [32 x i32]* %2, i32 0, i32 0
	%106 = getelementptr [32 x i32], [32 x i32]* %3, i32 0, i32 0
	%107 = call i32 @arrCopy(i32* %105, i32* %106)
	store i32 %107, i32* %4
	store i32 0, i32* %5
	store i32 31, i32* %4
	%108 = getelementptr [32 x i32], [32 x i32]* %3, i32 0, i32 0
	%109 = load i32, i32* %5
	%110 = load i32, i32* %4
	%111 = call i32 @QuickSort(i32* %108, i32 %109, i32 %110)
	store i32 %111, i32* %4
	br label %112

112:
	%113 = load i32, i32* %5
	%114 = icmp slt i32 %113, 32
	br i1 %114, label %115, label %122

115:
	%116 = load i32, i32* %5
	%117 = getelementptr [32 x i32], [32 x i32]* %3, i32 0, i32 %116
	%118 = load i32, i32* %117
	store i32 %118, i32* %4
	%119 = load i32, i32* %4
	call void @putint(i32 %119)
	%120 = load i32, i32* %5
	%121 = add i32 %120, 1
	store i32 %121, i32* %5
	br label %112

122:
	%123 = getelementptr [32 x i32], [32 x i32]* %2, i32 0, i32 0
	%124 = getelementptr [32 x i32], [32 x i32]* %3, i32 0, i32 0
	%125 = call i32 @arrCopy(i32* %123, i32* %124)
	store i32 %125, i32* %4
	%126 = getelementptr [32 x i32], [32 x i32]* %3, i32 0, i32 0
	%127 = call i32 @calSum(i32* %126, i32 4)
	store i32 %127, i32* %4
	store i32 0, i32* %5
	br label %128

128:
	%129 = load i32, i32* %5
	%130 = icmp slt i32 %129, 32
	br i1 %130, label %131, label %138

131:
	%132 = load i32, i32* %5
	%133 = getelementptr [32 x i32], [32 x i32]* %3, i32 0, i32 %132
	%134 = load i32, i32* %133
	store i32 %134, i32* %4
	%135 = load i32, i32* %4
	call void @putint(i32 %135)
	%136 = load i32, i32* %5
	%137 = add i32 %136, 1
	store i32 %137, i32* %5
	br label %128

138:
	%139 = getelementptr [32 x i32], [32 x i32]* %2, i32 0, i32 0
	%140 = getelementptr [32 x i32], [32 x i32]* %3, i32 0, i32 0
	%141 = call i32 @arrCopy(i32* %139, i32* %140)
	store i32 %141, i32* %4
	%142 = getelementptr [32 x i32], [32 x i32]* %3, i32 0, i32 0
	%143 = call i32 @avgPooling(i32* %142, i32 3)
	store i32 %143, i32* %4
	store i32 0, i32* %5
	br label %144

144:
	%145 = load i32, i32* %5
	%146 = icmp slt i32 %145, 32
	br i1 %146, label %147, label %154

147:
	%148 = load i32, i32* %5
	%149 = getelementptr [32 x i32], [32 x i32]* %3, i32 0, i32 %148
	%150 = load i32, i32* %149
	store i32 %150, i32* %4
	%151 = load i32, i32* %4
	call void @putint(i32 %151)
	%152 = load i32, i32* %5
	%153 = add i32 %152, 1
	store i32 %153, i32* %5
	br label %144

154:
	store i32 0, i32* %1
	br label %155

155:
	%156 = load i32, i32* %1
	ret i32 %156

}

