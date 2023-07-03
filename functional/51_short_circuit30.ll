@a = dso_local global i32 0
@b = dso_local global i32 0
@d = dso_local global i32 0

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

define dso_local i32 @set_a(i32 %0) {
1:
	%2 = alloca i32
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = load i32, i32* %3
	store i32 %4, i32* @a
	%5 = load i32, i32* @a
	store i32 %5, i32* %2
	br label %6

6:
	%7 = load i32, i32* %2
	ret i32 %7

}

define dso_local i32 @set_b(i32 %0) {
1:
	%2 = alloca i32
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = load i32, i32* %3
	store i32 %4, i32* @b
	%5 = load i32, i32* @b
	store i32 %5, i32* %2
	br label %6

6:
	%7 = load i32, i32* %2
	ret i32 %7

}

define dso_local i32 @set_d(i32 %0) {
1:
	%2 = alloca i32
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = load i32, i32* %3
	store i32 %4, i32* @d
	%5 = load i32, i32* @d
	store i32 %5, i32* %2
	br label %6

6:
	%7 = load i32, i32* %2
	ret i32 %7

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
	store i32 2, i32* @a
	store i32 3, i32* @b
	%8 = call i32 @set_a(i32 0)
	%9 = icmp ne i32 %8, 0
	br i1 %9, label %10, label %14

10:
	%11 = call i32 @set_b(i32 1)
	%12 = icmp ne i32 %11, 0
	br i1 %12, label %13, label %14

13:
	br label %14

14:
	%15 = load i32, i32* @a
	call void @putint(i32 %15)
	call void @putch(i32 32)
	%16 = load i32, i32* @b
	call void @putint(i32 %16)
	call void @putch(i32 32)
	store i32 2, i32* @a
	store i32 3, i32* @b
	%17 = call i32 @set_a(i32 0)
	%18 = icmp ne i32 %17, 0
	br i1 %18, label %19, label %23

19:
	%20 = call i32 @set_b(i32 1)
	%21 = icmp ne i32 %20, 0
	br i1 %21, label %22, label %23

22:
	br label %23

23:
	%24 = load i32, i32* @a
	call void @putint(i32 %24)
	call void @putch(i32 32)
	%25 = load i32, i32* @b
	call void @putint(i32 %25)
	call void @putch(i32 10)
	store i32 1, i32* %2
	store i32 2, i32* @d
	%26 = icmp sge i32 1, 1
	br i1 %26, label %27, label %31

27:
	%28 = call i32 @set_d(i32 3)
	%29 = icmp ne i32 %28, 0
	br i1 %29, label %30, label %31

30:
	br label %31

31:
	%32 = load i32, i32* @d
	call void @putint(i32 %32)
	call void @putch(i32 32)
	%33 = icmp sle i32 1, 1
	br i1 %33, label %37, label %34

34:
	%35 = call i32 @set_d(i32 4)
	%36 = icmp ne i32 %35, 0
	br i1 %36, label %37, label %38

37:
	br label %38

38:
	%39 = load i32, i32* @d
	call void @putint(i32 %39)
	call void @putch(i32 10)
	%40 = icmp sge i32 16, 0
	br i1 %40, label %41, label %42

41:
	call void @putch(i32 65)
	br label %42

42:
	%43 = icmp ne i32 18, 18
	br i1 %43, label %44, label %45

44:
	call void @putch(i32 66)
	br label %45

45:
	%46 = icmp slt i32 1, 8
	%47 = icmp ne i1 %46, 1
	br i1 %47, label %48, label %49

48:
	call void @putch(i32 67)
	br label %49

49:
	%50 = icmp sgt i32 3, 4
	%51 = icmp eq i1 %50, 0
	br i1 %51, label %52, label %53

52:
	call void @putch(i32 68)
	br label %53

53:
	%54 = icmp sle i32 102, 63
	%55 = icmp eq i32 1, %54
	br i1 %55, label %56, label %57

56:
	call void @putch(i32 69)
	br label %57

57:
	%58 = icmp ne i32 0, 0
	%59 = xor i1 %58, true
	%60 = zext i1 %59 to i32
	%61 = sub i32 0, %60
	%62 = icmp eq i32 -1, %61
	br i1 %62, label %63, label %64

63:
	call void @putch(i32 70)
	br label %64

64:
	call void @putch(i32 10)
	store i32 0, i32* %3
	store i32 1, i32* %4
	store i32 2, i32* %5
	store i32 3, i32* %6
	store i32 4, i32* %7
	br label %65

65:
	%66 = load i32, i32* %3
	%67 = icmp ne i32 %66, 0
	br i1 %67, label %68, label %72

68:
	%69 = load i32, i32* %4
	%70 = icmp ne i32 %69, 0
	br i1 %70, label %71, label %72

71:
	call void @putch(i32 32)
	br label %65

72:
	%73 = load i32, i32* %3
	%74 = icmp ne i32 %73, 0
	br i1 %74, label %78, label %75

75:
	%76 = load i32, i32* %4
	%77 = icmp ne i32 %76, 0
	br i1 %77, label %78, label %79

78:
	call void @putch(i32 67)
	br label %79

79:
	%80 = load i32, i32* %3
	%81 = load i32, i32* %4
	%82 = icmp sge i32 %80, %81
	br i1 %82, label %87, label %83

83:
	%84 = load i32, i32* %4
	%85 = load i32, i32* %3
	%86 = icmp sle i32 %84, %85
	br i1 %86, label %87, label %88

87:
	call void @putch(i32 72)
	br label %88

88:
	%89 = load i32, i32* %5
	%90 = load i32, i32* %4
	%91 = icmp sge i32 %89, %90
	br i1 %91, label %92, label %97

92:
	%93 = load i32, i32* %7
	%94 = load i32, i32* %6
	%95 = icmp ne i32 %93, %94
	br i1 %95, label %96, label %97

96:
	call void @putch(i32 73)
	br label %97

97:
	%98 = load i32, i32* %3
	%99 = load i32, i32* %4
	%100 = icmp ne i32 %99, 0
	%101 = xor i1 %100, true
	%102 = icmp eq i32 %98, %101
	br i1 %102, label %103, label %107

103:
	%104 = load i32, i32* %6
	%105 = load i32, i32* %6
	%106 = icmp slt i32 %104, %105
	br i1 %106, label %111, label %107

107:
	%108 = load i32, i32* %7
	%109 = load i32, i32* %7
	%110 = icmp sge i32 %108, %109
	br i1 %110, label %111, label %112

111:
	call void @putch(i32 74)
	br label %112

112:
	%113 = load i32, i32* %3
	%114 = load i32, i32* %4
	%115 = icmp ne i32 %114, 0
	%116 = xor i1 %115, true
	%117 = icmp eq i32 %113, %116
	br i1 %117, label %126, label %118

118:
	%119 = load i32, i32* %6
	%120 = load i32, i32* %6
	%121 = icmp slt i32 %119, %120
	br i1 %121, label %122, label %127

122:
	%123 = load i32, i32* %7
	%124 = load i32, i32* %7
	%125 = icmp sge i32 %123, %124
	br i1 %125, label %126, label %127

126:
	call void @putch(i32 75)
	br label %127

127:
	call void @putch(i32 10)
	store i32 0, i32* %1
	br label %128

128:
	%129 = load i32, i32* %1
	ret i32 %129

}

