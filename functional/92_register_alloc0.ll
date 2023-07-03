@a1 = dso_local global i32 1
@a2 = dso_local global i32 2
@a3 = dso_local global i32 3
@a4 = dso_local global i32 4
@a5 = dso_local global i32 5
@a6 = dso_local global i32 6
@a7 = dso_local global i32 7
@a8 = dso_local global i32 8
@a9 = dso_local global i32 9
@a10 = dso_local global i32 10
@a11 = dso_local global i32 11
@a12 = dso_local global i32 12
@a13 = dso_local global i32 13
@a14 = dso_local global i32 14
@a15 = dso_local global i32 15
@a16 = dso_local global i32 16
@a17 = dso_local global i32 1
@a18 = dso_local global i32 2
@a19 = dso_local global i32 3
@a20 = dso_local global i32 4
@a21 = dso_local global i32 5
@a22 = dso_local global i32 6
@a23 = dso_local global i32 7
@a24 = dso_local global i32 8
@a25 = dso_local global i32 9
@a26 = dso_local global i32 10
@a27 = dso_local global i32 11
@a28 = dso_local global i32 12
@a29 = dso_local global i32 13
@a30 = dso_local global i32 14
@a31 = dso_local global i32 15
@a32 = dso_local global i32 16

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

define dso_local i32 @func(i32 %0, i32 %1) {
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
	%34 = alloca i32
	%35 = alloca i32
	%36 = alloca i32
	%37 = alloca i32
	%38 = alloca i32
	%39 = alloca i32
	%40 = alloca i32
	%41 = alloca i32
	%42 = alloca i32
	store i32 %0, i32* %4
	store i32 %1, i32* %5
	%43 = load i32, i32* %4
	%44 = load i32, i32* %5
	%45 = add i32 %43, %44
	store i32 %45, i32* %6
	%46 = call i32 @getint()
	store i32 %46, i32* %7
	%47 = call i32 @getint()
	store i32 %47, i32* %8
	%48 = call i32 @getint()
	store i32 %48, i32* %9
	%49 = call i32 @getint()
	store i32 %49, i32* %10
	%50 = load i32, i32* %7
	%51 = add i32 1, %50
	%52 = load i32, i32* @a1
	%53 = add i32 %51, %52
	store i32 %53, i32* %11
	%54 = load i32, i32* %8
	%55 = add i32 2, %54
	%56 = load i32, i32* @a2
	%57 = add i32 %55, %56
	store i32 %57, i32* %12
	%58 = load i32, i32* %9
	%59 = add i32 3, %58
	%60 = load i32, i32* @a3
	%61 = add i32 %59, %60
	store i32 %61, i32* %13
	%62 = load i32, i32* %10
	%63 = add i32 4, %62
	%64 = load i32, i32* @a4
	%65 = add i32 %63, %64
	store i32 %65, i32* %14
	%66 = load i32, i32* %11
	%67 = add i32 1, %66
	%68 = load i32, i32* @a5
	%69 = add i32 %67, %68
	store i32 %69, i32* %15
	%70 = load i32, i32* %12
	%71 = add i32 2, %70
	%72 = load i32, i32* @a6
	%73 = add i32 %71, %72
	store i32 %73, i32* %16
	%74 = load i32, i32* %13
	%75 = add i32 3, %74
	%76 = load i32, i32* @a7
	%77 = add i32 %75, %76
	store i32 %77, i32* %17
	%78 = load i32, i32* %14
	%79 = add i32 4, %78
	%80 = load i32, i32* @a8
	%81 = add i32 %79, %80
	store i32 %81, i32* %18
	%82 = load i32, i32* %15
	%83 = add i32 1, %82
	%84 = load i32, i32* @a9
	%85 = add i32 %83, %84
	store i32 %85, i32* %19
	%86 = load i32, i32* %16
	%87 = add i32 2, %86
	%88 = load i32, i32* @a10
	%89 = add i32 %87, %88
	store i32 %89, i32* %20
	%90 = load i32, i32* %17
	%91 = add i32 3, %90
	%92 = load i32, i32* @a11
	%93 = add i32 %91, %92
	store i32 %93, i32* %21
	%94 = load i32, i32* %18
	%95 = add i32 4, %94
	%96 = load i32, i32* @a12
	%97 = add i32 %95, %96
	store i32 %97, i32* %22
	%98 = load i32, i32* %19
	%99 = add i32 1, %98
	%100 = load i32, i32* @a13
	%101 = add i32 %99, %100
	store i32 %101, i32* %23
	%102 = load i32, i32* %20
	%103 = add i32 2, %102
	%104 = load i32, i32* @a14
	%105 = add i32 %103, %104
	store i32 %105, i32* %24
	%106 = load i32, i32* %21
	%107 = add i32 3, %106
	%108 = load i32, i32* @a15
	%109 = add i32 %107, %108
	store i32 %109, i32* %25
	%110 = load i32, i32* %22
	%111 = add i32 4, %110
	%112 = load i32, i32* @a16
	%113 = add i32 %111, %112
	store i32 %113, i32* %26
	%114 = load i32, i32* %23
	%115 = add i32 1, %114
	%116 = load i32, i32* @a17
	%117 = add i32 %115, %116
	store i32 %117, i32* %27
	%118 = load i32, i32* %24
	%119 = add i32 2, %118
	%120 = load i32, i32* @a18
	%121 = add i32 %119, %120
	store i32 %121, i32* %28
	%122 = load i32, i32* %25
	%123 = add i32 3, %122
	%124 = load i32, i32* @a19
	%125 = add i32 %123, %124
	store i32 %125, i32* %29
	%126 = load i32, i32* %26
	%127 = add i32 4, %126
	%128 = load i32, i32* @a20
	%129 = add i32 %127, %128
	store i32 %129, i32* %30
	%130 = load i32, i32* %27
	%131 = add i32 1, %130
	%132 = load i32, i32* @a21
	%133 = add i32 %131, %132
	store i32 %133, i32* %31
	%134 = load i32, i32* %28
	%135 = add i32 2, %134
	%136 = load i32, i32* @a22
	%137 = add i32 %135, %136
	store i32 %137, i32* %32
	%138 = load i32, i32* %29
	%139 = add i32 3, %138
	%140 = load i32, i32* @a23
	%141 = add i32 %139, %140
	store i32 %141, i32* %33
	%142 = load i32, i32* %30
	%143 = add i32 4, %142
	%144 = load i32, i32* @a24
	%145 = add i32 %143, %144
	store i32 %145, i32* %34
	%146 = load i32, i32* %31
	%147 = add i32 1, %146
	%148 = load i32, i32* @a25
	%149 = add i32 %147, %148
	store i32 %149, i32* %35
	%150 = load i32, i32* %32
	%151 = add i32 2, %150
	%152 = load i32, i32* @a26
	%153 = add i32 %151, %152
	store i32 %153, i32* %36
	%154 = load i32, i32* %33
	%155 = add i32 3, %154
	%156 = load i32, i32* @a27
	%157 = add i32 %155, %156
	store i32 %157, i32* %37
	%158 = load i32, i32* %34
	%159 = add i32 4, %158
	%160 = load i32, i32* @a28
	%161 = add i32 %159, %160
	store i32 %161, i32* %38
	%162 = load i32, i32* %35
	%163 = add i32 1, %162
	%164 = load i32, i32* @a29
	%165 = add i32 %163, %164
	store i32 %165, i32* %39
	%166 = load i32, i32* %36
	%167 = add i32 2, %166
	%168 = load i32, i32* @a30
	%169 = add i32 %167, %168
	store i32 %169, i32* %40
	%170 = load i32, i32* %37
	%171 = add i32 3, %170
	%172 = load i32, i32* @a31
	%173 = add i32 %171, %172
	store i32 %173, i32* %41
	%174 = load i32, i32* %38
	%175 = add i32 4, %174
	%176 = load i32, i32* @a32
	%177 = add i32 %175, %176
	store i32 %177, i32* %42
	%178 = load i32, i32* %4
	%179 = load i32, i32* %5
	%180 = sub i32 %178, %179
	%181 = add i32 %180, 10
	store i32 %181, i32* %6
	%182 = load i32, i32* %35
	%183 = add i32 1, %182
	%184 = load i32, i32* @a29
	%185 = add i32 %183, %184
	store i32 %185, i32* %39
	%186 = load i32, i32* %36
	%187 = add i32 2, %186
	%188 = load i32, i32* @a30
	%189 = add i32 %187, %188
	store i32 %189, i32* %40
	%190 = load i32, i32* %37
	%191 = add i32 3, %190
	%192 = load i32, i32* @a31
	%193 = add i32 %191, %192
	store i32 %193, i32* %41
	%194 = load i32, i32* %38
	%195 = add i32 4, %194
	%196 = load i32, i32* @a32
	%197 = add i32 %195, %196
	store i32 %197, i32* %42
	%198 = load i32, i32* %31
	%199 = add i32 1, %198
	%200 = load i32, i32* @a25
	%201 = add i32 %199, %200
	store i32 %201, i32* %35
	%202 = load i32, i32* %32
	%203 = add i32 2, %202
	%204 = load i32, i32* @a26
	%205 = add i32 %203, %204
	store i32 %205, i32* %36
	%206 = load i32, i32* %33
	%207 = add i32 3, %206
	%208 = load i32, i32* @a27
	%209 = add i32 %207, %208
	store i32 %209, i32* %37
	%210 = load i32, i32* %34
	%211 = add i32 4, %210
	%212 = load i32, i32* @a28
	%213 = add i32 %211, %212
	store i32 %213, i32* %38
	%214 = load i32, i32* %27
	%215 = add i32 1, %214
	%216 = load i32, i32* @a21
	%217 = add i32 %215, %216
	store i32 %217, i32* %31
	%218 = load i32, i32* %28
	%219 = add i32 2, %218
	%220 = load i32, i32* @a22
	%221 = add i32 %219, %220
	store i32 %221, i32* %32
	%222 = load i32, i32* %29
	%223 = add i32 3, %222
	%224 = load i32, i32* @a23
	%225 = add i32 %223, %224
	store i32 %225, i32* %33
	%226 = load i32, i32* %30
	%227 = add i32 4, %226
	%228 = load i32, i32* @a24
	%229 = add i32 %227, %228
	store i32 %229, i32* %34
	%230 = load i32, i32* %23
	%231 = add i32 1, %230
	%232 = load i32, i32* @a17
	%233 = add i32 %231, %232
	store i32 %233, i32* %27
	%234 = load i32, i32* %24
	%235 = add i32 2, %234
	%236 = load i32, i32* @a18
	%237 = add i32 %235, %236
	store i32 %237, i32* %28
	%238 = load i32, i32* %25
	%239 = add i32 3, %238
	%240 = load i32, i32* @a19
	%241 = add i32 %239, %240
	store i32 %241, i32* %29
	%242 = load i32, i32* %26
	%243 = add i32 4, %242
	%244 = load i32, i32* @a20
	%245 = add i32 %243, %244
	store i32 %245, i32* %30
	%246 = load i32, i32* %19
	%247 = add i32 1, %246
	%248 = load i32, i32* @a13
	%249 = add i32 %247, %248
	store i32 %249, i32* %23
	%250 = load i32, i32* %20
	%251 = add i32 2, %250
	%252 = load i32, i32* @a14
	%253 = add i32 %251, %252
	store i32 %253, i32* %24
	%254 = load i32, i32* %21
	%255 = add i32 3, %254
	%256 = load i32, i32* @a15
	%257 = add i32 %255, %256
	store i32 %257, i32* %25
	%258 = load i32, i32* %22
	%259 = add i32 4, %258
	%260 = load i32, i32* @a16
	%261 = add i32 %259, %260
	store i32 %261, i32* %26
	%262 = load i32, i32* %15
	%263 = add i32 1, %262
	%264 = load i32, i32* @a9
	%265 = add i32 %263, %264
	store i32 %265, i32* %19
	%266 = load i32, i32* %16
	%267 = add i32 2, %266
	%268 = load i32, i32* @a10
	%269 = add i32 %267, %268
	store i32 %269, i32* %20
	%270 = load i32, i32* %17
	%271 = add i32 3, %270
	%272 = load i32, i32* @a11
	%273 = add i32 %271, %272
	store i32 %273, i32* %21
	%274 = load i32, i32* %18
	%275 = add i32 4, %274
	%276 = load i32, i32* @a12
	%277 = add i32 %275, %276
	store i32 %277, i32* %22
	%278 = load i32, i32* %11
	%279 = add i32 1, %278
	%280 = load i32, i32* @a5
	%281 = add i32 %279, %280
	store i32 %281, i32* %15
	%282 = load i32, i32* %12
	%283 = add i32 2, %282
	%284 = load i32, i32* @a6
	%285 = add i32 %283, %284
	store i32 %285, i32* %16
	%286 = load i32, i32* %13
	%287 = add i32 3, %286
	%288 = load i32, i32* @a7
	%289 = add i32 %287, %288
	store i32 %289, i32* %17
	%290 = load i32, i32* %14
	%291 = add i32 4, %290
	%292 = load i32, i32* @a8
	%293 = add i32 %291, %292
	store i32 %293, i32* %18
	%294 = load i32, i32* %7
	%295 = add i32 1, %294
	%296 = load i32, i32* @a1
	%297 = add i32 %295, %296
	store i32 %297, i32* %11
	%298 = load i32, i32* %8
	%299 = add i32 2, %298
	%300 = load i32, i32* @a2
	%301 = add i32 %299, %300
	store i32 %301, i32* %12
	%302 = load i32, i32* %9
	%303 = add i32 3, %302
	%304 = load i32, i32* @a3
	%305 = add i32 %303, %304
	store i32 %305, i32* %13
	%306 = load i32, i32* %10
	%307 = add i32 4, %306
	%308 = load i32, i32* @a4
	%309 = add i32 %307, %308
	store i32 %309, i32* %14
	%310 = load i32, i32* %7
	%311 = add i32 1, %310
	%312 = load i32, i32* @a1
	%313 = add i32 %311, %312
	store i32 %313, i32* %11
	%314 = load i32, i32* %8
	%315 = add i32 2, %314
	%316 = load i32, i32* @a2
	%317 = add i32 %315, %316
	store i32 %317, i32* %12
	%318 = load i32, i32* %9
	%319 = add i32 3, %318
	%320 = load i32, i32* @a3
	%321 = add i32 %319, %320
	store i32 %321, i32* %13
	%322 = load i32, i32* %10
	%323 = add i32 4, %322
	%324 = load i32, i32* @a4
	%325 = add i32 %323, %324
	store i32 %325, i32* %14
	%326 = load i32, i32* %6
	%327 = load i32, i32* %7
	%328 = add i32 %326, %327
	%329 = load i32, i32* %8
	%330 = add i32 %328, %329
	%331 = load i32, i32* %9
	%332 = add i32 %330, %331
	%333 = load i32, i32* %10
	%334 = add i32 %332, %333
	%335 = load i32, i32* %11
	%336 = sub i32 %334, %335
	%337 = load i32, i32* %12
	%338 = sub i32 %336, %337
	%339 = load i32, i32* %13
	%340 = sub i32 %338, %339
	%341 = load i32, i32* %14
	%342 = sub i32 %340, %341
	%343 = load i32, i32* %15
	%344 = add i32 %342, %343
	%345 = load i32, i32* %16
	%346 = add i32 %344, %345
	%347 = load i32, i32* %17
	%348 = add i32 %346, %347
	%349 = load i32, i32* %18
	%350 = add i32 %348, %349
	%351 = load i32, i32* %19
	%352 = sub i32 %350, %351
	%353 = load i32, i32* %20
	%354 = sub i32 %352, %353
	%355 = load i32, i32* %21
	%356 = sub i32 %354, %355
	%357 = load i32, i32* %22
	%358 = sub i32 %356, %357
	%359 = load i32, i32* %23
	%360 = add i32 %358, %359
	%361 = load i32, i32* %24
	%362 = add i32 %360, %361
	%363 = load i32, i32* %25
	%364 = add i32 %362, %363
	%365 = load i32, i32* %26
	%366 = add i32 %364, %365
	%367 = load i32, i32* %27
	%368 = sub i32 %366, %367
	%369 = load i32, i32* %28
	%370 = sub i32 %368, %369
	%371 = load i32, i32* %29
	%372 = sub i32 %370, %371
	%373 = load i32, i32* %30
	%374 = sub i32 %372, %373
	%375 = load i32, i32* %31
	%376 = add i32 %374, %375
	%377 = load i32, i32* %32
	%378 = add i32 %376, %377
	%379 = load i32, i32* %33
	%380 = add i32 %378, %379
	%381 = load i32, i32* %34
	%382 = add i32 %380, %381
	%383 = load i32, i32* %35
	%384 = sub i32 %382, %383
	%385 = load i32, i32* %36
	%386 = sub i32 %384, %385
	%387 = load i32, i32* %37
	%388 = sub i32 %386, %387
	%389 = load i32, i32* %38
	%390 = sub i32 %388, %389
	%391 = load i32, i32* %39
	%392 = add i32 %390, %391
	%393 = load i32, i32* %40
	%394 = add i32 %392, %393
	%395 = load i32, i32* %41
	%396 = add i32 %394, %395
	%397 = load i32, i32* %42
	%398 = add i32 %396, %397
	%399 = load i32, i32* @a1
	%400 = add i32 %398, %399
	%401 = load i32, i32* @a2
	%402 = sub i32 %400, %401
	%403 = load i32, i32* @a3
	%404 = add i32 %402, %403
	%405 = load i32, i32* @a4
	%406 = sub i32 %404, %405
	%407 = load i32, i32* @a5
	%408 = add i32 %406, %407
	%409 = load i32, i32* @a6
	%410 = sub i32 %408, %409
	%411 = load i32, i32* @a7
	%412 = add i32 %410, %411
	%413 = load i32, i32* @a8
	%414 = sub i32 %412, %413
	%415 = load i32, i32* @a9
	%416 = add i32 %414, %415
	%417 = load i32, i32* @a10
	%418 = sub i32 %416, %417
	%419 = load i32, i32* @a11
	%420 = add i32 %418, %419
	%421 = load i32, i32* @a12
	%422 = sub i32 %420, %421
	%423 = load i32, i32* @a13
	%424 = add i32 %422, %423
	%425 = load i32, i32* @a14
	%426 = sub i32 %424, %425
	%427 = load i32, i32* @a15
	%428 = add i32 %426, %427
	%429 = load i32, i32* @a16
	%430 = sub i32 %428, %429
	%431 = load i32, i32* @a17
	%432 = add i32 %430, %431
	%433 = load i32, i32* @a18
	%434 = sub i32 %432, %433
	%435 = load i32, i32* @a19
	%436 = add i32 %434, %435
	%437 = load i32, i32* @a20
	%438 = sub i32 %436, %437
	%439 = load i32, i32* @a21
	%440 = add i32 %438, %439
	%441 = load i32, i32* @a22
	%442 = sub i32 %440, %441
	%443 = load i32, i32* @a23
	%444 = add i32 %442, %443
	%445 = load i32, i32* @a24
	%446 = sub i32 %444, %445
	%447 = load i32, i32* @a25
	%448 = add i32 %446, %447
	%449 = load i32, i32* @a26
	%450 = sub i32 %448, %449
	%451 = load i32, i32* @a27
	%452 = add i32 %450, %451
	%453 = load i32, i32* @a28
	%454 = sub i32 %452, %453
	%455 = load i32, i32* @a29
	%456 = add i32 %454, %455
	%457 = load i32, i32* @a30
	%458 = sub i32 %456, %457
	%459 = load i32, i32* @a31
	%460 = add i32 %458, %459
	%461 = load i32, i32* @a32
	%462 = sub i32 %460, %461
	store i32 %462, i32* %3
	br label %463

463:
	%464 = load i32, i32* %3
	ret i32 %464

}

define dso_local i32 @main() {
0:
	%1 = alloca i32
	%2 = alloca i32
	%3 = alloca i32
	%4 = call i32 @getint()
	store i32 %4, i32* %2
	%5 = load i32, i32* %2
	%6 = add i32 %5, 18
	store i32 %6, i32* %3
	%7 = load i32, i32* %2
	%8 = load i32, i32* %3
	%9 = call i32 @func(i32 %7, i32 %8)
	store i32 %9, i32* %2
	%10 = load i32, i32* %2
	call void @putint(i32 %10)
	%11 = load i32, i32* %2
	store i32 %11, i32* %1
	br label %12

12:
	%13 = load i32, i32* %1
	ret i32 %13

}

