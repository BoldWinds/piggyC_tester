@array = dso_local global [110 x i32] zeroinitializer
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

define dso_local void @init(i32 %0) {
1:
	%2 = alloca i32
	%3 = alloca i32
	store i32 %0, i32* %2
	store i32 1, i32* %3
	br label %4

4:
	%5 = load i32, i32* %3
	%6 = load i32, i32* %2
	%7 = load i32, i32* %2
	%8 = mul i32 %6, %7
	%9 = add i32 %8, 1
	%10 = icmp sle i32 %5, %9
	br i1 %10, label %11, label %16

11:
	%12 = load i32, i32* %3
	%13 = getelementptr [110 x i32], [110 x i32]* @array, i32 0, i32 %12
	store i32 -1, i32* %13
	%14 = load i32, i32* %3
	%15 = add i32 %14, 1
	store i32 %15, i32* %3
	br label %4

16:
	br label %17

17:
	ret void

}

define dso_local i32 @findfa(i32 %0) {
1:
	%2 = alloca i32
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = load i32, i32* %3
	%5 = getelementptr [110 x i32], [110 x i32]* @array, i32 0, i32 %4
	%6 = load i32, i32* %5
	%7 = load i32, i32* %3
	%8 = icmp eq i32 %6, %7
	br i1 %8, label %9, label %11

9:
	%10 = load i32, i32* %3
	store i32 %10, i32* %2
	br label %22

11:
	%12 = load i32, i32* %3
	%13 = getelementptr [110 x i32], [110 x i32]* @array, i32 0, i32 %12
	%14 = load i32, i32* %13
	%15 = call i32 @findfa(i32 %14)
	%16 = load i32, i32* %3
	%17 = getelementptr [110 x i32], [110 x i32]* @array, i32 0, i32 %16
	store i32 %15, i32* %17
	%18 = load i32, i32* %3
	%19 = getelementptr [110 x i32], [110 x i32]* @array, i32 0, i32 %18
	%20 = load i32, i32* %19
	store i32 %20, i32* %2
	br label %22

21:
	br label %22

22:
	%23 = load i32, i32* %2
	ret i32 %23

}

define dso_local void @mmerge(i32 %0, i32 %1) {
2:
	%3 = alloca i32
	%4 = alloca i32
	%5 = alloca i32
	%6 = alloca i32
	store i32 %0, i32* %3
	store i32 %1, i32* %4
	%7 = load i32, i32* %3
	%8 = call i32 @findfa(i32 %7)
	store i32 %8, i32* %5
	%9 = load i32, i32* %4
	%10 = call i32 @findfa(i32 %9)
	store i32 %10, i32* %6
	%11 = load i32, i32* %5
	%12 = load i32, i32* %6
	%13 = icmp ne i32 %11, %12
	br i1 %13, label %14, label %18

14:
	%15 = load i32, i32* %6
	%16 = load i32, i32* %5
	%17 = getelementptr [110 x i32], [110 x i32]* @array, i32 0, i32 %16
	store i32 %15, i32* %17
	br label %18

18:
	br label %19

19:
	ret void

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
	store i32 1, i32* %2
	br label %11

11:
	%12 = load i32, i32* %2
	%13 = icmp ne i32 %12, 0
	br i1 %13, label %14, label %143

14:
	%15 = load i32, i32* %2
	%16 = sub i32 %15, 1
	store i32 %16, i32* %2
	store i32 4, i32* @n
	store i32 10, i32* %3
	store i32 0, i32* %6
	store i32 0, i32* %7
	%17 = load i32, i32* @n
	call void @init(i32 %17)
	%18 = load i32, i32* @n
	%19 = load i32, i32* @n
	%20 = mul i32 %18, %19
	%21 = add i32 %20, 1
	store i32 %21, i32* %8
	br label %22

22:
	%23 = load i32, i32* %6
	%24 = load i32, i32* %3
	%25 = icmp slt i32 %23, %24
	br i1 %25, label %26, label %137

26:
	%27 = call i32 @getint()
	store i32 %27, i32* %4
	%28 = call i32 @getint()
	store i32 %28, i32* %5
	%29 = load i32, i32* %7
	%30 = icmp ne i32 %29, 0
	%31 = xor i1 %30, true
	br i1 %31, label %32, label %134

32:
	%33 = load i32, i32* @n
	%34 = load i32, i32* %4
	%35 = sub i32 %34, 1
	%36 = mul i32 %33, %35
	%37 = load i32, i32* %5
	%38 = add i32 %36, %37
	store i32 %38, i32* %9
	%39 = load i32, i32* %9
	%40 = load i32, i32* %9
	%41 = getelementptr [110 x i32], [110 x i32]* @array, i32 0, i32 %40
	store i32 %39, i32* %41
	%42 = load i32, i32* %4
	%43 = icmp eq i32 %42, 1
	br i1 %43, label %44, label %47

44:
	%45 = getelementptr [110 x i32], [110 x i32]* @array, i32 0, i32 0
	store i32 0, i32* %45
	%46 = load i32, i32* %9
	call void @mmerge(i32 %46, i32 0)
	br label %47

47:
	%48 = load i32, i32* %4
	%49 = load i32, i32* @n
	%50 = icmp eq i32 %48, %49
	br i1 %50, label %51, label %57

51:
	%52 = load i32, i32* %8
	%53 = load i32, i32* %8
	%54 = getelementptr [110 x i32], [110 x i32]* @array, i32 0, i32 %53
	store i32 %52, i32* %54
	%55 = load i32, i32* %9
	%56 = load i32, i32* %8
	call void @mmerge(i32 %55, i32 %56)
	br label %57

57:
	%58 = load i32, i32* %5
	%59 = load i32, i32* @n
	%60 = icmp slt i32 %58, %59
	br i1 %60, label %61, label %71

61:
	%62 = load i32, i32* %9
	%63 = add i32 %62, 1
	%64 = getelementptr [110 x i32], [110 x i32]* @array, i32 0, i32 %63
	%65 = load i32, i32* %64
	%66 = icmp ne i32 %65, -1
	br i1 %66, label %67, label %71

67:
	%68 = load i32, i32* %9
	%69 = load i32, i32* %9
	%70 = add i32 %69, 1
	call void @mmerge(i32 %68, i32 %70)
	br label %71

71:
	%72 = load i32, i32* %5
	%73 = icmp sgt i32 %72, 1
	br i1 %73, label %74, label %84

74:
	%75 = load i32, i32* %9
	%76 = sub i32 %75, 1
	%77 = getelementptr [110 x i32], [110 x i32]* @array, i32 0, i32 %76
	%78 = load i32, i32* %77
	%79 = icmp ne i32 %78, -1
	br i1 %79, label %80, label %84

80:
	%81 = load i32, i32* %9
	%82 = load i32, i32* %9
	%83 = sub i32 %82, 1
	call void @mmerge(i32 %81, i32 %83)
	br label %84

84:
	%85 = load i32, i32* %4
	%86 = load i32, i32* @n
	%87 = icmp slt i32 %85, %86
	br i1 %87, label %88, label %100

88:
	%89 = load i32, i32* %9
	%90 = load i32, i32* @n
	%91 = add i32 %89, %90
	%92 = getelementptr [110 x i32], [110 x i32]* @array, i32 0, i32 %91
	%93 = load i32, i32* %92
	%94 = icmp ne i32 %93, -1
	br i1 %94, label %95, label %100

95:
	%96 = load i32, i32* %9
	%97 = load i32, i32* %9
	%98 = load i32, i32* @n
	%99 = add i32 %97, %98
	call void @mmerge(i32 %96, i32 %99)
	br label %100

100:
	%101 = load i32, i32* %4
	%102 = icmp sgt i32 %101, 1
	br i1 %102, label %103, label %115

103:
	%104 = load i32, i32* %9
	%105 = load i32, i32* @n
	%106 = sub i32 %104, %105
	%107 = getelementptr [110 x i32], [110 x i32]* @array, i32 0, i32 %106
	%108 = load i32, i32* %107
	%109 = icmp ne i32 %108, -1
	br i1 %109, label %110, label %115

110:
	%111 = load i32, i32* %9
	%112 = load i32, i32* %9
	%113 = load i32, i32* @n
	%114 = sub i32 %112, %113
	call void @mmerge(i32 %111, i32 %114)
	br label %115

115:
	%116 = getelementptr [110 x i32], [110 x i32]* @array, i32 0, i32 0
	%117 = load i32, i32* %116
	%118 = icmp ne i32 %117, -1
	br i1 %118, label %119, label %133

119:
	%120 = load i32, i32* %8
	%121 = getelementptr [110 x i32], [110 x i32]* @array, i32 0, i32 %120
	%122 = load i32, i32* %121
	%123 = icmp ne i32 %122, -1
	br i1 %123, label %124, label %133

124:
	%125 = call i32 @findfa(i32 0)
	%126 = load i32, i32* %8
	%127 = call i32 @findfa(i32 %126)
	%128 = icmp eq i32 %125, %127
	br i1 %128, label %129, label %133

129:
	store i32 1, i32* %7
	%130 = load i32, i32* %6
	%131 = add i32 %130, 1
	store i32 %131, i32* %10
	%132 = load i32, i32* %10
	call void @putint(i32 %132)
	call void @putch(i32 10)
	br label %133

133:
	br label %134

134:
	%135 = load i32, i32* %6
	%136 = add i32 %135, 1
	store i32 %136, i32* %6
	br label %22

137:
	%138 = load i32, i32* %7
	%139 = icmp ne i32 %138, 0
	%140 = xor i1 %139, true
	br i1 %140, label %141, label %142

141:
	call void @putint(i32 -1)
	call void @putch(i32 10)
	br label %142

142:
	br label %11

143:
	store i32 0, i32* %1
	br label %144

144:
	%145 = load i32, i32* %1
	ret i32 %145

}

