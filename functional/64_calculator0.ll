@ints = dso_local global [10000 x i32] zeroinitializer
@intt = dso_local global i32 0
@chas = dso_local global [10000 x i32] zeroinitializer
@chat = dso_local global i32 0
@i = dso_local global i32 0
@ii = dso_local global i32 1
@c = dso_local global i32 0
@get = dso_local global [10000 x i32] zeroinitializer
@get2 = dso_local global [10000 x i32] zeroinitializer

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

define dso_local i32 @isdigit(i32 %0) {
1:
	%2 = alloca i32
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = load i32, i32* %3
	%5 = icmp sge i32 %4, 48
	br i1 %5, label %6, label %10

6:
	%7 = load i32, i32* %3
	%8 = icmp sle i32 %7, 57
	br i1 %8, label %9, label %10

9:
	store i32 1, i32* %2
	br label %11

10:
	store i32 0, i32* %2
	br label %11

11:
	%12 = load i32, i32* %2
	ret i32 %12

}

define dso_local i32 @power(i32 %0, i32 %1) {
2:
	%3 = alloca i32
	%4 = alloca i32
	%5 = alloca i32
	%6 = alloca i32
	store i32 %0, i32* %4
	store i32 %1, i32* %5
	store i32 1, i32* %6
	br label %7

7:
	%8 = load i32, i32* %5
	%9 = icmp ne i32 %8, 0
	br i1 %9, label %10, label %16

10:
	%11 = load i32, i32* %6
	%12 = load i32, i32* %4
	%13 = mul i32 %11, %12
	store i32 %13, i32* %6
	%14 = load i32, i32* %5
	%15 = sub i32 %14, 1
	store i32 %15, i32* %5
	br label %7

16:
	%17 = load i32, i32* %6
	store i32 %17, i32* %3
	br label %18

18:
	%19 = load i32, i32* %3
	ret i32 %19

}

define dso_local i32 @getstr(i32* %0) {
1:
	%2 = alloca i32
	%3 = alloca i32*
	%4 = alloca i32
	%5 = alloca i32
	store i32* %0, i32** %3
	%6 = call i32 @getch()
	store i32 %6, i32* %4
	store i32 0, i32* %5
	br label %7

7:
	%8 = load i32, i32* %4
	%9 = icmp ne i32 %8, 13
	br i1 %9, label %10, label %21

10:
	%11 = load i32, i32* %4
	%12 = icmp ne i32 %11, 10
	br i1 %12, label %13, label %21

13:
	%14 = load i32, i32* %4
	%15 = load i32, i32* %5
	%16 = load i32*, i32** %3
	%17 = getelementptr i32, i32* %16, i32 %15
	store i32 %14, i32* %17
	%18 = load i32, i32* %5
	%19 = add i32 %18, 1
	store i32 %19, i32* %5
	%20 = call i32 @getch()
	store i32 %20, i32* %4
	br label %7

21:
	%22 = load i32, i32* %5
	store i32 %22, i32* %2
	br label %23

23:
	%24 = load i32, i32* %2
	ret i32 %24

}

define dso_local void @intpush(i32 %0) {
1:
	%2 = alloca i32
	store i32 %0, i32* %2
	%3 = load i32, i32* @intt
	%4 = add i32 %3, 1
	store i32 %4, i32* @intt
	%5 = load i32, i32* %2
	%6 = load i32, i32* @intt
	%7 = getelementptr [10000 x i32], [10000 x i32]* @ints, i32 0, i32 %6
	store i32 %5, i32* %7
	br label %8

8:
	ret void

}

define dso_local void @chapush(i32 %0) {
1:
	%2 = alloca i32
	store i32 %0, i32* %2
	%3 = load i32, i32* @chat
	%4 = add i32 %3, 1
	store i32 %4, i32* @chat
	%5 = load i32, i32* %2
	%6 = load i32, i32* @chat
	%7 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %6
	store i32 %5, i32* %7
	br label %8

8:
	ret void

}

define dso_local i32 @intpop() {
0:
	%1 = alloca i32
	%2 = load i32, i32* @intt
	%3 = sub i32 %2, 1
	store i32 %3, i32* @intt
	%4 = load i32, i32* @intt
	%5 = add i32 %4, 1
	%6 = getelementptr [10000 x i32], [10000 x i32]* @ints, i32 0, i32 %5
	%7 = load i32, i32* %6
	store i32 %7, i32* %1
	br label %8

8:
	%9 = load i32, i32* %1
	ret i32 %9

}

define dso_local i32 @chapop() {
0:
	%1 = alloca i32
	%2 = load i32, i32* @chat
	%3 = sub i32 %2, 1
	store i32 %3, i32* @chat
	%4 = load i32, i32* @chat
	%5 = add i32 %4, 1
	%6 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %5
	%7 = load i32, i32* %6
	store i32 %7, i32* %1
	br label %8

8:
	%9 = load i32, i32* %1
	ret i32 %9

}

define dso_local void @intadd(i32 %0) {
1:
	%2 = alloca i32
	store i32 %0, i32* %2
	%3 = load i32, i32* @intt
	%4 = getelementptr [10000 x i32], [10000 x i32]* @ints, i32 0, i32 %3
	%5 = load i32, i32* %4
	%6 = mul i32 %5, 10
	%7 = load i32, i32* @intt
	%8 = getelementptr [10000 x i32], [10000 x i32]* @ints, i32 0, i32 %7
	store i32 %6, i32* %8
	%9 = load i32, i32* @intt
	%10 = getelementptr [10000 x i32], [10000 x i32]* @ints, i32 0, i32 %9
	%11 = load i32, i32* %10
	%12 = load i32, i32* %2
	%13 = add i32 %11, %12
	%14 = load i32, i32* @intt
	%15 = getelementptr [10000 x i32], [10000 x i32]* @ints, i32 0, i32 %14
	store i32 %13, i32* %15
	br label %16

16:
	ret void

}

define dso_local i32 @find() {
0:
	%1 = alloca i32
	%2 = call i32 @chapop()
	store i32 %2, i32* @c
	%3 = load i32, i32* @ii
	%4 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %3
	store i32 32, i32* %4
	%5 = load i32, i32* @c
	%6 = load i32, i32* @ii
	%7 = add i32 %6, 1
	%8 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %7
	store i32 %5, i32* %8
	%9 = load i32, i32* @ii
	%10 = add i32 %9, 2
	store i32 %10, i32* @ii
	%11 = load i32, i32* @chat
	%12 = icmp eq i32 %11, 0
	br i1 %12, label %13, label %14

13:
	store i32 0, i32* %1
	br label %15

14:
	store i32 1, i32* %1
	br label %15

15:
	%16 = load i32, i32* %1
	ret i32 %16

}

define dso_local i32 @main() {
0:
	%1 = alloca i32
	%2 = alloca i32
	%3 = alloca i32
	%4 = alloca i32
	%5 = alloca i32
	%6 = alloca i32
	store i32 0, i32* @intt
	store i32 0, i32* @chat
	%7 = getelementptr [10000 x i32], [10000 x i32]* @get, i32 0, i32 0
	%8 = call i32 @getstr(i32* %7)
	store i32 %8, i32* %2
	br label %9

9:
	%10 = load i32, i32* @i
	%11 = load i32, i32* %2
	%12 = icmp slt i32 %10, %11
	br i1 %12, label %13, label %248

13:
	%14 = load i32, i32* @i
	%15 = getelementptr [10000 x i32], [10000 x i32]* @get, i32 0, i32 %14
	%16 = load i32, i32* %15
	%17 = call i32 @isdigit(i32 %16)
	%18 = icmp eq i32 %17, 1
	br i1 %18, label %19, label %27

19:
	%20 = load i32, i32* @i
	%21 = getelementptr [10000 x i32], [10000 x i32]* @get, i32 0, i32 %20
	%22 = load i32, i32* %21
	%23 = load i32, i32* @ii
	%24 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %23
	store i32 %22, i32* %24
	%25 = load i32, i32* @ii
	%26 = add i32 %25, 1
	store i32 %26, i32* @ii
	br label %245

27:
	%28 = load i32, i32* @i
	%29 = getelementptr [10000 x i32], [10000 x i32]* @get, i32 0, i32 %28
	%30 = load i32, i32* %29
	%31 = icmp eq i32 %30, 40
	br i1 %31, label %32, label %33

32:
	call void @chapush(i32 40)
	br label %33

33:
	%34 = load i32, i32* @i
	%35 = getelementptr [10000 x i32], [10000 x i32]* @get, i32 0, i32 %34
	%36 = load i32, i32* %35
	%37 = icmp eq i32 %36, 94
	br i1 %37, label %38, label %39

38:
	call void @chapush(i32 94)
	br label %39

39:
	%40 = load i32, i32* @i
	%41 = getelementptr [10000 x i32], [10000 x i32]* @get, i32 0, i32 %40
	%42 = load i32, i32* %41
	%43 = icmp eq i32 %42, 41
	br i1 %43, label %44, label %60

44:
	%45 = call i32 @chapop()
	store i32 %45, i32* @c
	br label %46

46:
	%47 = load i32, i32* @c
	%48 = icmp ne i32 %47, 40
	br i1 %48, label %49, label %59

49:
	%50 = load i32, i32* @ii
	%51 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %50
	store i32 32, i32* %51
	%52 = load i32, i32* @c
	%53 = load i32, i32* @ii
	%54 = add i32 %53, 1
	%55 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %54
	store i32 %52, i32* %55
	%56 = load i32, i32* @ii
	%57 = add i32 %56, 2
	store i32 %57, i32* @ii
	%58 = call i32 @chapop()
	store i32 %58, i32* @c
	br label %46

59:
	br label %60

60:
	%61 = load i32, i32* @i
	%62 = getelementptr [10000 x i32], [10000 x i32]* @get, i32 0, i32 %61
	%63 = load i32, i32* %62
	%64 = icmp eq i32 %63, 43
	br i1 %64, label %65, label %102

65:
	br label %66

66:
	%67 = load i32, i32* @chat
	%68 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %67
	%69 = load i32, i32* %68
	%70 = icmp eq i32 %69, 43
	br i1 %70, label %96, label %71

71:
	%72 = load i32, i32* @chat
	%73 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %72
	%74 = load i32, i32* %73
	%75 = icmp eq i32 %74, 45
	br i1 %75, label %96, label %76

76:
	%77 = load i32, i32* @chat
	%78 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %77
	%79 = load i32, i32* %78
	%80 = icmp eq i32 %79, 42
	br i1 %80, label %96, label %81

81:
	%82 = load i32, i32* @chat
	%83 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %82
	%84 = load i32, i32* %83
	%85 = icmp eq i32 %84, 47
	br i1 %85, label %96, label %86

86:
	%87 = load i32, i32* @chat
	%88 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %87
	%89 = load i32, i32* %88
	%90 = icmp eq i32 %89, 37
	br i1 %90, label %96, label %91

91:
	%92 = load i32, i32* @chat
	%93 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %92
	%94 = load i32, i32* %93
	%95 = icmp eq i32 %94, 94
	br i1 %95, label %96, label %101

96:
	%97 = call i32 @find()
	%98 = icmp eq i32 %97, 0
	br i1 %98, label %99, label %100

99:
	br label %101

100:
	br label %66

101:
	call void @chapush(i32 43)
	br label %102

102:
	%103 = load i32, i32* @i
	%104 = getelementptr [10000 x i32], [10000 x i32]* @get, i32 0, i32 %103
	%105 = load i32, i32* %104
	%106 = icmp eq i32 %105, 45
	br i1 %106, label %107, label %144

107:
	br label %108

108:
	%109 = load i32, i32* @chat
	%110 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %109
	%111 = load i32, i32* %110
	%112 = icmp eq i32 %111, 43
	br i1 %112, label %138, label %113

113:
	%114 = load i32, i32* @chat
	%115 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %114
	%116 = load i32, i32* %115
	%117 = icmp eq i32 %116, 45
	br i1 %117, label %138, label %118

118:
	%119 = load i32, i32* @chat
	%120 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %119
	%121 = load i32, i32* %120
	%122 = icmp eq i32 %121, 42
	br i1 %122, label %138, label %123

123:
	%124 = load i32, i32* @chat
	%125 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %124
	%126 = load i32, i32* %125
	%127 = icmp eq i32 %126, 47
	br i1 %127, label %138, label %128

128:
	%129 = load i32, i32* @chat
	%130 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %129
	%131 = load i32, i32* %130
	%132 = icmp eq i32 %131, 37
	br i1 %132, label %138, label %133

133:
	%134 = load i32, i32* @chat
	%135 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %134
	%136 = load i32, i32* %135
	%137 = icmp eq i32 %136, 94
	br i1 %137, label %138, label %143

138:
	%139 = call i32 @find()
	%140 = icmp eq i32 %139, 0
	br i1 %140, label %141, label %142

141:
	br label %143

142:
	br label %108

143:
	call void @chapush(i32 45)
	br label %144

144:
	%145 = load i32, i32* @i
	%146 = getelementptr [10000 x i32], [10000 x i32]* @get, i32 0, i32 %145
	%147 = load i32, i32* %146
	%148 = icmp eq i32 %147, 42
	br i1 %148, label %149, label %176

149:
	br label %150

150:
	%151 = load i32, i32* @chat
	%152 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %151
	%153 = load i32, i32* %152
	%154 = icmp eq i32 %153, 42
	br i1 %154, label %170, label %155

155:
	%156 = load i32, i32* @chat
	%157 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %156
	%158 = load i32, i32* %157
	%159 = icmp eq i32 %158, 47
	br i1 %159, label %170, label %160

160:
	%161 = load i32, i32* @chat
	%162 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %161
	%163 = load i32, i32* %162
	%164 = icmp eq i32 %163, 37
	br i1 %164, label %170, label %165

165:
	%166 = load i32, i32* @chat
	%167 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %166
	%168 = load i32, i32* %167
	%169 = icmp eq i32 %168, 94
	br i1 %169, label %170, label %175

170:
	%171 = call i32 @find()
	%172 = icmp eq i32 %171, 0
	br i1 %172, label %173, label %174

173:
	br label %175

174:
	br label %150

175:
	call void @chapush(i32 42)
	br label %176

176:
	%177 = load i32, i32* @i
	%178 = getelementptr [10000 x i32], [10000 x i32]* @get, i32 0, i32 %177
	%179 = load i32, i32* %178
	%180 = icmp eq i32 %179, 47
	br i1 %180, label %181, label %208

181:
	br label %182

182:
	%183 = load i32, i32* @chat
	%184 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %183
	%185 = load i32, i32* %184
	%186 = icmp eq i32 %185, 42
	br i1 %186, label %202, label %187

187:
	%188 = load i32, i32* @chat
	%189 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %188
	%190 = load i32, i32* %189
	%191 = icmp eq i32 %190, 47
	br i1 %191, label %202, label %192

192:
	%193 = load i32, i32* @chat
	%194 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %193
	%195 = load i32, i32* %194
	%196 = icmp eq i32 %195, 37
	br i1 %196, label %202, label %197

197:
	%198 = load i32, i32* @chat
	%199 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %198
	%200 = load i32, i32* %199
	%201 = icmp eq i32 %200, 94
	br i1 %201, label %202, label %207

202:
	%203 = call i32 @find()
	%204 = icmp eq i32 %203, 0
	br i1 %204, label %205, label %206

205:
	br label %207

206:
	br label %182

207:
	call void @chapush(i32 47)
	br label %208

208:
	%209 = load i32, i32* @i
	%210 = getelementptr [10000 x i32], [10000 x i32]* @get, i32 0, i32 %209
	%211 = load i32, i32* %210
	%212 = icmp eq i32 %211, 37
	br i1 %212, label %213, label %240

213:
	br label %214

214:
	%215 = load i32, i32* @chat
	%216 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %215
	%217 = load i32, i32* %216
	%218 = icmp eq i32 %217, 42
	br i1 %218, label %234, label %219

219:
	%220 = load i32, i32* @chat
	%221 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %220
	%222 = load i32, i32* %221
	%223 = icmp eq i32 %222, 47
	br i1 %223, label %234, label %224

224:
	%225 = load i32, i32* @chat
	%226 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %225
	%227 = load i32, i32* %226
	%228 = icmp eq i32 %227, 37
	br i1 %228, label %234, label %229

229:
	%230 = load i32, i32* @chat
	%231 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %230
	%232 = load i32, i32* %231
	%233 = icmp eq i32 %232, 94
	br i1 %233, label %234, label %239

234:
	%235 = call i32 @find()
	%236 = icmp eq i32 %235, 0
	br i1 %236, label %237, label %238

237:
	br label %239

238:
	br label %214

239:
	call void @chapush(i32 37)
	br label %240

240:
	%241 = load i32, i32* @ii
	%242 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %241
	store i32 32, i32* %242
	%243 = load i32, i32* @ii
	%244 = add i32 %243, 1
	store i32 %244, i32* @ii
	br label %245

245:
	%246 = load i32, i32* @i
	%247 = add i32 %246, 1
	store i32 %247, i32* @i
	br label %9

248:
	br label %249

249:
	%250 = load i32, i32* @chat
	%251 = icmp sgt i32 %250, 0
	br i1 %251, label %252, label %262

252:
	%253 = call i32 @chapop()
	store i32 %253, i32* %3
	%254 = load i32, i32* @ii
	%255 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %254
	store i32 32, i32* %255
	%256 = load i32, i32* %3
	%257 = load i32, i32* @ii
	%258 = add i32 %257, 1
	%259 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %258
	store i32 %256, i32* %259
	%260 = load i32, i32* @ii
	%261 = add i32 %260, 2
	store i32 %261, i32* @ii
	br label %249

262:
	%263 = load i32, i32* @ii
	%264 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %263
	store i32 64, i32* %264
	store i32 1, i32* @i
	br label %265

265:
	%266 = load i32, i32* @i
	%267 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %266
	%268 = load i32, i32* %267
	%269 = icmp ne i32 %268, 64
	br i1 %269, label %270, label %393

270:
	%271 = load i32, i32* @i
	%272 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %271
	%273 = load i32, i32* %272
	%274 = icmp eq i32 %273, 43
	br i1 %274, label %300, label %275

275:
	%276 = load i32, i32* @i
	%277 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %276
	%278 = load i32, i32* %277
	%279 = icmp eq i32 %278, 45
	br i1 %279, label %300, label %280

280:
	%281 = load i32, i32* @i
	%282 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %281
	%283 = load i32, i32* %282
	%284 = icmp eq i32 %283, 42
	br i1 %284, label %300, label %285

285:
	%286 = load i32, i32* @i
	%287 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %286
	%288 = load i32, i32* %287
	%289 = icmp eq i32 %288, 47
	br i1 %289, label %300, label %290

290:
	%291 = load i32, i32* @i
	%292 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %291
	%293 = load i32, i32* %292
	%294 = icmp eq i32 %293, 37
	br i1 %294, label %300, label %295

295:
	%296 = load i32, i32* @i
	%297 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %296
	%298 = load i32, i32* %297
	%299 = icmp eq i32 %298, 94
	br i1 %299, label %300, label %358

300:
	%301 = call i32 @intpop()
	store i32 %301, i32* %4
	%302 = call i32 @intpop()
	store i32 %302, i32* %5
	%303 = load i32, i32* @i
	%304 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %303
	%305 = load i32, i32* %304
	%306 = icmp eq i32 %305, 43
	br i1 %306, label %307, label %311

307:
	%308 = load i32, i32* %4
	%309 = load i32, i32* %5
	%310 = add i32 %308, %309
	store i32 %310, i32* %6
	br label %311

311:
	%312 = load i32, i32* @i
	%313 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %312
	%314 = load i32, i32* %313
	%315 = icmp eq i32 %314, 45
	br i1 %315, label %316, label %320

316:
	%317 = load i32, i32* %5
	%318 = load i32, i32* %4
	%319 = sub i32 %317, %318
	store i32 %319, i32* %6
	br label %320

320:
	%321 = load i32, i32* @i
	%322 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %321
	%323 = load i32, i32* %322
	%324 = icmp eq i32 %323, 42
	br i1 %324, label %325, label %329

325:
	%326 = load i32, i32* %4
	%327 = load i32, i32* %5
	%328 = mul i32 %326, %327
	store i32 %328, i32* %6
	br label %329

329:
	%330 = load i32, i32* @i
	%331 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %330
	%332 = load i32, i32* %331
	%333 = icmp eq i32 %332, 47
	br i1 %333, label %334, label %338

334:
	%335 = load i32, i32* %5
	%336 = load i32, i32* %4
	%337 = sdiv i32 %335, %336
	store i32 %337, i32* %6
	br label %338

338:
	%339 = load i32, i32* @i
	%340 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %339
	%341 = load i32, i32* %340
	%342 = icmp eq i32 %341, 37
	br i1 %342, label %343, label %347

343:
	%344 = load i32, i32* %5
	%345 = load i32, i32* %4
	%346 = srem i32 %344, %345
	store i32 %346, i32* %6
	br label %347

347:
	%348 = load i32, i32* @i
	%349 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %348
	%350 = load i32, i32* %349
	%351 = icmp eq i32 %350, 94
	br i1 %351, label %352, label %356

352:
	%353 = load i32, i32* %5
	%354 = load i32, i32* %4
	%355 = call i32 @power(i32 %353, i32 %354)
	store i32 %355, i32* %6
	br label %356

356:
	%357 = load i32, i32* %6
	call void @intpush(i32 %357)
	br label %390

358:
	%359 = load i32, i32* @i
	%360 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %359
	%361 = load i32, i32* %360
	%362 = icmp ne i32 %361, 32
	br i1 %362, label %363, label %389

363:
	%364 = load i32, i32* @i
	%365 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %364
	%366 = load i32, i32* %365
	%367 = sub i32 %366, 48
	call void @intpush(i32 %367)
	store i32 1, i32* @ii
	br label %368

368:
	%369 = load i32, i32* @i
	%370 = load i32, i32* @ii
	%371 = add i32 %369, %370
	%372 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %371
	%373 = load i32, i32* %372
	%374 = icmp ne i32 %373, 32
	br i1 %374, label %375, label %384

375:
	%376 = load i32, i32* @i
	%377 = load i32, i32* @ii
	%378 = add i32 %376, %377
	%379 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %378
	%380 = load i32, i32* %379
	%381 = sub i32 %380, 48
	call void @intadd(i32 %381)
	%382 = load i32, i32* @ii
	%383 = add i32 %382, 1
	store i32 %383, i32* @ii
	br label %368

384:
	%385 = load i32, i32* @i
	%386 = load i32, i32* @ii
	%387 = add i32 %385, %386
	%388 = sub i32 %387, 1
	store i32 %388, i32* @i
	br label %389

389:
	br label %390

390:
	%391 = load i32, i32* @i
	%392 = add i32 %391, 1
	store i32 %392, i32* @i
	br label %265

393:
	%394 = getelementptr [10000 x i32], [10000 x i32]* @ints, i32 0, i32 1
	%395 = load i32, i32* %394
	call void @putint(i32 %395)
	store i32 0, i32* %1
	br label %396

396:
	%397 = load i32, i32* %1
	ret i32 %397

}

