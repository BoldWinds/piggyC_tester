@len = dso_local constant i32 20

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
	%4 = alloca i32
	%5 = alloca i32
	%6 = alloca i32
	%7 = alloca [20 x i32]
	%8 = alloca [20 x i32]
	%9 = alloca i32
	%10 = alloca i32
	%11 = alloca [25 x i32]
	%12 = alloca [25 x i32]
	%13 = alloca [40 x i32]
	%14 = getelementptr [20 x i32], [20 x i32]* %7, i32 0, i32 0
	store i32 1, i32* %14
	%15 = getelementptr [20 x i32], [20 x i32]* %7, i32 0, i32 1
	store i32 2, i32* %15
	%16 = getelementptr [20 x i32], [20 x i32]* %7, i32 0, i32 2
	store i32 3, i32* %16
	%17 = getelementptr [20 x i32], [20 x i32]* %7, i32 0, i32 3
	store i32 4, i32* %17
	%18 = getelementptr [20 x i32], [20 x i32]* %7, i32 0, i32 4
	store i32 5, i32* %18
	%19 = getelementptr [20 x i32], [20 x i32]* %7, i32 0, i32 5
	store i32 6, i32* %19
	%20 = getelementptr [20 x i32], [20 x i32]* %7, i32 0, i32 6
	store i32 7, i32* %20
	%21 = getelementptr [20 x i32], [20 x i32]* %7, i32 0, i32 7
	store i32 8, i32* %21
	%22 = getelementptr [20 x i32], [20 x i32]* %7, i32 0, i32 8
	store i32 9, i32* %22
	%23 = getelementptr [20 x i32], [20 x i32]* %7, i32 0, i32 9
	store i32 0, i32* %23
	%24 = getelementptr [20 x i32], [20 x i32]* %7, i32 0, i32 10
	store i32 1, i32* %24
	%25 = getelementptr [20 x i32], [20 x i32]* %7, i32 0, i32 11
	store i32 2, i32* %25
	%26 = getelementptr [20 x i32], [20 x i32]* %7, i32 0, i32 12
	store i32 3, i32* %26
	%27 = getelementptr [20 x i32], [20 x i32]* %7, i32 0, i32 13
	store i32 4, i32* %27
	%28 = getelementptr [20 x i32], [20 x i32]* %7, i32 0, i32 14
	store i32 5, i32* %28
	%29 = getelementptr [20 x i32], [20 x i32]* %7, i32 0, i32 15
	store i32 6, i32* %29
	%30 = getelementptr [20 x i32], [20 x i32]* %7, i32 0, i32 16
	store i32 7, i32* %30
	%31 = getelementptr [20 x i32], [20 x i32]* %7, i32 0, i32 17
	store i32 8, i32* %31
	%32 = getelementptr [20 x i32], [20 x i32]* %7, i32 0, i32 18
	store i32 9, i32* %32
	%33 = getelementptr [20 x i32], [20 x i32]* %7, i32 0, i32 19
	store i32 0, i32* %33
	%34 = getelementptr [20 x i32], [20 x i32]* %8, i32 0, i32 0
	store i32 2, i32* %34
	%35 = getelementptr [20 x i32], [20 x i32]* %8, i32 0, i32 1
	store i32 3, i32* %35
	%36 = getelementptr [20 x i32], [20 x i32]* %8, i32 0, i32 2
	store i32 4, i32* %36
	%37 = getelementptr [20 x i32], [20 x i32]* %8, i32 0, i32 3
	store i32 2, i32* %37
	%38 = getelementptr [20 x i32], [20 x i32]* %8, i32 0, i32 4
	store i32 5, i32* %38
	%39 = getelementptr [20 x i32], [20 x i32]* %8, i32 0, i32 5
	store i32 7, i32* %39
	%40 = getelementptr [20 x i32], [20 x i32]* %8, i32 0, i32 6
	store i32 9, i32* %40
	%41 = getelementptr [20 x i32], [20 x i32]* %8, i32 0, i32 7
	store i32 9, i32* %41
	%42 = getelementptr [20 x i32], [20 x i32]* %8, i32 0, i32 8
	store i32 0, i32* %42
	%43 = getelementptr [20 x i32], [20 x i32]* %8, i32 0, i32 9
	store i32 1, i32* %43
	%44 = getelementptr [20 x i32], [20 x i32]* %8, i32 0, i32 10
	store i32 9, i32* %44
	%45 = getelementptr [20 x i32], [20 x i32]* %8, i32 0, i32 11
	store i32 8, i32* %45
	%46 = getelementptr [20 x i32], [20 x i32]* %8, i32 0, i32 12
	store i32 7, i32* %46
	%47 = getelementptr [20 x i32], [20 x i32]* %8, i32 0, i32 13
	store i32 6, i32* %47
	%48 = getelementptr [20 x i32], [20 x i32]* %8, i32 0, i32 14
	store i32 4, i32* %48
	%49 = getelementptr [20 x i32], [20 x i32]* %8, i32 0, i32 15
	store i32 3, i32* %49
	%50 = getelementptr [20 x i32], [20 x i32]* %8, i32 0, i32 16
	store i32 2, i32* %50
	%51 = getelementptr [20 x i32], [20 x i32]* %8, i32 0, i32 17
	store i32 1, i32* %51
	%52 = getelementptr [20 x i32], [20 x i32]* %8, i32 0, i32 18
	store i32 2, i32* %52
	%53 = getelementptr [20 x i32], [20 x i32]* %8, i32 0, i32 19
	store i32 2, i32* %53
	store i32 20, i32* %9
	store i32 20, i32* %10
	%54 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 0
	store i32 0, i32* %54
	%55 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 1
	store i32 0, i32* %55
	%56 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 2
	store i32 0, i32* %56
	%57 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 3
	store i32 0, i32* %57
	%58 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 4
	store i32 0, i32* %58
	%59 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 5
	store i32 0, i32* %59
	%60 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 6
	store i32 0, i32* %60
	%61 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 7
	store i32 0, i32* %61
	%62 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 8
	store i32 0, i32* %62
	%63 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 9
	store i32 0, i32* %63
	%64 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 10
	store i32 0, i32* %64
	%65 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 11
	store i32 0, i32* %65
	%66 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 12
	store i32 0, i32* %66
	%67 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 13
	store i32 0, i32* %67
	%68 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 14
	store i32 0, i32* %68
	%69 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 15
	store i32 0, i32* %69
	%70 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 16
	store i32 0, i32* %70
	%71 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 17
	store i32 0, i32* %71
	%72 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 18
	store i32 0, i32* %72
	%73 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 19
	store i32 0, i32* %73
	%74 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 20
	store i32 0, i32* %74
	%75 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 21
	store i32 0, i32* %75
	%76 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 22
	store i32 0, i32* %76
	%77 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 23
	store i32 0, i32* %77
	%78 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 24
	store i32 0, i32* %78
	%79 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 25
	store i32 0, i32* %79
	%80 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 26
	store i32 0, i32* %80
	%81 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 27
	store i32 0, i32* %81
	%82 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 28
	store i32 0, i32* %82
	%83 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 29
	store i32 0, i32* %83
	%84 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 30
	store i32 0, i32* %84
	%85 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 31
	store i32 0, i32* %85
	%86 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 32
	store i32 0, i32* %86
	%87 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 33
	store i32 0, i32* %87
	%88 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 34
	store i32 0, i32* %88
	%89 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 35
	store i32 0, i32* %89
	%90 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 36
	store i32 0, i32* %90
	%91 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 37
	store i32 0, i32* %91
	%92 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 38
	store i32 0, i32* %92
	%93 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 39
	store i32 0, i32* %93
	store i32 0, i32* %2
	br label %94

94:
	%95 = load i32, i32* %2
	%96 = load i32, i32* %9
	%97 = icmp slt i32 %95, %96
	br i1 %97, label %98, label %106

98:
	%99 = load i32, i32* %2
	%100 = getelementptr [20 x i32], [20 x i32]* %7, i32 0, i32 %99
	%101 = load i32, i32* %100
	%102 = load i32, i32* %2
	%103 = getelementptr [25 x i32], [25 x i32]* %11, i32 0, i32 %102
	store i32 %101, i32* %103
	%104 = load i32, i32* %2
	%105 = add i32 %104, 1
	store i32 %105, i32* %2
	br label %94

106:
	store i32 0, i32* %2
	br label %107

107:
	%108 = load i32, i32* %2
	%109 = load i32, i32* %10
	%110 = icmp slt i32 %108, %109
	br i1 %110, label %111, label %119

111:
	%112 = load i32, i32* %2
	%113 = getelementptr [20 x i32], [20 x i32]* %8, i32 0, i32 %112
	%114 = load i32, i32* %113
	%115 = load i32, i32* %2
	%116 = getelementptr [25 x i32], [25 x i32]* %12, i32 0, i32 %115
	store i32 %114, i32* %116
	%117 = load i32, i32* %2
	%118 = add i32 %117, 1
	store i32 %118, i32* %2
	br label %107

119:
	%120 = load i32, i32* %9
	%121 = load i32, i32* %10
	%122 = add i32 %120, %121
	%123 = sub i32 %122, 1
	store i32 %123, i32* %5
	store i32 0, i32* %2
	br label %124

124:
	%125 = load i32, i32* %2
	%126 = load i32, i32* %5
	%127 = icmp sle i32 %125, %126
	br i1 %127, label %128, label %133

128:
	%129 = load i32, i32* %2
	%130 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 %129
	store i32 0, i32* %130
	%131 = load i32, i32* %2
	%132 = add i32 %131, 1
	store i32 %132, i32* %2
	br label %124

133:
	store i32 0, i32* %6
	%134 = load i32, i32* %10
	%135 = sub i32 %134, 1
	store i32 %135, i32* %2
	br label %136

136:
	%137 = load i32, i32* %2
	%138 = icmp sgt i32 %137, -1
	br i1 %138, label %139, label %190

139:
	%140 = load i32, i32* %2
	%141 = getelementptr [25 x i32], [25 x i32]* %12, i32 0, i32 %140
	%142 = load i32, i32* %141
	store i32 %142, i32* %4
	%143 = load i32, i32* %9
	%144 = sub i32 %143, 1
	store i32 %144, i32* %3
	br label %145

145:
	%146 = load i32, i32* %3
	%147 = icmp sgt i32 %146, -1
	br i1 %147, label %148, label %183

148:
	%149 = load i32, i32* %5
	%150 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 %149
	%151 = load i32, i32* %150
	%152 = load i32, i32* %4
	%153 = load i32, i32* %3
	%154 = getelementptr [25 x i32], [25 x i32]* %11, i32 0, i32 %153
	%155 = load i32, i32* %154
	%156 = mul i32 %152, %155
	%157 = add i32 %151, %156
	store i32 %157, i32* %6
	%158 = load i32, i32* %6
	%159 = icmp sge i32 %158, 10
	br i1 %159, label %160, label %174

160:
	%161 = load i32, i32* %6
	%162 = load i32, i32* %5
	%163 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 %162
	store i32 %161, i32* %163
	%164 = load i32, i32* %5
	%165 = sub i32 %164, 1
	%166 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 %165
	%167 = load i32, i32* %166
	%168 = load i32, i32* %6
	%169 = sdiv i32 %168, 10
	%170 = add i32 %167, %169
	%171 = load i32, i32* %5
	%172 = sub i32 %171, 1
	%173 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 %172
	store i32 %170, i32* %173
	br label %178

174:
	%175 = load i32, i32* %6
	%176 = load i32, i32* %5
	%177 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 %176
	store i32 %175, i32* %177
	br label %178

178:
	%179 = load i32, i32* %3
	%180 = sub i32 %179, 1
	store i32 %180, i32* %3
	%181 = load i32, i32* %5
	%182 = sub i32 %181, 1
	store i32 %182, i32* %5
	br label %145

183:
	%184 = load i32, i32* %5
	%185 = load i32, i32* %9
	%186 = add i32 %184, %185
	%187 = sub i32 %186, 1
	store i32 %187, i32* %5
	%188 = load i32, i32* %2
	%189 = sub i32 %188, 1
	store i32 %189, i32* %2
	br label %136

190:
	%191 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 0
	%192 = load i32, i32* %191
	%193 = icmp ne i32 %192, 0
	br i1 %193, label %194, label %197

194:
	%195 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 0
	%196 = load i32, i32* %195
	call void @putint(i32 %196)
	br label %197

197:
	store i32 1, i32* %2
	br label %198

198:
	%199 = load i32, i32* %2
	%200 = load i32, i32* %9
	%201 = load i32, i32* %10
	%202 = add i32 %200, %201
	%203 = sub i32 %202, 1
	%204 = icmp sle i32 %199, %203
	br i1 %204, label %205, label %211

205:
	%206 = load i32, i32* %2
	%207 = getelementptr [40 x i32], [40 x i32]* %13, i32 0, i32 %206
	%208 = load i32, i32* %207
	call void @putint(i32 %208)
	%209 = load i32, i32* %2
	%210 = add i32 %209, 1
	store i32 %210, i32* %2
	br label %198

211:
	store i32 0, i32* %1
	br label %212

212:
	%213 = load i32, i32* %1
	ret i32 %213

}

