@arr1 = dso_local global [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]] zeroinitializer
@arr2 = dso_local global [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]] zeroinitializer

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

define dso_local void @loop1(i32 %0, i32 %1) {
2:
	%3 = alloca i32
	%4 = alloca i32
	%5 = alloca i32
	%6 = alloca i32
	%7 = alloca i32
	%8 = alloca i32
	%9 = alloca i32
	%10 = alloca i32
	%11 = alloca i32
	store i32 %0, i32* %3
	store i32 %1, i32* %4
	store i32 0, i32* %5
	br label %12

12:
	%13 = load i32, i32* %5
	%14 = load i32, i32* %3
	%15 = icmp slt i32 %13, %14
	br i1 %15, label %16, label %90

16:
	%17 = load i32, i32* %5
	%18 = load i32, i32* %4
	%19 = icmp slt i32 %17, %18
	br i1 %19, label %20, label %90

20:
	store i32 0, i32* %6
	br label %21

21:
	%22 = load i32, i32* %6
	%23 = icmp slt i32 %22, 2
	br i1 %23, label %24, label %87

24:
	store i32 0, i32* %7
	br label %25

25:
	%26 = load i32, i32* %7
	%27 = icmp slt i32 %26, 3
	br i1 %27, label %28, label %84

28:
	store i32 0, i32* %8
	br label %29

29:
	%30 = load i32, i32* %8
	%31 = icmp slt i32 %30, 4
	br i1 %31, label %32, label %81

32:
	store i32 0, i32* %9
	br label %33

33:
	%34 = load i32, i32* %9
	%35 = icmp slt i32 %34, 5
	br i1 %35, label %36, label %78

36:
	store i32 0, i32* %10
	br label %37

37:
	%38 = load i32, i32* %10
	%39 = icmp slt i32 %38, 6
	br i1 %39, label %40, label %75

40:
	store i32 0, i32* %11
	br label %41

41:
	%42 = load i32, i32* %11
	%43 = icmp slt i32 %42, 2
	br i1 %43, label %44, label %72

44:
	%45 = load i32, i32* %5
	%46 = load i32, i32* %6
	%47 = add i32 %45, %46
	%48 = load i32, i32* %7
	%49 = add i32 %47, %48
	%50 = load i32, i32* %8
	%51 = add i32 %49, %50
	%52 = load i32, i32* %9
	%53 = add i32 %51, %52
	%54 = load i32, i32* %10
	%55 = add i32 %53, %54
	%56 = load i32, i32* %11
	%57 = add i32 %55, %56
	%58 = load i32, i32* %3
	%59 = add i32 %57, %58
	%60 = load i32, i32* %4
	%61 = add i32 %59, %60
	%62 = load i32, i32* %5
	%63 = load i32, i32* %6
	%64 = load i32, i32* %7
	%65 = load i32, i32* %8
	%66 = load i32, i32* %9
	%67 = load i32, i32* %10
	%68 = load i32, i32* %11
	%69 = getelementptr [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i32 0, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68
	store i32 %61, i32* %69
	%70 = load i32, i32* %11
	%71 = add i32 %70, 1
	store i32 %71, i32* %11
	br label %41

72:
	%73 = load i32, i32* %10
	%74 = add i32 %73, 1
	store i32 %74, i32* %10
	br label %37

75:
	%76 = load i32, i32* %9
	%77 = add i32 %76, 1
	store i32 %77, i32* %9
	br label %33

78:
	%79 = load i32, i32* %8
	%80 = add i32 %79, 1
	store i32 %80, i32* %8
	br label %29

81:
	%82 = load i32, i32* %7
	%83 = add i32 %82, 1
	store i32 %83, i32* %7
	br label %25

84:
	%85 = load i32, i32* %6
	%86 = add i32 %85, 1
	store i32 %86, i32* %6
	br label %21

87:
	%88 = load i32, i32* %5
	%89 = add i32 %88, 1
	store i32 %89, i32* %5
	br label %12

90:
	br label %91

91:
	ret void

}

define dso_local void @loop2() {
0:
	%1 = alloca i32
	%2 = alloca i32
	%3 = alloca i32
	%4 = alloca i32
	%5 = alloca i32
	%6 = alloca i32
	%7 = alloca i32
	store i32 0, i32* %1
	br label %8

8:
	%9 = load i32, i32* %1
	%10 = icmp slt i32 %9, 10
	br i1 %10, label %11, label %71

11:
	store i32 0, i32* %2
	br label %12

12:
	%13 = load i32, i32* %2
	%14 = icmp slt i32 %13, 2
	br i1 %14, label %15, label %68

15:
	store i32 0, i32* %3
	br label %16

16:
	%17 = load i32, i32* %3
	%18 = icmp slt i32 %17, 3
	br i1 %18, label %19, label %65

19:
	store i32 0, i32* %4
	br label %20

20:
	%21 = load i32, i32* %4
	%22 = icmp slt i32 %21, 2
	br i1 %22, label %23, label %62

23:
	store i32 0, i32* %5
	br label %24

24:
	%25 = load i32, i32* %5
	%26 = icmp slt i32 %25, 4
	br i1 %26, label %27, label %59

27:
	store i32 0, i32* %6
	br label %28

28:
	%29 = load i32, i32* %6
	%30 = icmp slt i32 %29, 8
	br i1 %30, label %31, label %56

31:
	store i32 0, i32* %7
	br label %32

32:
	%33 = load i32, i32* %7
	%34 = icmp slt i32 %33, 7
	br i1 %34, label %35, label %53

35:
	%36 = load i32, i32* %1
	%37 = load i32, i32* %2
	%38 = add i32 %36, %37
	%39 = load i32, i32* %4
	%40 = add i32 %38, %39
	%41 = load i32, i32* %7
	%42 = add i32 %40, %41
	%43 = load i32, i32* %1
	%44 = load i32, i32* %2
	%45 = load i32, i32* %3
	%46 = load i32, i32* %4
	%47 = load i32, i32* %5
	%48 = load i32, i32* %6
	%49 = load i32, i32* %7
	%50 = getelementptr [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i32 0, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49
	store i32 %42, i32* %50
	%51 = load i32, i32* %7
	%52 = add i32 %51, 1
	store i32 %52, i32* %7
	br label %32

53:
	%54 = load i32, i32* %6
	%55 = add i32 %54, 1
	store i32 %55, i32* %6
	br label %28

56:
	%57 = load i32, i32* %5
	%58 = add i32 %57, 1
	store i32 %58, i32* %5
	br label %24

59:
	%60 = load i32, i32* %4
	%61 = add i32 %60, 1
	store i32 %61, i32* %4
	br label %20

62:
	%63 = load i32, i32* %3
	%64 = add i32 %63, 1
	store i32 %64, i32* %3
	br label %16

65:
	%66 = load i32, i32* %2
	%67 = add i32 %66, 1
	store i32 %67, i32* %2
	br label %12

68:
	%69 = load i32, i32* %1
	%70 = add i32 %69, 1
	store i32 %70, i32* %1
	br label %8

71:
	br label %72

72:
	ret void

}

define dso_local i32 @loop3(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) {
7:
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
	store i32 %0, i32* %9
	store i32 %1, i32* %10
	store i32 %2, i32* %11
	store i32 %3, i32* %12
	store i32 %4, i32* %13
	store i32 %5, i32* %14
	store i32 %6, i32* %15
	store i32 0, i32* %23
	store i32 0, i32* %16
	br label %24

24:
	%25 = load i32, i32* %16
	%26 = icmp slt i32 %25, 10
	br i1 %26, label %27, label %129

27:
	store i32 0, i32* %17
	br label %28

28:
	%29 = load i32, i32* %17
	%30 = icmp slt i32 %29, 100
	br i1 %30, label %31, label %121

31:
	store i32 0, i32* %18
	br label %32

32:
	%33 = load i32, i32* %18
	%34 = icmp slt i32 %33, 1000
	br i1 %34, label %35, label %113

35:
	store i32 0, i32* %19
	br label %36

36:
	%37 = load i32, i32* %19
	%38 = icmp slt i32 %37, 10000
	br i1 %38, label %39, label %105

39:
	store i32 0, i32* %20
	br label %40

40:
	%41 = load i32, i32* %20
	%42 = icmp slt i32 %41, 100000
	br i1 %42, label %43, label %97

43:
	store i32 0, i32* %21
	br label %44

44:
	%45 = load i32, i32* %21
	%46 = icmp slt i32 %45, 1000000
	br i1 %46, label %47, label %89

47:
	store i32 0, i32* %22
	br label %48

48:
	%49 = load i32, i32* %22
	%50 = icmp slt i32 %49, 10000000
	br i1 %50, label %51, label %81

51:
	%52 = load i32, i32* %23
	%53 = srem i32 %52, 817
	%54 = load i32, i32* %16
	%55 = load i32, i32* %17
	%56 = load i32, i32* %18
	%57 = load i32, i32* %19
	%58 = load i32, i32* %20
	%59 = load i32, i32* %21
	%60 = load i32, i32* %22
	%61 = getelementptr [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i32 0, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60
	%62 = load i32, i32* %61
	%63 = add i32 %53, %62
	%64 = load i32, i32* %16
	%65 = load i32, i32* %17
	%66 = load i32, i32* %18
	%67 = load i32, i32* %19
	%68 = load i32, i32* %20
	%69 = load i32, i32* %21
	%70 = load i32, i32* %22
	%71 = getelementptr [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i32 0, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70
	%72 = load i32, i32* %71
	%73 = add i32 %63, %72
	store i32 %73, i32* %23
	%74 = load i32, i32* %22
	%75 = add i32 %74, 1
	store i32 %75, i32* %22
	%76 = load i32, i32* %22
	%77 = load i32, i32* %15
	%78 = icmp sge i32 %76, %77
	br i1 %78, label %79, label %80

79:
	br label %81

80:
	br label %48

81:
	%82 = load i32, i32* %21
	%83 = add i32 %82, 1
	store i32 %83, i32* %21
	%84 = load i32, i32* %21
	%85 = load i32, i32* %14
	%86 = icmp sge i32 %84, %85
	br i1 %86, label %87, label %88

87:
	br label %89

88:
	br label %44

89:
	%90 = load i32, i32* %20
	%91 = add i32 %90, 1
	store i32 %91, i32* %20
	%92 = load i32, i32* %20
	%93 = load i32, i32* %13
	%94 = icmp sge i32 %92, %93
	br i1 %94, label %95, label %96

95:
	br label %97

96:
	br label %40

97:
	%98 = load i32, i32* %19
	%99 = add i32 %98, 1
	store i32 %99, i32* %19
	%100 = load i32, i32* %19
	%101 = load i32, i32* %12
	%102 = icmp sge i32 %100, %101
	br i1 %102, label %103, label %104

103:
	br label %105

104:
	br label %36

105:
	%106 = load i32, i32* %18
	%107 = add i32 %106, 1
	store i32 %107, i32* %18
	%108 = load i32, i32* %18
	%109 = load i32, i32* %11
	%110 = icmp sge i32 %108, %109
	br i1 %110, label %111, label %112

111:
	br label %113

112:
	br label %32

113:
	%114 = load i32, i32* %17
	%115 = add i32 %114, 1
	store i32 %115, i32* %17
	%116 = load i32, i32* %17
	%117 = load i32, i32* %10
	%118 = icmp sge i32 %116, %117
	br i1 %118, label %119, label %120

119:
	br label %121

120:
	br label %28

121:
	%122 = load i32, i32* %16
	%123 = add i32 %122, 1
	store i32 %123, i32* %16
	%124 = load i32, i32* %16
	%125 = load i32, i32* %9
	%126 = icmp sge i32 %124, %125
	br i1 %126, label %127, label %128

127:
	br label %129

128:
	br label %24

129:
	%130 = load i32, i32* %23
	store i32 %130, i32* %8
	br label %131

131:
	%132 = load i32, i32* %8
	ret i32 %132

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
	%11 = call i32 @getint()
	store i32 %11, i32* %2
	%12 = call i32 @getint()
	store i32 %12, i32* %3
	%13 = call i32 @getint()
	store i32 %13, i32* %4
	%14 = call i32 @getint()
	store i32 %14, i32* %5
	%15 = call i32 @getint()
	store i32 %15, i32* %6
	%16 = call i32 @getint()
	store i32 %16, i32* %7
	%17 = call i32 @getint()
	store i32 %17, i32* %8
	%18 = call i32 @getint()
	store i32 %18, i32* %9
	%19 = call i32 @getint()
	store i32 %19, i32* %10
	%20 = load i32, i32* %2
	%21 = load i32, i32* %3
	call void @loop1(i32 %20, i32 %21)
	call void @loop2()
	%22 = load i32, i32* %4
	%23 = load i32, i32* %5
	%24 = load i32, i32* %6
	%25 = load i32, i32* %7
	%26 = load i32, i32* %8
	%27 = load i32, i32* %9
	%28 = load i32, i32* %10
	%29 = call i32 @loop3(i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28)
	store i32 %29, i32* %1
	br label %30

30:
	%31 = load i32, i32* %1
	ret i32 %31

}

