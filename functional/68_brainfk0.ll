@TAPE_LEN = dso_local constant i32 65536
@BUFFER_LEN = dso_local constant i32 32768
@tape = dso_local global [65536 x i32] zeroinitializer
@program = dso_local global [32768 x i32] zeroinitializer
@ptr = dso_local global i32 0

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

define dso_local void @read_program() {
0:
	%1 = alloca i32
	%2 = alloca i32
	store i32 0, i32* %1
	%3 = call i32 @getint()
	store i32 %3, i32* %2
	br label %4

4:
	%5 = load i32, i32* %1
	%6 = load i32, i32* %2
	%7 = icmp slt i32 %5, %6
	br i1 %7, label %8, label %14

8:
	%9 = call i32 @getch()
	%10 = load i32, i32* %1
	%11 = getelementptr [32768 x i32], [32768 x i32]* @program, i32 0, i32 %10
	store i32 %9, i32* %11
	%12 = load i32, i32* %1
	%13 = add i32 %12, 1
	store i32 %13, i32* %1
	br label %4

14:
	%15 = load i32, i32* %1
	%16 = getelementptr [32768 x i32], [32768 x i32]* @program, i32 0, i32 %15
	store i32 0, i32* %16
	br label %17

17:
	ret void

}

define dso_local void @interpret(i32* %0) {
1:
	%2 = alloca i32*
	%3 = alloca i32
	%4 = alloca i32
	%5 = alloca i32
	store i32* %0, i32** %2
	store i32 0, i32* %5
	br label %6

6:
	%7 = load i32, i32* %5
	%8 = load i32*, i32** %2
	%9 = getelementptr i32, i32* %8, i32 %7
	%10 = load i32, i32* %9
	%11 = icmp ne i32 %10, 0
	br i1 %11, label %12, label %104

12:
	%13 = load i32, i32* %5
	%14 = load i32*, i32** %2
	%15 = getelementptr i32, i32* %14, i32 %13
	%16 = load i32, i32* %15
	store i32 %16, i32* %3
	%17 = load i32, i32* %3
	%18 = icmp eq i32 %17, 62
	br i1 %18, label %19, label %22

19:
	%20 = load i32, i32* @ptr
	%21 = add i32 %20, 1
	store i32 %21, i32* @ptr
	br label %101

22:
	%23 = load i32, i32* %3
	%24 = icmp eq i32 %23, 60
	br i1 %24, label %25, label %28

25:
	%26 = load i32, i32* @ptr
	%27 = sub i32 %26, 1
	store i32 %27, i32* @ptr
	br label %100

28:
	%29 = load i32, i32* %3
	%30 = icmp eq i32 %29, 43
	br i1 %30, label %31, label %38

31:
	%32 = load i32, i32* @ptr
	%33 = getelementptr [65536 x i32], [65536 x i32]* @tape, i32 0, i32 %32
	%34 = load i32, i32* %33
	%35 = add i32 %34, 1
	%36 = load i32, i32* @ptr
	%37 = getelementptr [65536 x i32], [65536 x i32]* @tape, i32 0, i32 %36
	store i32 %35, i32* %37
	br label %99

38:
	%39 = load i32, i32* %3
	%40 = icmp eq i32 %39, 45
	br i1 %40, label %41, label %48

41:
	%42 = load i32, i32* @ptr
	%43 = getelementptr [65536 x i32], [65536 x i32]* @tape, i32 0, i32 %42
	%44 = load i32, i32* %43
	%45 = sub i32 %44, 1
	%46 = load i32, i32* @ptr
	%47 = getelementptr [65536 x i32], [65536 x i32]* @tape, i32 0, i32 %46
	store i32 %45, i32* %47
	br label %98

48:
	%49 = load i32, i32* %3
	%50 = icmp eq i32 %49, 46
	br i1 %50, label %51, label %55

51:
	%52 = load i32, i32* @ptr
	%53 = getelementptr [65536 x i32], [65536 x i32]* @tape, i32 0, i32 %52
	%54 = load i32, i32* %53
	call void @putch(i32 %54)
	br label %97

55:
	%56 = load i32, i32* %3
	%57 = icmp eq i32 %56, 44
	br i1 %57, label %58, label %62

58:
	%59 = call i32 @getch()
	%60 = load i32, i32* @ptr
	%61 = getelementptr [65536 x i32], [65536 x i32]* @tape, i32 0, i32 %60
	store i32 %59, i32* %61
	br label %96

62:
	%63 = load i32, i32* %3
	%64 = icmp eq i32 %63, 93
	br i1 %64, label %65, label %95

65:
	%66 = load i32, i32* @ptr
	%67 = getelementptr [65536 x i32], [65536 x i32]* @tape, i32 0, i32 %66
	%68 = load i32, i32* %67
	%69 = icmp ne i32 %68, 0
	br i1 %69, label %70, label %95

70:
	store i32 1, i32* %4
	br label %71

71:
	%72 = load i32, i32* %4
	%73 = icmp sgt i32 %72, 0
	br i1 %73, label %74, label %94

74:
	%75 = load i32, i32* %5
	%76 = sub i32 %75, 1
	store i32 %76, i32* %5
	%77 = load i32, i32* %5
	%78 = load i32*, i32** %2
	%79 = getelementptr i32, i32* %78, i32 %77
	%80 = load i32, i32* %79
	store i32 %80, i32* %3
	%81 = load i32, i32* %3
	%82 = icmp eq i32 %81, 91
	br i1 %82, label %83, label %86

83:
	%84 = load i32, i32* %4
	%85 = sub i32 %84, 1
	store i32 %85, i32* %4
	br label %93

86:
	%87 = load i32, i32* %3
	%88 = icmp eq i32 %87, 93
	br i1 %88, label %89, label %92

89:
	%90 = load i32, i32* %4
	%91 = add i32 %90, 1
	store i32 %91, i32* %4
	br label %92

92:
	br label %93

93:
	br label %71

94:
	br label %95

95:
	br label %96

96:
	br label %97

97:
	br label %98

98:
	br label %99

99:
	br label %100

100:
	br label %101

101:
	%102 = load i32, i32* %5
	%103 = add i32 %102, 1
	store i32 %103, i32* %5
	br label %6

104:
	br label %105

105:
	ret void

}

define dso_local i32 @main() {
0:
	%1 = alloca i32
	call void @read_program()
	%2 = getelementptr [32768 x i32], [32768 x i32]* @program, i32 0, i32 0
	call void @interpret(i32* %2)
	store i32 0, i32* %1
	br label %3

3:
	%4 = load i32, i32* %1
	ret i32 %4

}

