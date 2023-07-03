
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

define dso_local void @sort(i32* %0, i32 %1) {
2:
	%3 = alloca i32*
	%4 = alloca i32
	%5 = alloca i32
	%6 = alloca i32
	%7 = alloca i32
	store i32* %0, i32** %3
	store i32 %1, i32* %4
	store i32 0, i32* %5
	br label %8

8:
	%9 = load i32, i32* %5
	%10 = load i32, i32* %4
	%11 = sub i32 %10, 1
	%12 = icmp slt i32 %9, %11
	br i1 %12, label %13, label %52

13:
	%14 = load i32, i32* %5
	%15 = add i32 %14, 1
	store i32 %15, i32* %6
	br label %16

16:
	%17 = load i32, i32* %6
	%18 = load i32, i32* %4
	%19 = icmp slt i32 %17, %18
	br i1 %19, label %20, label %49

20:
	%21 = load i32, i32* %5
	%22 = load i32*, i32** %3
	%23 = getelementptr i32, i32* %22, i32 %21
	%24 = load i32, i32* %23
	%25 = load i32, i32* %6
	%26 = load i32*, i32** %3
	%27 = getelementptr i32, i32* %26, i32 %25
	%28 = load i32, i32* %27
	%29 = icmp slt i32 %24, %28
	br i1 %29, label %30, label %46

30:
	%31 = load i32, i32* %5
	%32 = load i32*, i32** %3
	%33 = getelementptr i32, i32* %32, i32 %31
	%34 = load i32, i32* %33
	store i32 %34, i32* %7
	%35 = load i32, i32* %6
	%36 = load i32*, i32** %3
	%37 = getelementptr i32, i32* %36, i32 %35
	%38 = load i32, i32* %37
	%39 = load i32, i32* %5
	%40 = load i32*, i32** %3
	%41 = getelementptr i32, i32* %40, i32 %39
	store i32 %38, i32* %41
	%42 = load i32, i32* %7
	%43 = load i32, i32* %6
	%44 = load i32*, i32** %3
	%45 = getelementptr i32, i32* %44, i32 %43
	store i32 %42, i32* %45
	br label %46

46:
	%47 = load i32, i32* %6
	%48 = add i32 %47, 1
	store i32 %48, i32* %6
	br label %16

49:
	%50 = load i32, i32* %5
	%51 = add i32 %50, 1
	store i32 %51, i32* %5
	br label %8

52:
	br label %53

53:
	ret void

}

define dso_local i32 @param32_rec(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31) {
32:
	%33 = alloca i32
	%34 = alloca i32
	%35 = alloca i32
	%36 = alloca i32
	%37 = alloca i32
	%38 = alloca i32
	%39 = alloca i32
	%40 = alloca i32
	%41 = alloca i32
	%42 = alloca i32
	%43 = alloca i32
	%44 = alloca i32
	%45 = alloca i32
	%46 = alloca i32
	%47 = alloca i32
	%48 = alloca i32
	%49 = alloca i32
	%50 = alloca i32
	%51 = alloca i32
	%52 = alloca i32
	%53 = alloca i32
	%54 = alloca i32
	%55 = alloca i32
	%56 = alloca i32
	%57 = alloca i32
	%58 = alloca i32
	%59 = alloca i32
	%60 = alloca i32
	%61 = alloca i32
	%62 = alloca i32
	%63 = alloca i32
	%64 = alloca i32
	%65 = alloca i32
	store i32 %0, i32* %34
	store i32 %1, i32* %35
	store i32 %2, i32* %36
	store i32 %3, i32* %37
	store i32 %4, i32* %38
	store i32 %5, i32* %39
	store i32 %6, i32* %40
	store i32 %7, i32* %41
	store i32 %8, i32* %42
	store i32 %9, i32* %43
	store i32 %10, i32* %44
	store i32 %11, i32* %45
	store i32 %12, i32* %46
	store i32 %13, i32* %47
	store i32 %14, i32* %48
	store i32 %15, i32* %49
	store i32 %16, i32* %50
	store i32 %17, i32* %51
	store i32 %18, i32* %52
	store i32 %19, i32* %53
	store i32 %20, i32* %54
	store i32 %21, i32* %55
	store i32 %22, i32* %56
	store i32 %23, i32* %57
	store i32 %24, i32* %58
	store i32 %25, i32* %59
	store i32 %26, i32* %60
	store i32 %27, i32* %61
	store i32 %28, i32* %62
	store i32 %29, i32* %63
	store i32 %30, i32* %64
	store i32 %31, i32* %65
	%66 = load i32, i32* %34
	%67 = icmp eq i32 %66, 0
	br i1 %67, label %68, label %70

68:
	%69 = load i32, i32* %35
	store i32 %69, i32* %33
	br label %108

70:
	%71 = load i32, i32* %34
	%72 = sub i32 %71, 1
	%73 = load i32, i32* %35
	%74 = load i32, i32* %36
	%75 = add i32 %73, %74
	%76 = srem i32 %75, 998244353
	%77 = load i32, i32* %37
	%78 = load i32, i32* %38
	%79 = load i32, i32* %39
	%80 = load i32, i32* %40
	%81 = load i32, i32* %41
	%82 = load i32, i32* %42
	%83 = load i32, i32* %43
	%84 = load i32, i32* %44
	%85 = load i32, i32* %45
	%86 = load i32, i32* %46
	%87 = load i32, i32* %47
	%88 = load i32, i32* %48
	%89 = load i32, i32* %49
	%90 = load i32, i32* %50
	%91 = load i32, i32* %51
	%92 = load i32, i32* %52
	%93 = load i32, i32* %53
	%94 = load i32, i32* %54
	%95 = load i32, i32* %55
	%96 = load i32, i32* %56
	%97 = load i32, i32* %57
	%98 = load i32, i32* %58
	%99 = load i32, i32* %59
	%100 = load i32, i32* %60
	%101 = load i32, i32* %61
	%102 = load i32, i32* %62
	%103 = load i32, i32* %63
	%104 = load i32, i32* %64
	%105 = load i32, i32* %65
	%106 = call i32 @param32_rec(i32 %72, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104, i32 %105, i32 0)
	store i32 %106, i32* %33
	br label %108

107:
	br label %108

108:
	%109 = load i32, i32* %33
	ret i32 %109

}

define dso_local i32 @param32_arr(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14, i32* %15, i32* %16, i32* %17, i32* %18, i32* %19, i32* %20, i32* %21, i32* %22, i32* %23, i32* %24, i32* %25, i32* %26, i32* %27, i32* %28, i32* %29, i32* %30, i32* %31) {
32:
	%33 = alloca i32
	%34 = alloca i32*
	%35 = alloca i32*
	%36 = alloca i32*
	%37 = alloca i32*
	%38 = alloca i32*
	%39 = alloca i32*
	%40 = alloca i32*
	%41 = alloca i32*
	%42 = alloca i32*
	%43 = alloca i32*
	%44 = alloca i32*
	%45 = alloca i32*
	%46 = alloca i32*
	%47 = alloca i32*
	%48 = alloca i32*
	%49 = alloca i32*
	%50 = alloca i32*
	%51 = alloca i32*
	%52 = alloca i32*
	%53 = alloca i32*
	%54 = alloca i32*
	%55 = alloca i32*
	%56 = alloca i32*
	%57 = alloca i32*
	%58 = alloca i32*
	%59 = alloca i32*
	%60 = alloca i32*
	%61 = alloca i32*
	%62 = alloca i32*
	%63 = alloca i32*
	%64 = alloca i32*
	%65 = alloca i32*
	%66 = alloca i32
	store i32* %0, i32** %34
	store i32* %1, i32** %35
	store i32* %2, i32** %36
	store i32* %3, i32** %37
	store i32* %4, i32** %38
	store i32* %5, i32** %39
	store i32* %6, i32** %40
	store i32* %7, i32** %41
	store i32* %8, i32** %42
	store i32* %9, i32** %43
	store i32* %10, i32** %44
	store i32* %11, i32** %45
	store i32* %12, i32** %46
	store i32* %13, i32** %47
	store i32* %14, i32** %48
	store i32* %15, i32** %49
	store i32* %16, i32** %50
	store i32* %17, i32** %51
	store i32* %18, i32** %52
	store i32* %19, i32** %53
	store i32* %20, i32** %54
	store i32* %21, i32** %55
	store i32* %22, i32** %56
	store i32* %23, i32** %57
	store i32* %24, i32** %58
	store i32* %25, i32** %59
	store i32* %26, i32** %60
	store i32* %27, i32** %61
	store i32* %28, i32** %62
	store i32* %29, i32** %63
	store i32* %30, i32** %64
	store i32* %31, i32** %65
	%67 = load i32*, i32** %34
	%68 = getelementptr i32, i32* %67, i32 0
	%69 = load i32, i32* %68
	%70 = load i32*, i32** %34
	%71 = getelementptr i32, i32* %70, i32 1
	%72 = load i32, i32* %71
	%73 = add i32 %69, %72
	store i32 %73, i32* %66
	%74 = load i32, i32* %66
	%75 = load i32*, i32** %35
	%76 = getelementptr i32, i32* %75, i32 0
	%77 = load i32, i32* %76
	%78 = add i32 %74, %77
	%79 = load i32*, i32** %35
	%80 = getelementptr i32, i32* %79, i32 1
	%81 = load i32, i32* %80
	%82 = add i32 %78, %81
	store i32 %82, i32* %66
	%83 = load i32, i32* %66
	%84 = load i32*, i32** %36
	%85 = getelementptr i32, i32* %84, i32 0
	%86 = load i32, i32* %85
	%87 = add i32 %83, %86
	%88 = load i32*, i32** %36
	%89 = getelementptr i32, i32* %88, i32 1
	%90 = load i32, i32* %89
	%91 = add i32 %87, %90
	store i32 %91, i32* %66
	%92 = load i32, i32* %66
	%93 = load i32*, i32** %37
	%94 = getelementptr i32, i32* %93, i32 0
	%95 = load i32, i32* %94
	%96 = add i32 %92, %95
	%97 = load i32*, i32** %37
	%98 = getelementptr i32, i32* %97, i32 1
	%99 = load i32, i32* %98
	%100 = add i32 %96, %99
	store i32 %100, i32* %66
	%101 = load i32, i32* %66
	%102 = load i32*, i32** %38
	%103 = getelementptr i32, i32* %102, i32 0
	%104 = load i32, i32* %103
	%105 = add i32 %101, %104
	%106 = load i32*, i32** %38
	%107 = getelementptr i32, i32* %106, i32 1
	%108 = load i32, i32* %107
	%109 = add i32 %105, %108
	store i32 %109, i32* %66
	%110 = load i32, i32* %66
	%111 = load i32*, i32** %39
	%112 = getelementptr i32, i32* %111, i32 0
	%113 = load i32, i32* %112
	%114 = add i32 %110, %113
	%115 = load i32*, i32** %39
	%116 = getelementptr i32, i32* %115, i32 1
	%117 = load i32, i32* %116
	%118 = add i32 %114, %117
	store i32 %118, i32* %66
	%119 = load i32, i32* %66
	%120 = load i32*, i32** %40
	%121 = getelementptr i32, i32* %120, i32 0
	%122 = load i32, i32* %121
	%123 = add i32 %119, %122
	%124 = load i32*, i32** %40
	%125 = getelementptr i32, i32* %124, i32 1
	%126 = load i32, i32* %125
	%127 = add i32 %123, %126
	store i32 %127, i32* %66
	%128 = load i32, i32* %66
	%129 = load i32*, i32** %41
	%130 = getelementptr i32, i32* %129, i32 0
	%131 = load i32, i32* %130
	%132 = add i32 %128, %131
	%133 = load i32*, i32** %41
	%134 = getelementptr i32, i32* %133, i32 1
	%135 = load i32, i32* %134
	%136 = add i32 %132, %135
	store i32 %136, i32* %66
	%137 = load i32, i32* %66
	%138 = load i32*, i32** %42
	%139 = getelementptr i32, i32* %138, i32 0
	%140 = load i32, i32* %139
	%141 = add i32 %137, %140
	%142 = load i32*, i32** %42
	%143 = getelementptr i32, i32* %142, i32 1
	%144 = load i32, i32* %143
	%145 = add i32 %141, %144
	store i32 %145, i32* %66
	%146 = load i32, i32* %66
	%147 = load i32*, i32** %43
	%148 = getelementptr i32, i32* %147, i32 0
	%149 = load i32, i32* %148
	%150 = add i32 %146, %149
	%151 = load i32*, i32** %43
	%152 = getelementptr i32, i32* %151, i32 1
	%153 = load i32, i32* %152
	%154 = add i32 %150, %153
	store i32 %154, i32* %66
	%155 = load i32, i32* %66
	%156 = load i32*, i32** %44
	%157 = getelementptr i32, i32* %156, i32 0
	%158 = load i32, i32* %157
	%159 = add i32 %155, %158
	%160 = load i32*, i32** %44
	%161 = getelementptr i32, i32* %160, i32 1
	%162 = load i32, i32* %161
	%163 = add i32 %159, %162
	store i32 %163, i32* %66
	%164 = load i32, i32* %66
	%165 = load i32*, i32** %45
	%166 = getelementptr i32, i32* %165, i32 0
	%167 = load i32, i32* %166
	%168 = add i32 %164, %167
	%169 = load i32*, i32** %45
	%170 = getelementptr i32, i32* %169, i32 1
	%171 = load i32, i32* %170
	%172 = add i32 %168, %171
	store i32 %172, i32* %66
	%173 = load i32, i32* %66
	%174 = load i32*, i32** %46
	%175 = getelementptr i32, i32* %174, i32 0
	%176 = load i32, i32* %175
	%177 = add i32 %173, %176
	%178 = load i32*, i32** %46
	%179 = getelementptr i32, i32* %178, i32 1
	%180 = load i32, i32* %179
	%181 = add i32 %177, %180
	store i32 %181, i32* %66
	%182 = load i32, i32* %66
	%183 = load i32*, i32** %47
	%184 = getelementptr i32, i32* %183, i32 0
	%185 = load i32, i32* %184
	%186 = add i32 %182, %185
	%187 = load i32*, i32** %47
	%188 = getelementptr i32, i32* %187, i32 1
	%189 = load i32, i32* %188
	%190 = add i32 %186, %189
	store i32 %190, i32* %66
	%191 = load i32, i32* %66
	%192 = load i32*, i32** %48
	%193 = getelementptr i32, i32* %192, i32 0
	%194 = load i32, i32* %193
	%195 = add i32 %191, %194
	%196 = load i32*, i32** %48
	%197 = getelementptr i32, i32* %196, i32 1
	%198 = load i32, i32* %197
	%199 = add i32 %195, %198
	store i32 %199, i32* %66
	%200 = load i32, i32* %66
	%201 = load i32*, i32** %49
	%202 = getelementptr i32, i32* %201, i32 0
	%203 = load i32, i32* %202
	%204 = add i32 %200, %203
	%205 = load i32*, i32** %49
	%206 = getelementptr i32, i32* %205, i32 1
	%207 = load i32, i32* %206
	%208 = add i32 %204, %207
	store i32 %208, i32* %66
	%209 = load i32, i32* %66
	%210 = load i32*, i32** %50
	%211 = getelementptr i32, i32* %210, i32 0
	%212 = load i32, i32* %211
	%213 = add i32 %209, %212
	%214 = load i32*, i32** %50
	%215 = getelementptr i32, i32* %214, i32 1
	%216 = load i32, i32* %215
	%217 = add i32 %213, %216
	store i32 %217, i32* %66
	%218 = load i32, i32* %66
	%219 = load i32*, i32** %51
	%220 = getelementptr i32, i32* %219, i32 0
	%221 = load i32, i32* %220
	%222 = add i32 %218, %221
	%223 = load i32*, i32** %51
	%224 = getelementptr i32, i32* %223, i32 1
	%225 = load i32, i32* %224
	%226 = add i32 %222, %225
	store i32 %226, i32* %66
	%227 = load i32, i32* %66
	%228 = load i32*, i32** %52
	%229 = getelementptr i32, i32* %228, i32 0
	%230 = load i32, i32* %229
	%231 = add i32 %227, %230
	%232 = load i32*, i32** %52
	%233 = getelementptr i32, i32* %232, i32 1
	%234 = load i32, i32* %233
	%235 = add i32 %231, %234
	store i32 %235, i32* %66
	%236 = load i32, i32* %66
	%237 = load i32*, i32** %53
	%238 = getelementptr i32, i32* %237, i32 0
	%239 = load i32, i32* %238
	%240 = add i32 %236, %239
	%241 = load i32*, i32** %53
	%242 = getelementptr i32, i32* %241, i32 1
	%243 = load i32, i32* %242
	%244 = add i32 %240, %243
	store i32 %244, i32* %66
	%245 = load i32, i32* %66
	%246 = load i32*, i32** %54
	%247 = getelementptr i32, i32* %246, i32 0
	%248 = load i32, i32* %247
	%249 = add i32 %245, %248
	%250 = load i32*, i32** %54
	%251 = getelementptr i32, i32* %250, i32 1
	%252 = load i32, i32* %251
	%253 = add i32 %249, %252
	store i32 %253, i32* %66
	%254 = load i32, i32* %66
	%255 = load i32*, i32** %55
	%256 = getelementptr i32, i32* %255, i32 0
	%257 = load i32, i32* %256
	%258 = add i32 %254, %257
	%259 = load i32*, i32** %55
	%260 = getelementptr i32, i32* %259, i32 1
	%261 = load i32, i32* %260
	%262 = add i32 %258, %261
	store i32 %262, i32* %66
	%263 = load i32, i32* %66
	%264 = load i32*, i32** %56
	%265 = getelementptr i32, i32* %264, i32 0
	%266 = load i32, i32* %265
	%267 = add i32 %263, %266
	%268 = load i32*, i32** %56
	%269 = getelementptr i32, i32* %268, i32 1
	%270 = load i32, i32* %269
	%271 = add i32 %267, %270
	store i32 %271, i32* %66
	%272 = load i32, i32* %66
	%273 = load i32*, i32** %57
	%274 = getelementptr i32, i32* %273, i32 0
	%275 = load i32, i32* %274
	%276 = add i32 %272, %275
	%277 = load i32*, i32** %57
	%278 = getelementptr i32, i32* %277, i32 1
	%279 = load i32, i32* %278
	%280 = add i32 %276, %279
	store i32 %280, i32* %66
	%281 = load i32, i32* %66
	%282 = load i32*, i32** %58
	%283 = getelementptr i32, i32* %282, i32 0
	%284 = load i32, i32* %283
	%285 = add i32 %281, %284
	%286 = load i32*, i32** %58
	%287 = getelementptr i32, i32* %286, i32 1
	%288 = load i32, i32* %287
	%289 = add i32 %285, %288
	store i32 %289, i32* %66
	%290 = load i32, i32* %66
	%291 = load i32*, i32** %59
	%292 = getelementptr i32, i32* %291, i32 0
	%293 = load i32, i32* %292
	%294 = add i32 %290, %293
	%295 = load i32*, i32** %59
	%296 = getelementptr i32, i32* %295, i32 1
	%297 = load i32, i32* %296
	%298 = add i32 %294, %297
	store i32 %298, i32* %66
	%299 = load i32, i32* %66
	%300 = load i32*, i32** %60
	%301 = getelementptr i32, i32* %300, i32 0
	%302 = load i32, i32* %301
	%303 = add i32 %299, %302
	%304 = load i32*, i32** %60
	%305 = getelementptr i32, i32* %304, i32 1
	%306 = load i32, i32* %305
	%307 = add i32 %303, %306
	store i32 %307, i32* %66
	%308 = load i32, i32* %66
	%309 = load i32*, i32** %61
	%310 = getelementptr i32, i32* %309, i32 0
	%311 = load i32, i32* %310
	%312 = add i32 %308, %311
	%313 = load i32*, i32** %61
	%314 = getelementptr i32, i32* %313, i32 1
	%315 = load i32, i32* %314
	%316 = add i32 %312, %315
	store i32 %316, i32* %66
	%317 = load i32, i32* %66
	%318 = load i32*, i32** %62
	%319 = getelementptr i32, i32* %318, i32 0
	%320 = load i32, i32* %319
	%321 = add i32 %317, %320
	%322 = load i32*, i32** %62
	%323 = getelementptr i32, i32* %322, i32 1
	%324 = load i32, i32* %323
	%325 = add i32 %321, %324
	store i32 %325, i32* %66
	%326 = load i32, i32* %66
	%327 = load i32*, i32** %63
	%328 = getelementptr i32, i32* %327, i32 0
	%329 = load i32, i32* %328
	%330 = add i32 %326, %329
	%331 = load i32*, i32** %63
	%332 = getelementptr i32, i32* %331, i32 1
	%333 = load i32, i32* %332
	%334 = add i32 %330, %333
	store i32 %334, i32* %66
	%335 = load i32, i32* %66
	%336 = load i32*, i32** %64
	%337 = getelementptr i32, i32* %336, i32 0
	%338 = load i32, i32* %337
	%339 = add i32 %335, %338
	%340 = load i32*, i32** %64
	%341 = getelementptr i32, i32* %340, i32 1
	%342 = load i32, i32* %341
	%343 = add i32 %339, %342
	store i32 %343, i32* %66
	%344 = load i32, i32* %66
	%345 = load i32*, i32** %65
	%346 = getelementptr i32, i32* %345, i32 0
	%347 = load i32, i32* %346
	%348 = add i32 %344, %347
	%349 = load i32*, i32** %65
	%350 = getelementptr i32, i32* %349, i32 1
	%351 = load i32, i32* %350
	%352 = add i32 %348, %351
	store i32 %352, i32* %66
	%353 = load i32, i32* %66
	store i32 %353, i32* %33
	br label %354

354:
	%355 = load i32, i32* %33
	ret i32 %355

}

define dso_local i32 @param16(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15) {
16:
	%17 = alloca i32
	%18 = alloca i32
	%19 = alloca i32
	%20 = alloca i32
	%21 = alloca i32
	%22 = alloca i32
	%23 = alloca i32
	%24 = alloca i32
	%25 = alloca i32
	%26 = alloca i32
	%27 = alloca i32
	%28 = alloca i32
	%29 = alloca i32
	%30 = alloca i32
	%31 = alloca i32
	%32 = alloca i32
	%33 = alloca i32
	%34 = alloca [16 x i32]
	store i32 %0, i32* %18
	store i32 %1, i32* %19
	store i32 %2, i32* %20
	store i32 %3, i32* %21
	store i32 %4, i32* %22
	store i32 %5, i32* %23
	store i32 %6, i32* %24
	store i32 %7, i32* %25
	store i32 %8, i32* %26
	store i32 %9, i32* %27
	store i32 %10, i32* %28
	store i32 %11, i32* %29
	store i32 %12, i32* %30
	store i32 %13, i32* %31
	store i32 %14, i32* %32
	store i32 %15, i32* %33
	%35 = load i32, i32* %18
	%36 = load i32, i32* %19
	%37 = load i32, i32* %20
	%38 = load i32, i32* %21
	%39 = load i32, i32* %22
	%40 = load i32, i32* %23
	%41 = load i32, i32* %24
	%42 = load i32, i32* %25
	%43 = load i32, i32* %26
	%44 = load i32, i32* %27
	%45 = load i32, i32* %28
	%46 = load i32, i32* %29
	%47 = load i32, i32* %30
	%48 = load i32, i32* %31
	%49 = load i32, i32* %32
	%50 = load i32, i32* %33
	%51 = getelementptr [16 x i32], [16 x i32]* %34, i32 0, i32 0
	store i32 %35, i32* %51
	%52 = getelementptr [16 x i32], [16 x i32]* %34, i32 0, i32 1
	store i32 %36, i32* %52
	%53 = getelementptr [16 x i32], [16 x i32]* %34, i32 0, i32 2
	store i32 %37, i32* %53
	%54 = getelementptr [16 x i32], [16 x i32]* %34, i32 0, i32 3
	store i32 %38, i32* %54
	%55 = getelementptr [16 x i32], [16 x i32]* %34, i32 0, i32 4
	store i32 %39, i32* %55
	%56 = getelementptr [16 x i32], [16 x i32]* %34, i32 0, i32 5
	store i32 %40, i32* %56
	%57 = getelementptr [16 x i32], [16 x i32]* %34, i32 0, i32 6
	store i32 %41, i32* %57
	%58 = getelementptr [16 x i32], [16 x i32]* %34, i32 0, i32 7
	store i32 %42, i32* %58
	%59 = getelementptr [16 x i32], [16 x i32]* %34, i32 0, i32 8
	store i32 %43, i32* %59
	%60 = getelementptr [16 x i32], [16 x i32]* %34, i32 0, i32 9
	store i32 %44, i32* %60
	%61 = getelementptr [16 x i32], [16 x i32]* %34, i32 0, i32 10
	store i32 %45, i32* %61
	%62 = getelementptr [16 x i32], [16 x i32]* %34, i32 0, i32 11
	store i32 %46, i32* %62
	%63 = getelementptr [16 x i32], [16 x i32]* %34, i32 0, i32 12
	store i32 %47, i32* %63
	%64 = getelementptr [16 x i32], [16 x i32]* %34, i32 0, i32 13
	store i32 %48, i32* %64
	%65 = getelementptr [16 x i32], [16 x i32]* %34, i32 0, i32 14
	store i32 %49, i32* %65
	%66 = getelementptr [16 x i32], [16 x i32]* %34, i32 0, i32 15
	store i32 %50, i32* %66
	%67 = getelementptr [16 x i32], [16 x i32]* %34, i32 0, i32 0
	call void @sort(i32* %67, i32 16)
	%68 = getelementptr [16 x i32], [16 x i32]* %34, i32 0, i32 0
	%69 = load i32, i32* %68
	%70 = getelementptr [16 x i32], [16 x i32]* %34, i32 0, i32 1
	%71 = load i32, i32* %70
	%72 = getelementptr [16 x i32], [16 x i32]* %34, i32 0, i32 2
	%73 = load i32, i32* %72
	%74 = getelementptr [16 x i32], [16 x i32]* %34, i32 0, i32 3
	%75 = load i32, i32* %74
	%76 = getelementptr [16 x i32], [16 x i32]* %34, i32 0, i32 4
	%77 = load i32, i32* %76
	%78 = getelementptr [16 x i32], [16 x i32]* %34, i32 0, i32 5
	%79 = load i32, i32* %78
	%80 = getelementptr [16 x i32], [16 x i32]* %34, i32 0, i32 6
	%81 = load i32, i32* %80
	%82 = getelementptr [16 x i32], [16 x i32]* %34, i32 0, i32 7
	%83 = load i32, i32* %82
	%84 = getelementptr [16 x i32], [16 x i32]* %34, i32 0, i32 8
	%85 = load i32, i32* %84
	%86 = getelementptr [16 x i32], [16 x i32]* %34, i32 0, i32 9
	%87 = load i32, i32* %86
	%88 = getelementptr [16 x i32], [16 x i32]* %34, i32 0, i32 10
	%89 = load i32, i32* %88
	%90 = getelementptr [16 x i32], [16 x i32]* %34, i32 0, i32 11
	%91 = load i32, i32* %90
	%92 = getelementptr [16 x i32], [16 x i32]* %34, i32 0, i32 12
	%93 = load i32, i32* %92
	%94 = getelementptr [16 x i32], [16 x i32]* %34, i32 0, i32 13
	%95 = load i32, i32* %94
	%96 = getelementptr [16 x i32], [16 x i32]* %34, i32 0, i32 14
	%97 = load i32, i32* %96
	%98 = getelementptr [16 x i32], [16 x i32]* %34, i32 0, i32 15
	%99 = load i32, i32* %98
	%100 = load i32, i32* %18
	%101 = load i32, i32* %19
	%102 = load i32, i32* %20
	%103 = load i32, i32* %21
	%104 = load i32, i32* %22
	%105 = load i32, i32* %23
	%106 = load i32, i32* %24
	%107 = load i32, i32* %25
	%108 = load i32, i32* %26
	%109 = load i32, i32* %27
	%110 = load i32, i32* %28
	%111 = load i32, i32* %29
	%112 = load i32, i32* %30
	%113 = load i32, i32* %31
	%114 = load i32, i32* %32
	%115 = load i32, i32* %33
	%116 = call i32 @param32_rec(i32 %69, i32 %71, i32 %73, i32 %75, i32 %77, i32 %79, i32 %81, i32 %83, i32 %85, i32 %87, i32 %89, i32 %91, i32 %93, i32 %95, i32 %97, i32 %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104, i32 %105, i32 %106, i32 %107, i32 %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114, i32 %115)
	store i32 %116, i32* %17
	br label %117

117:
	%118 = load i32, i32* %17
	ret i32 %118

}

define dso_local i32 @main() {
0:
	%1 = alloca i32
	%2 = alloca [32 x [2 x i32]]
	%3 = alloca i32
	%4 = call i32 @getint()
	%5 = call i32 @getint()
	%6 = call i32 @getint()
	%7 = call i32 @getint()
	%8 = call i32 @getint()
	%9 = call i32 @getint()
	%10 = call i32 @getint()
	%11 = call i32 @getint()
	%12 = call i32 @getint()
	%13 = call i32 @getint()
	%14 = call i32 @getint()
	%15 = call i32 @getint()
	%16 = call i32 @getint()
	%17 = call i32 @getint()
	%18 = call i32 @getint()
	%19 = call i32 @getint()
	%20 = call i32 @param16(i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19)
	%21 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 0, i32 0
	store i32 %20, i32* %21
	%22 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 0, i32 1
	store i32 8848, i32* %22
	%23 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 1, i32 0
	store i32 0, i32* %23
	%24 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 1, i32 1
	store i32 0, i32* %24
	%25 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 2, i32 0
	store i32 0, i32* %25
	%26 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 2, i32 1
	store i32 0, i32* %26
	%27 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 3, i32 0
	store i32 0, i32* %27
	%28 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 3, i32 1
	store i32 0, i32* %28
	%29 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 4, i32 0
	store i32 0, i32* %29
	%30 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 4, i32 1
	store i32 0, i32* %30
	%31 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 5, i32 0
	store i32 0, i32* %31
	%32 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 5, i32 1
	store i32 0, i32* %32
	%33 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 6, i32 0
	store i32 0, i32* %33
	%34 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 6, i32 1
	store i32 0, i32* %34
	%35 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 7, i32 0
	store i32 0, i32* %35
	%36 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 7, i32 1
	store i32 0, i32* %36
	%37 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 8, i32 0
	store i32 0, i32* %37
	%38 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 8, i32 1
	store i32 0, i32* %38
	%39 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 9, i32 0
	store i32 0, i32* %39
	%40 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 9, i32 1
	store i32 0, i32* %40
	%41 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 10, i32 0
	store i32 0, i32* %41
	%42 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 10, i32 1
	store i32 0, i32* %42
	%43 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 11, i32 0
	store i32 0, i32* %43
	%44 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 11, i32 1
	store i32 0, i32* %44
	%45 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 12, i32 0
	store i32 0, i32* %45
	%46 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 12, i32 1
	store i32 0, i32* %46
	%47 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 13, i32 0
	store i32 0, i32* %47
	%48 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 13, i32 1
	store i32 0, i32* %48
	%49 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 14, i32 0
	store i32 0, i32* %49
	%50 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 14, i32 1
	store i32 0, i32* %50
	%51 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 15, i32 0
	store i32 0, i32* %51
	%52 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 15, i32 1
	store i32 0, i32* %52
	%53 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 16, i32 0
	store i32 0, i32* %53
	%54 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 16, i32 1
	store i32 0, i32* %54
	%55 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 17, i32 0
	store i32 0, i32* %55
	%56 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 17, i32 1
	store i32 0, i32* %56
	%57 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 18, i32 0
	store i32 0, i32* %57
	%58 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 18, i32 1
	store i32 0, i32* %58
	%59 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 19, i32 0
	store i32 0, i32* %59
	%60 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 19, i32 1
	store i32 0, i32* %60
	%61 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 20, i32 0
	store i32 0, i32* %61
	%62 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 20, i32 1
	store i32 0, i32* %62
	%63 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 21, i32 0
	store i32 0, i32* %63
	%64 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 21, i32 1
	store i32 0, i32* %64
	%65 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 22, i32 0
	store i32 0, i32* %65
	%66 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 22, i32 1
	store i32 0, i32* %66
	%67 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 23, i32 0
	store i32 0, i32* %67
	%68 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 23, i32 1
	store i32 0, i32* %68
	%69 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 24, i32 0
	store i32 0, i32* %69
	%70 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 24, i32 1
	store i32 0, i32* %70
	%71 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 25, i32 0
	store i32 0, i32* %71
	%72 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 25, i32 1
	store i32 0, i32* %72
	%73 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 26, i32 0
	store i32 0, i32* %73
	%74 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 26, i32 1
	store i32 0, i32* %74
	%75 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 27, i32 0
	store i32 0, i32* %75
	%76 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 27, i32 1
	store i32 0, i32* %76
	%77 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 28, i32 0
	store i32 0, i32* %77
	%78 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 28, i32 1
	store i32 0, i32* %78
	%79 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 29, i32 0
	store i32 0, i32* %79
	%80 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 29, i32 1
	store i32 0, i32* %80
	%81 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 30, i32 0
	store i32 0, i32* %81
	%82 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 30, i32 1
	store i32 0, i32* %82
	%83 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 31, i32 0
	store i32 0, i32* %83
	%84 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 31, i32 1
	store i32 0, i32* %84
	store i32 1, i32* %3
	br label %85

85:
	%86 = load i32, i32* %3
	%87 = icmp slt i32 %86, 32
	br i1 %87, label %88, label %105

88:
	%89 = load i32, i32* %3
	%90 = sub i32 %89, 1
	%91 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 %90, i32 1
	%92 = load i32, i32* %91
	%93 = sub i32 %92, 1
	%94 = load i32, i32* %3
	%95 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 %94, i32 0
	store i32 %93, i32* %95
	%96 = load i32, i32* %3
	%97 = sub i32 %96, 1
	%98 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 %97, i32 0
	%99 = load i32, i32* %98
	%100 = sub i32 %99, 2
	%101 = load i32, i32* %3
	%102 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 %101, i32 1
	store i32 %100, i32* %102
	%103 = load i32, i32* %3
	%104 = add i32 %103, 1
	store i32 %104, i32* %3
	br label %85

105:
	%106 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 0
	%107 = getelementptr [2 x i32], [2 x i32]* %106, i32 0, i32 0
	%108 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 1
	%109 = getelementptr [2 x i32], [2 x i32]* %108, i32 0, i32 0
	%110 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 2
	%111 = getelementptr [2 x i32], [2 x i32]* %110, i32 0, i32 0
	%112 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 3
	%113 = getelementptr [2 x i32], [2 x i32]* %112, i32 0, i32 0
	%114 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 4
	%115 = getelementptr [2 x i32], [2 x i32]* %114, i32 0, i32 0
	%116 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 5
	%117 = getelementptr [2 x i32], [2 x i32]* %116, i32 0, i32 0
	%118 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 6
	%119 = getelementptr [2 x i32], [2 x i32]* %118, i32 0, i32 0
	%120 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 7
	%121 = getelementptr [2 x i32], [2 x i32]* %120, i32 0, i32 0
	%122 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 8
	%123 = getelementptr [2 x i32], [2 x i32]* %122, i32 0, i32 0
	%124 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 9
	%125 = getelementptr [2 x i32], [2 x i32]* %124, i32 0, i32 0
	%126 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 10
	%127 = getelementptr [2 x i32], [2 x i32]* %126, i32 0, i32 0
	%128 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 11
	%129 = getelementptr [2 x i32], [2 x i32]* %128, i32 0, i32 0
	%130 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 12
	%131 = getelementptr [2 x i32], [2 x i32]* %130, i32 0, i32 0
	%132 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 13
	%133 = getelementptr [2 x i32], [2 x i32]* %132, i32 0, i32 0
	%134 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 14
	%135 = getelementptr [2 x i32], [2 x i32]* %134, i32 0, i32 0
	%136 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 15
	%137 = getelementptr [2 x i32], [2 x i32]* %136, i32 0, i32 0
	%138 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 16
	%139 = getelementptr [2 x i32], [2 x i32]* %138, i32 0, i32 0
	%140 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 17
	%141 = getelementptr [2 x i32], [2 x i32]* %140, i32 0, i32 0
	%142 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 18
	%143 = getelementptr [2 x i32], [2 x i32]* %142, i32 0, i32 0
	%144 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 19
	%145 = getelementptr [2 x i32], [2 x i32]* %144, i32 0, i32 0
	%146 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 20
	%147 = getelementptr [2 x i32], [2 x i32]* %146, i32 0, i32 0
	%148 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 21
	%149 = getelementptr [2 x i32], [2 x i32]* %148, i32 0, i32 0
	%150 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 22
	%151 = getelementptr [2 x i32], [2 x i32]* %150, i32 0, i32 0
	%152 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 23
	%153 = getelementptr [2 x i32], [2 x i32]* %152, i32 0, i32 0
	%154 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 24
	%155 = getelementptr [2 x i32], [2 x i32]* %154, i32 0, i32 0
	%156 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 25
	%157 = getelementptr [2 x i32], [2 x i32]* %156, i32 0, i32 0
	%158 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 26
	%159 = getelementptr [2 x i32], [2 x i32]* %158, i32 0, i32 0
	%160 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 27
	%161 = getelementptr [2 x i32], [2 x i32]* %160, i32 0, i32 0
	%162 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 28
	%163 = getelementptr [2 x i32], [2 x i32]* %162, i32 0, i32 0
	%164 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 29
	%165 = getelementptr [2 x i32], [2 x i32]* %164, i32 0, i32 0
	%166 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 30
	%167 = getelementptr [2 x i32], [2 x i32]* %166, i32 0, i32 0
	%168 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %2, i32 0, i32 31
	%169 = getelementptr [2 x i32], [2 x i32]* %168, i32 0, i32 0
	%170 = call i32 @param32_arr(i32* %107, i32* %109, i32* %111, i32* %113, i32* %115, i32* %117, i32* %119, i32* %121, i32* %123, i32* %125, i32* %127, i32* %129, i32* %131, i32* %133, i32* %135, i32* %137, i32* %139, i32* %141, i32* %143, i32* %145, i32* %147, i32* %149, i32* %151, i32* %153, i32* %155, i32* %157, i32* %159, i32* %161, i32* %163, i32* %165, i32* %167, i32* %169)
	call void @putint(i32 %170)
	call void @putch(i32 10)
	store i32 0, i32* %1
	br label %171

171:
	%172 = load i32, i32* %1
	ret i32 %172

}

