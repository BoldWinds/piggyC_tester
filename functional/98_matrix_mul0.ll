@M = dso_local global i32 0
@L = dso_local global i32 0
@N = dso_local global i32 0

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

define dso_local i32 @mul(float* %0, float* %1, float* %2, float* %3, float* %4, float* %5, float* %6, float* %7, float* %8) {
9:
	%10 = alloca i32
	%11 = alloca float*
	%12 = alloca float*
	%13 = alloca float*
	%14 = alloca float*
	%15 = alloca float*
	%16 = alloca float*
	%17 = alloca float*
	%18 = alloca float*
	%19 = alloca float*
	%20 = alloca i32
	store float* %0, float** %11
	store float* %1, float** %12
	store float* %2, float** %13
	store float* %3, float** %14
	store float* %4, float** %15
	store float* %5, float** %16
	store float* %6, float** %17
	store float* %7, float** %18
	store float* %8, float** %19
	store i32 0, i32* %20
	%21 = load float*, float** %11
	%22 = getelementptr float, float* %21, i32 0
	%23 = load float, float* %22
	%24 = load float*, float** %14
	%25 = getelementptr float, float* %24, i32 0
	%26 = load float, float* %25
	%27 = fmul float %23, %26
	%28 = load float*, float** %11
	%29 = getelementptr float, float* %28, i32 1
	%30 = load float, float* %29
	%31 = load float*, float** %15
	%32 = getelementptr float, float* %31, i32 0
	%33 = load float, float* %32
	%34 = fmul float %30, %33
	%35 = fadd float %27, %34
	%36 = load float*, float** %11
	%37 = getelementptr float, float* %36, i32 2
	%38 = load float, float* %37
	%39 = load float*, float** %16
	%40 = getelementptr float, float* %39, i32 0
	%41 = load float, float* %40
	%42 = fmul float %38, %41
	%43 = fadd float %35, %42
	%44 = load float*, float** %17
	%45 = getelementptr float, float* %44, i32 0
	store float %43, float* %45
	%46 = load float*, float** %11
	%47 = getelementptr float, float* %46, i32 0
	%48 = load float, float* %47
	%49 = load float*, float** %14
	%50 = getelementptr float, float* %49, i32 1
	%51 = load float, float* %50
	%52 = fmul float %48, %51
	%53 = load float*, float** %11
	%54 = getelementptr float, float* %53, i32 1
	%55 = load float, float* %54
	%56 = load float*, float** %15
	%57 = getelementptr float, float* %56, i32 1
	%58 = load float, float* %57
	%59 = fmul float %55, %58
	%60 = fadd float %52, %59
	%61 = load float*, float** %11
	%62 = getelementptr float, float* %61, i32 2
	%63 = load float, float* %62
	%64 = load float*, float** %16
	%65 = getelementptr float, float* %64, i32 1
	%66 = load float, float* %65
	%67 = fmul float %63, %66
	%68 = fadd float %60, %67
	%69 = load float*, float** %17
	%70 = getelementptr float, float* %69, i32 1
	store float %68, float* %70
	%71 = load float*, float** %11
	%72 = getelementptr float, float* %71, i32 0
	%73 = load float, float* %72
	%74 = load float*, float** %14
	%75 = getelementptr float, float* %74, i32 2
	%76 = load float, float* %75
	%77 = fmul float %73, %76
	%78 = load float*, float** %11
	%79 = getelementptr float, float* %78, i32 1
	%80 = load float, float* %79
	%81 = load float*, float** %15
	%82 = getelementptr float, float* %81, i32 2
	%83 = load float, float* %82
	%84 = fmul float %80, %83
	%85 = fadd float %77, %84
	%86 = load float*, float** %11
	%87 = getelementptr float, float* %86, i32 2
	%88 = load float, float* %87
	%89 = load float*, float** %16
	%90 = getelementptr float, float* %89, i32 2
	%91 = load float, float* %90
	%92 = fmul float %88, %91
	%93 = fadd float %85, %92
	%94 = load float*, float** %17
	%95 = getelementptr float, float* %94, i32 2
	store float %93, float* %95
	%96 = load float*, float** %12
	%97 = getelementptr float, float* %96, i32 0
	%98 = load float, float* %97
	%99 = load float*, float** %14
	%100 = getelementptr float, float* %99, i32 0
	%101 = load float, float* %100
	%102 = fmul float %98, %101
	%103 = load float*, float** %12
	%104 = getelementptr float, float* %103, i32 1
	%105 = load float, float* %104
	%106 = load float*, float** %15
	%107 = getelementptr float, float* %106, i32 0
	%108 = load float, float* %107
	%109 = fmul float %105, %108
	%110 = fadd float %102, %109
	%111 = load float*, float** %12
	%112 = getelementptr float, float* %111, i32 2
	%113 = load float, float* %112
	%114 = load float*, float** %16
	%115 = getelementptr float, float* %114, i32 0
	%116 = load float, float* %115
	%117 = fmul float %113, %116
	%118 = fadd float %110, %117
	%119 = load float*, float** %18
	%120 = getelementptr float, float* %119, i32 0
	store float %118, float* %120
	%121 = load float*, float** %12
	%122 = getelementptr float, float* %121, i32 0
	%123 = load float, float* %122
	%124 = load float*, float** %14
	%125 = getelementptr float, float* %124, i32 1
	%126 = load float, float* %125
	%127 = fmul float %123, %126
	%128 = load float*, float** %12
	%129 = getelementptr float, float* %128, i32 1
	%130 = load float, float* %129
	%131 = load float*, float** %15
	%132 = getelementptr float, float* %131, i32 1
	%133 = load float, float* %132
	%134 = fmul float %130, %133
	%135 = fadd float %127, %134
	%136 = load float*, float** %12
	%137 = getelementptr float, float* %136, i32 2
	%138 = load float, float* %137
	%139 = load float*, float** %16
	%140 = getelementptr float, float* %139, i32 1
	%141 = load float, float* %140
	%142 = fmul float %138, %141
	%143 = fadd float %135, %142
	%144 = load float*, float** %18
	%145 = getelementptr float, float* %144, i32 1
	store float %143, float* %145
	%146 = load float*, float** %12
	%147 = getelementptr float, float* %146, i32 0
	%148 = load float, float* %147
	%149 = load float*, float** %14
	%150 = getelementptr float, float* %149, i32 2
	%151 = load float, float* %150
	%152 = fmul float %148, %151
	%153 = load float*, float** %12
	%154 = getelementptr float, float* %153, i32 1
	%155 = load float, float* %154
	%156 = load float*, float** %15
	%157 = getelementptr float, float* %156, i32 2
	%158 = load float, float* %157
	%159 = fmul float %155, %158
	%160 = fadd float %152, %159
	%161 = load float*, float** %12
	%162 = getelementptr float, float* %161, i32 2
	%163 = load float, float* %162
	%164 = load float*, float** %16
	%165 = getelementptr float, float* %164, i32 2
	%166 = load float, float* %165
	%167 = fmul float %163, %166
	%168 = fadd float %160, %167
	%169 = load float*, float** %18
	%170 = getelementptr float, float* %169, i32 2
	store float %168, float* %170
	%171 = load float*, float** %13
	%172 = getelementptr float, float* %171, i32 0
	%173 = load float, float* %172
	%174 = load float*, float** %14
	%175 = getelementptr float, float* %174, i32 0
	%176 = load float, float* %175
	%177 = fmul float %173, %176
	%178 = load float*, float** %13
	%179 = getelementptr float, float* %178, i32 1
	%180 = load float, float* %179
	%181 = load float*, float** %15
	%182 = getelementptr float, float* %181, i32 0
	%183 = load float, float* %182
	%184 = fmul float %180, %183
	%185 = fadd float %177, %184
	%186 = load float*, float** %13
	%187 = getelementptr float, float* %186, i32 2
	%188 = load float, float* %187
	%189 = load float*, float** %16
	%190 = getelementptr float, float* %189, i32 0
	%191 = load float, float* %190
	%192 = fmul float %188, %191
	%193 = fadd float %185, %192
	%194 = load float*, float** %19
	%195 = getelementptr float, float* %194, i32 0
	store float %193, float* %195
	%196 = load float*, float** %13
	%197 = getelementptr float, float* %196, i32 0
	%198 = load float, float* %197
	%199 = load float*, float** %14
	%200 = getelementptr float, float* %199, i32 1
	%201 = load float, float* %200
	%202 = fmul float %198, %201
	%203 = load float*, float** %13
	%204 = getelementptr float, float* %203, i32 1
	%205 = load float, float* %204
	%206 = load float*, float** %15
	%207 = getelementptr float, float* %206, i32 1
	%208 = load float, float* %207
	%209 = fmul float %205, %208
	%210 = fadd float %202, %209
	%211 = load float*, float** %13
	%212 = getelementptr float, float* %211, i32 2
	%213 = load float, float* %212
	%214 = load float*, float** %16
	%215 = getelementptr float, float* %214, i32 1
	%216 = load float, float* %215
	%217 = fmul float %213, %216
	%218 = fadd float %210, %217
	%219 = load float*, float** %19
	%220 = getelementptr float, float* %219, i32 1
	store float %218, float* %220
	%221 = load float*, float** %13
	%222 = getelementptr float, float* %221, i32 0
	%223 = load float, float* %222
	%224 = load float*, float** %14
	%225 = getelementptr float, float* %224, i32 2
	%226 = load float, float* %225
	%227 = fmul float %223, %226
	%228 = load float*, float** %13
	%229 = getelementptr float, float* %228, i32 1
	%230 = load float, float* %229
	%231 = load float*, float** %15
	%232 = getelementptr float, float* %231, i32 2
	%233 = load float, float* %232
	%234 = fmul float %230, %233
	%235 = fadd float %227, %234
	%236 = load float*, float** %13
	%237 = getelementptr float, float* %236, i32 2
	%238 = load float, float* %237
	%239 = load float*, float** %16
	%240 = getelementptr float, float* %239, i32 2
	%241 = load float, float* %240
	%242 = fmul float %238, %241
	%243 = fadd float %235, %242
	%244 = load float*, float** %19
	%245 = getelementptr float, float* %244, i32 2
	store float %243, float* %245
	store i32 0, i32* %10
	br label %246

246:
	%247 = load i32, i32* %10
	ret i32 %247

}

define dso_local i32 @main() {
0:
	%1 = alloca i32
	%2 = alloca [3 x float]
	%3 = alloca [3 x float]
	%4 = alloca [3 x float]
	%5 = alloca [3 x float]
	%6 = alloca [3 x float]
	%7 = alloca [3 x float]
	%8 = alloca [6 x float]
	%9 = alloca [3 x float]
	%10 = alloca [3 x float]
	%11 = alloca i32
	%12 = alloca i32
	store i32 3, i32* @N
	store i32 3, i32* @M
	store i32 3, i32* @L
	store i32 0, i32* %11
	br label %13

13:
	%14 = load i32, i32* %11
	%15 = load i32, i32* @M
	%16 = icmp slt i32 %14, %15
	br i1 %16, label %17, label %44

17:
	%18 = load i32, i32* %11
	%19 = load i32, i32* %11
	%20 = getelementptr [3 x float], [3 x float]* %2, i32 0, i32 %19
	%21 = sitofp i32 %18 to float
	store float %21, float* %20
	%22 = load i32, i32* %11
	%23 = load i32, i32* %11
	%24 = getelementptr [3 x float], [3 x float]* %3, i32 0, i32 %23
	%25 = sitofp i32 %22 to float
	store float %25, float* %24
	%26 = load i32, i32* %11
	%27 = load i32, i32* %11
	%28 = getelementptr [3 x float], [3 x float]* %4, i32 0, i32 %27
	%29 = sitofp i32 %26 to float
	store float %29, float* %28
	%30 = load i32, i32* %11
	%31 = load i32, i32* %11
	%32 = getelementptr [3 x float], [3 x float]* %5, i32 0, i32 %31
	%33 = sitofp i32 %30 to float
	store float %33, float* %32
	%34 = load i32, i32* %11
	%35 = load i32, i32* %11
	%36 = getelementptr [3 x float], [3 x float]* %6, i32 0, i32 %35
	%37 = sitofp i32 %34 to float
	store float %37, float* %36
	%38 = load i32, i32* %11
	%39 = load i32, i32* %11
	%40 = getelementptr [3 x float], [3 x float]* %7, i32 0, i32 %39
	%41 = sitofp i32 %38 to float
	store float %41, float* %40
	%42 = load i32, i32* %11
	%43 = add i32 %42, 1
	store i32 %43, i32* %11
	br label %13

44:
	%45 = getelementptr [3 x float], [3 x float]* %2, i32 0, i32 0
	%46 = getelementptr [3 x float], [3 x float]* %3, i32 0, i32 0
	%47 = getelementptr [3 x float], [3 x float]* %4, i32 0, i32 0
	%48 = getelementptr [3 x float], [3 x float]* %5, i32 0, i32 0
	%49 = getelementptr [3 x float], [3 x float]* %6, i32 0, i32 0
	%50 = getelementptr [3 x float], [3 x float]* %7, i32 0, i32 0
	%51 = getelementptr [6 x float], [6 x float]* %8, i32 0, i32 0
	%52 = getelementptr [3 x float], [3 x float]* %9, i32 0, i32 0
	%53 = getelementptr [3 x float], [3 x float]* %10, i32 0, i32 0
	%54 = call i32 @mul(float* %45, float* %46, float* %47, float* %48, float* %49, float* %50, float* %51, float* %52, float* %53)
	store i32 %54, i32* %11
	br label %55

55:
	%56 = load i32, i32* %11
	%57 = load i32, i32* @N
	%58 = icmp slt i32 %56, %57
	br i1 %58, label %59, label %67

59:
	%60 = load i32, i32* %11
	%61 = getelementptr [6 x float], [6 x float]* %8, i32 0, i32 %60
	%62 = load float, float* %61
	%63 = fptosi float %62 to i32
	store i32 %63, i32* %12
	%64 = load i32, i32* %12
	call void @putint(i32 %64)
	%65 = load i32, i32* %11
	%66 = add i32 %65, 1
	store i32 %66, i32* %11
	br label %55

67:
	store i32 10, i32* %12
	store i32 0, i32* %11
	%68 = load i32, i32* %12
	call void @putch(i32 %68)
	br label %69

69:
	%70 = load i32, i32* %11
	%71 = load i32, i32* @N
	%72 = icmp slt i32 %70, %71
	br i1 %72, label %73, label %81

73:
	%74 = load i32, i32* %11
	%75 = getelementptr [3 x float], [3 x float]* %9, i32 0, i32 %74
	%76 = load float, float* %75
	%77 = fptosi float %76 to i32
	store i32 %77, i32* %12
	%78 = load i32, i32* %12
	call void @putint(i32 %78)
	%79 = load i32, i32* %11
	%80 = add i32 %79, 1
	store i32 %80, i32* %11
	br label %69

81:
	store i32 10, i32* %12
	store i32 0, i32* %11
	%82 = load i32, i32* %12
	call void @putch(i32 %82)
	br label %83

83:
	%84 = load i32, i32* %11
	%85 = load i32, i32* @N
	%86 = icmp slt i32 %84, %85
	br i1 %86, label %87, label %95

87:
	%88 = load i32, i32* %11
	%89 = getelementptr [3 x float], [3 x float]* %10, i32 0, i32 %88
	%90 = load float, float* %89
	%91 = fptosi float %90 to i32
	store i32 %91, i32* %12
	%92 = load i32, i32* %12
	call void @putint(i32 %92)
	%93 = load i32, i32* %11
	%94 = add i32 %93, 1
	store i32 %94, i32* %11
	br label %83

95:
	store i32 10, i32* %12
	%96 = load i32, i32* %12
	call void @putch(i32 %96)
	store i32 0, i32* %1
	br label %97

97:
	%98 = load i32, i32* %1
	ret i32 %98

}

