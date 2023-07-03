@N = dso_local constant i32 10000

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

define dso_local i32 @long_array(i32 %0) {
1:
	%2 = alloca i32
	%3 = alloca i32
	%4 = alloca [10000 x i32]
	%5 = alloca [10000 x i32]
	%6 = alloca [10000 x i32]
	%7 = alloca i32
	%8 = alloca i32
	%9 = alloca i32
	%10 = alloca i32
	store i32 %0, i32* %3
	store i32 0, i32* %7
	br label %11

11:
	%12 = load i32, i32* %7
	%13 = icmp slt i32 %12, 10000
	br i1 %13, label %14, label %23

14:
	%15 = load i32, i32* %7
	%16 = load i32, i32* %7
	%17 = mul i32 %15, %16
	%18 = srem i32 %17, 10
	%19 = load i32, i32* %7
	%20 = getelementptr [10000 x i32], [10000 x i32]* %4, i32 0, i32 %19
	store i32 %18, i32* %20
	%21 = load i32, i32* %7
	%22 = add i32 %21, 1
	store i32 %22, i32* %7
	br label %11

23:
	store i32 0, i32* %7
	br label %24

24:
	%25 = load i32, i32* %7
	%26 = icmp slt i32 %25, 10000
	br i1 %26, label %27, label %40

27:
	%28 = load i32, i32* %7
	%29 = getelementptr [10000 x i32], [10000 x i32]* %4, i32 0, i32 %28
	%30 = load i32, i32* %29
	%31 = load i32, i32* %7
	%32 = getelementptr [10000 x i32], [10000 x i32]* %4, i32 0, i32 %31
	%33 = load i32, i32* %32
	%34 = mul i32 %30, %33
	%35 = srem i32 %34, 10
	%36 = load i32, i32* %7
	%37 = getelementptr [10000 x i32], [10000 x i32]* %5, i32 0, i32 %36
	store i32 %35, i32* %37
	%38 = load i32, i32* %7
	%39 = add i32 %38, 1
	store i32 %39, i32* %7
	br label %24

40:
	store i32 0, i32* %7
	br label %41

41:
	%42 = load i32, i32* %7
	%43 = icmp slt i32 %42, 10000
	br i1 %43, label %44, label %61

44:
	%45 = load i32, i32* %7
	%46 = getelementptr [10000 x i32], [10000 x i32]* %5, i32 0, i32 %45
	%47 = load i32, i32* %46
	%48 = load i32, i32* %7
	%49 = getelementptr [10000 x i32], [10000 x i32]* %5, i32 0, i32 %48
	%50 = load i32, i32* %49
	%51 = mul i32 %47, %50
	%52 = srem i32 %51, 100
	%53 = load i32, i32* %7
	%54 = getelementptr [10000 x i32], [10000 x i32]* %4, i32 0, i32 %53
	%55 = load i32, i32* %54
	%56 = add i32 %52, %55
	%57 = load i32, i32* %7
	%58 = getelementptr [10000 x i32], [10000 x i32]* %6, i32 0, i32 %57
	store i32 %56, i32* %58
	%59 = load i32, i32* %7
	%60 = add i32 %59, 1
	store i32 %60, i32* %7
	br label %41

61:
	store i32 0, i32* %8
	store i32 0, i32* %7
	br label %62

62:
	%63 = load i32, i32* %7
	%64 = icmp slt i32 %63, 10000
	br i1 %64, label %65, label %149

65:
	%66 = load i32, i32* %7
	%67 = icmp slt i32 %66, 10
	br i1 %67, label %68, label %76

68:
	%69 = load i32, i32* %8
	%70 = load i32, i32* %7
	%71 = getelementptr [10000 x i32], [10000 x i32]* %6, i32 0, i32 %70
	%72 = load i32, i32* %71
	%73 = add i32 %69, %72
	%74 = srem i32 %73, 1333
	store i32 %74, i32* %8
	%75 = load i32, i32* %8
	call void @putint(i32 %75)
	br label %146

76:
	%77 = load i32, i32* %7
	%78 = icmp slt i32 %77, 20
	br i1 %78, label %79, label %97

79:
	store i32 5000, i32* %9
	br label %80

80:
	%81 = load i32, i32* %9
	%82 = icmp slt i32 %81, 10000
	br i1 %82, label %83, label %95

83:
	%84 = load i32, i32* %8
	%85 = load i32, i32* %7
	%86 = getelementptr [10000 x i32], [10000 x i32]* %6, i32 0, i32 %85
	%87 = load i32, i32* %86
	%88 = add i32 %84, %87
	%89 = load i32, i32* %9
	%90 = getelementptr [10000 x i32], [10000 x i32]* %4, i32 0, i32 %89
	%91 = load i32, i32* %90
	%92 = sub i32 %88, %91
	store i32 %92, i32* %8
	%93 = load i32, i32* %9
	%94 = add i32 %93, 1
	store i32 %94, i32* %9
	br label %80

95:
	%96 = load i32, i32* %8
	call void @putint(i32 %96)
	br label %145

97:
	%98 = load i32, i32* %7
	%99 = icmp slt i32 %98, 30
	br i1 %99, label %100, label %135

100:
	store i32 5000, i32* %10
	br label %101

101:
	%102 = load i32, i32* %10
	%103 = icmp slt i32 %102, 10000
	br i1 %103, label %104, label %133

104:
	%105 = load i32, i32* %10
	%106 = icmp sgt i32 %105, 2233
	br i1 %106, label %107, label %119

107:
	%108 = load i32, i32* %8
	%109 = load i32, i32* %7
	%110 = getelementptr [10000 x i32], [10000 x i32]* %5, i32 0, i32 %109
	%111 = load i32, i32* %110
	%112 = add i32 %108, %111
	%113 = load i32, i32* %10
	%114 = getelementptr [10000 x i32], [10000 x i32]* %4, i32 0, i32 %113
	%115 = load i32, i32* %114
	%116 = sub i32 %112, %115
	store i32 %116, i32* %8
	%117 = load i32, i32* %10
	%118 = add i32 %117, 1
	store i32 %118, i32* %10
	br label %132

119:
	%120 = load i32, i32* %8
	%121 = load i32, i32* %7
	%122 = getelementptr [10000 x i32], [10000 x i32]* %4, i32 0, i32 %121
	%123 = load i32, i32* %122
	%124 = add i32 %120, %123
	%125 = load i32, i32* %10
	%126 = getelementptr [10000 x i32], [10000 x i32]* %6, i32 0, i32 %125
	%127 = load i32, i32* %126
	%128 = add i32 %124, %127
	%129 = srem i32 %128, 13333
	store i32 %129, i32* %8
	%130 = load i32, i32* %10
	%131 = add i32 %130, 2
	store i32 %131, i32* %10
	br label %132

132:
	br label %101

133:
	%134 = load i32, i32* %8
	call void @putint(i32 %134)
	br label %144

135:
	%136 = load i32, i32* %8
	%137 = load i32, i32* %7
	%138 = getelementptr [10000 x i32], [10000 x i32]* %6, i32 0, i32 %137
	%139 = load i32, i32* %138
	%140 = load i32, i32* %3
	%141 = mul i32 %139, %140
	%142 = add i32 %136, %141
	%143 = srem i32 %142, 99988
	store i32 %143, i32* %8
	br label %144

144:
	br label %145

145:
	br label %146

146:
	%147 = load i32, i32* %7
	%148 = add i32 %147, 1
	store i32 %148, i32* %7
	br label %62

149:
	%150 = load i32, i32* %8
	store i32 %150, i32* %2
	br label %151

151:
	%152 = load i32, i32* %2
	ret i32 %152

}

define dso_local i32 @main() {
0:
	%1 = alloca i32
	%2 = call i32 @long_array(i32 9)
	store i32 %2, i32* %1
	br label %3

3:
	%4 = load i32, i32* %1
	ret i32 %4

}

