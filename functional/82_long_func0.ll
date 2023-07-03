@SHIFT_TABLE = dso_local constant [16 x i32]  [i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384, i32 32768]

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

define dso_local i32 @long_func() {
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
	%66 = alloca i32
	%67 = alloca i32
	%68 = alloca i32
	%69 = alloca i32
	%70 = alloca i32
	%71 = alloca i32
	%72 = alloca i32
	%73 = alloca i32
	%74 = alloca i32
	%75 = alloca i32
	%76 = alloca i32
	%77 = alloca i32
	%78 = alloca i32
	%79 = alloca i32
	%80 = alloca i32
	%81 = alloca i32
	%82 = alloca i32
	%83 = alloca i32
	%84 = alloca i32
	%85 = alloca i32
	%86 = alloca i32
	%87 = alloca i32
	%88 = alloca i32
	%89 = alloca i32
	%90 = alloca i32
	store i32 2, i32* %7
	store i32 0, i32* %8
	store i32 1, i32* %9
	br label %91

91:
	%92 = load i32, i32* %8
	%93 = icmp sgt i32 %92, 0
	br i1 %93, label %94, label %785

94:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%95 = load i32, i32* %8
	store i32 %95, i32* %4
	store i32 1, i32* %5
	br label %96

96:
	%97 = load i32, i32* %3
	%98 = icmp slt i32 %97, 16
	br i1 %98, label %99, label %121

99:
	%100 = load i32, i32* %4
	%101 = srem i32 %100, 2
	%102 = icmp ne i32 %101, 0
	br i1 %102, label %103, label %114

103:
	%104 = load i32, i32* %5
	%105 = srem i32 %104, 2
	%106 = icmp ne i32 %105, 0
	br i1 %106, label %107, label %114

107:
	%108 = load i32, i32* %2
	%109 = load i32, i32* %3
	%110 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %109
	%111 = load i32, i32* %110
	%112 = mul i32 1, %111
	%113 = add i32 %108, %112
	store i32 %113, i32* %2
	br label %114

114:
	%115 = load i32, i32* %4
	%116 = sdiv i32 %115, 2
	store i32 %116, i32* %4
	%117 = load i32, i32* %5
	%118 = sdiv i32 %117, 2
	store i32 %118, i32* %5
	%119 = load i32, i32* %3
	%120 = add i32 %119, 1
	store i32 %120, i32* %3
	br label %96

121:
	%122 = load i32, i32* %2
	%123 = icmp ne i32 %122, 0
	br i1 %123, label %124, label %434

124:
	%125 = load i32, i32* %9
	store i32 %125, i32* %10
	%126 = load i32, i32* %7
	store i32 %126, i32* %11
	store i32 0, i32* %12
	br label %127

127:
	%128 = load i32, i32* %11
	%129 = icmp ne i32 %128, 0
	br i1 %129, label %130, label %431

130:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%131 = load i32, i32* %11
	store i32 %131, i32* %4
	store i32 1, i32* %5
	br label %132

132:
	%133 = load i32, i32* %3
	%134 = icmp slt i32 %133, 16
	br i1 %134, label %135, label %157

135:
	%136 = load i32, i32* %4
	%137 = srem i32 %136, 2
	%138 = icmp ne i32 %137, 0
	br i1 %138, label %139, label %150

139:
	%140 = load i32, i32* %5
	%141 = srem i32 %140, 2
	%142 = icmp ne i32 %141, 0
	br i1 %142, label %143, label %150

143:
	%144 = load i32, i32* %2
	%145 = load i32, i32* %3
	%146 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %145
	%147 = load i32, i32* %146
	%148 = mul i32 1, %147
	%149 = add i32 %144, %148
	store i32 %149, i32* %2
	br label %150

150:
	%151 = load i32, i32* %4
	%152 = sdiv i32 %151, 2
	store i32 %152, i32* %4
	%153 = load i32, i32* %5
	%154 = sdiv i32 %153, 2
	store i32 %154, i32* %5
	%155 = load i32, i32* %3
	%156 = add i32 %155, 1
	store i32 %156, i32* %3
	br label %132

157:
	%158 = load i32, i32* %2
	%159 = icmp ne i32 %158, 0
	br i1 %159, label %160, label %275

160:
	%161 = load i32, i32* %12
	store i32 %161, i32* %13
	%162 = load i32, i32* %10
	store i32 %162, i32* %14
	br label %163

163:
	%164 = load i32, i32* %14
	%165 = icmp ne i32 %164, 0
	br i1 %165, label %166, label %272

166:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%167 = load i32, i32* %13
	store i32 %167, i32* %4
	%168 = load i32, i32* %14
	store i32 %168, i32* %5
	br label %169

169:
	%170 = load i32, i32* %3
	%171 = icmp slt i32 %170, 16
	br i1 %171, label %172, label %207

172:
	%173 = load i32, i32* %4
	%174 = srem i32 %173, 2
	%175 = icmp ne i32 %174, 0
	br i1 %175, label %176, label %188

176:
	%177 = load i32, i32* %5
	%178 = srem i32 %177, 2
	%179 = icmp eq i32 %178, 0
	br i1 %179, label %180, label %187

180:
	%181 = load i32, i32* %2
	%182 = load i32, i32* %3
	%183 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %182
	%184 = load i32, i32* %183
	%185 = mul i32 1, %184
	%186 = add i32 %181, %185
	store i32 %186, i32* %2
	br label %187

187:
	br label %200

188:
	%189 = load i32, i32* %5
	%190 = srem i32 %189, 2
	%191 = icmp ne i32 %190, 0
	br i1 %191, label %192, label %199

192:
	%193 = load i32, i32* %2
	%194 = load i32, i32* %3
	%195 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %194
	%196 = load i32, i32* %195
	%197 = mul i32 1, %196
	%198 = add i32 %193, %197
	store i32 %198, i32* %2
	br label %199

199:
	br label %200

200:
	%201 = load i32, i32* %4
	%202 = sdiv i32 %201, 2
	store i32 %202, i32* %4
	%203 = load i32, i32* %5
	%204 = sdiv i32 %203, 2
	store i32 %204, i32* %5
	%205 = load i32, i32* %3
	%206 = add i32 %205, 1
	store i32 %206, i32* %3
	br label %169

207:
	%208 = load i32, i32* %2
	store i32 %208, i32* %15
	store i32 0, i32* %2
	store i32 0, i32* %3
	%209 = load i32, i32* %13
	store i32 %209, i32* %4
	%210 = load i32, i32* %14
	store i32 %210, i32* %5
	br label %211

211:
	%212 = load i32, i32* %3
	%213 = icmp slt i32 %212, 16
	br i1 %213, label %214, label %236

214:
	%215 = load i32, i32* %4
	%216 = srem i32 %215, 2
	%217 = icmp ne i32 %216, 0
	br i1 %217, label %218, label %229

218:
	%219 = load i32, i32* %5
	%220 = srem i32 %219, 2
	%221 = icmp ne i32 %220, 0
	br i1 %221, label %222, label %229

222:
	%223 = load i32, i32* %2
	%224 = load i32, i32* %3
	%225 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %224
	%226 = load i32, i32* %225
	%227 = mul i32 1, %226
	%228 = add i32 %223, %227
	store i32 %228, i32* %2
	br label %229

229:
	%230 = load i32, i32* %4
	%231 = sdiv i32 %230, 2
	store i32 %231, i32* %4
	%232 = load i32, i32* %5
	%233 = sdiv i32 %232, 2
	store i32 %233, i32* %5
	%234 = load i32, i32* %3
	%235 = add i32 %234, 1
	store i32 %235, i32* %3
	br label %211

236:
	%237 = load i32, i32* %2
	store i32 %237, i32* %14
	%238 = icmp sgt i32 1, 15
	br i1 %238, label %239, label %240

239:
	store i32 0, i32* %2
	br label %269

240:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%241 = load i32, i32* %14
	%242 = mul i32 %241, 2
	store i32 %242, i32* %4
	store i32 65535, i32* %5
	br label %243

243:
	%244 = load i32, i32* %3
	%245 = icmp slt i32 %244, 16
	br i1 %245, label %246, label %268

246:
	%247 = load i32, i32* %4
	%248 = srem i32 %247, 2
	%249 = icmp ne i32 %248, 0
	br i1 %249, label %250, label %261

250:
	%251 = load i32, i32* %5
	%252 = srem i32 %251, 2
	%253 = icmp ne i32 %252, 0
	br i1 %253, label %254, label %261

254:
	%255 = load i32, i32* %2
	%256 = load i32, i32* %3
	%257 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %256
	%258 = load i32, i32* %257
	%259 = mul i32 1, %258
	%260 = add i32 %255, %259
	store i32 %260, i32* %2
	br label %261

261:
	%262 = load i32, i32* %4
	%263 = sdiv i32 %262, 2
	store i32 %263, i32* %4
	%264 = load i32, i32* %5
	%265 = sdiv i32 %264, 2
	store i32 %265, i32* %5
	%266 = load i32, i32* %3
	%267 = add i32 %266, 1
	store i32 %267, i32* %3
	br label %243

268:
	br label %269

269:
	%270 = load i32, i32* %2
	store i32 %270, i32* %14
	%271 = load i32, i32* %15
	store i32 %271, i32* %13
	br label %163

272:
	%273 = load i32, i32* %13
	store i32 %273, i32* %2
	%274 = load i32, i32* %2
	store i32 %274, i32* %12
	br label %275

275:
	%276 = load i32, i32* %10
	store i32 %276, i32* %16
	%277 = load i32, i32* %10
	store i32 %277, i32* %17
	br label %278

278:
	%279 = load i32, i32* %17
	%280 = icmp ne i32 %279, 0
	br i1 %280, label %281, label %387

281:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%282 = load i32, i32* %16
	store i32 %282, i32* %4
	%283 = load i32, i32* %17
	store i32 %283, i32* %5
	br label %284

284:
	%285 = load i32, i32* %3
	%286 = icmp slt i32 %285, 16
	br i1 %286, label %287, label %322

287:
	%288 = load i32, i32* %4
	%289 = srem i32 %288, 2
	%290 = icmp ne i32 %289, 0
	br i1 %290, label %291, label %303

291:
	%292 = load i32, i32* %5
	%293 = srem i32 %292, 2
	%294 = icmp eq i32 %293, 0
	br i1 %294, label %295, label %302

295:
	%296 = load i32, i32* %2
	%297 = load i32, i32* %3
	%298 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %297
	%299 = load i32, i32* %298
	%300 = mul i32 1, %299
	%301 = add i32 %296, %300
	store i32 %301, i32* %2
	br label %302

302:
	br label %315

303:
	%304 = load i32, i32* %5
	%305 = srem i32 %304, 2
	%306 = icmp ne i32 %305, 0
	br i1 %306, label %307, label %314

307:
	%308 = load i32, i32* %2
	%309 = load i32, i32* %3
	%310 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %309
	%311 = load i32, i32* %310
	%312 = mul i32 1, %311
	%313 = add i32 %308, %312
	store i32 %313, i32* %2
	br label %314

314:
	br label %315

315:
	%316 = load i32, i32* %4
	%317 = sdiv i32 %316, 2
	store i32 %317, i32* %4
	%318 = load i32, i32* %5
	%319 = sdiv i32 %318, 2
	store i32 %319, i32* %5
	%320 = load i32, i32* %3
	%321 = add i32 %320, 1
	store i32 %321, i32* %3
	br label %284

322:
	%323 = load i32, i32* %2
	store i32 %323, i32* %18
	store i32 0, i32* %2
	store i32 0, i32* %3
	%324 = load i32, i32* %16
	store i32 %324, i32* %4
	%325 = load i32, i32* %17
	store i32 %325, i32* %5
	br label %326

326:
	%327 = load i32, i32* %3
	%328 = icmp slt i32 %327, 16
	br i1 %328, label %329, label %351

329:
	%330 = load i32, i32* %4
	%331 = srem i32 %330, 2
	%332 = icmp ne i32 %331, 0
	br i1 %332, label %333, label %344

333:
	%334 = load i32, i32* %5
	%335 = srem i32 %334, 2
	%336 = icmp ne i32 %335, 0
	br i1 %336, label %337, label %344

337:
	%338 = load i32, i32* %2
	%339 = load i32, i32* %3
	%340 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %339
	%341 = load i32, i32* %340
	%342 = mul i32 1, %341
	%343 = add i32 %338, %342
	store i32 %343, i32* %2
	br label %344

344:
	%345 = load i32, i32* %4
	%346 = sdiv i32 %345, 2
	store i32 %346, i32* %4
	%347 = load i32, i32* %5
	%348 = sdiv i32 %347, 2
	store i32 %348, i32* %5
	%349 = load i32, i32* %3
	%350 = add i32 %349, 1
	store i32 %350, i32* %3
	br label %326

351:
	%352 = load i32, i32* %2
	store i32 %352, i32* %17
	%353 = icmp sgt i32 1, 15
	br i1 %353, label %354, label %355

354:
	store i32 0, i32* %2
	br label %384

355:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%356 = load i32, i32* %17
	%357 = mul i32 %356, 2
	store i32 %357, i32* %4
	store i32 65535, i32* %5
	br label %358

358:
	%359 = load i32, i32* %3
	%360 = icmp slt i32 %359, 16
	br i1 %360, label %361, label %383

361:
	%362 = load i32, i32* %4
	%363 = srem i32 %362, 2
	%364 = icmp ne i32 %363, 0
	br i1 %364, label %365, label %376

365:
	%366 = load i32, i32* %5
	%367 = srem i32 %366, 2
	%368 = icmp ne i32 %367, 0
	br i1 %368, label %369, label %376

369:
	%370 = load i32, i32* %2
	%371 = load i32, i32* %3
	%372 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %371
	%373 = load i32, i32* %372
	%374 = mul i32 1, %373
	%375 = add i32 %370, %374
	store i32 %375, i32* %2
	br label %376

376:
	%377 = load i32, i32* %4
	%378 = sdiv i32 %377, 2
	store i32 %378, i32* %4
	%379 = load i32, i32* %5
	%380 = sdiv i32 %379, 2
	store i32 %380, i32* %5
	%381 = load i32, i32* %3
	%382 = add i32 %381, 1
	store i32 %382, i32* %3
	br label %358

383:
	br label %384

384:
	%385 = load i32, i32* %2
	store i32 %385, i32* %17
	%386 = load i32, i32* %18
	store i32 %386, i32* %16
	br label %278

387:
	%388 = load i32, i32* %16
	store i32 %388, i32* %2
	%389 = load i32, i32* %2
	store i32 %389, i32* %10
	%390 = load i32, i32* %11
	store i32 %390, i32* %4
	store i32 1, i32* %5
	%391 = load i32, i32* %5
	%392 = icmp sge i32 %391, 15
	br i1 %392, label %393, label %399

393:
	%394 = load i32, i32* %4
	%395 = icmp slt i32 %394, 0
	br i1 %395, label %396, label %397

396:
	store i32 65535, i32* %2
	br label %398

397:
	store i32 0, i32* %2
	br label %398

398:
	br label %429

399:
	%400 = load i32, i32* %5
	%401 = icmp sgt i32 %400, 0
	br i1 %401, label %402, label %426

402:
	%403 = load i32, i32* %4
	%404 = icmp sgt i32 %403, 32767
	br i1 %404, label %405, label %419

405:
	%406 = load i32, i32* %4
	%407 = load i32, i32* %5
	%408 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %407
	%409 = load i32, i32* %408
	%410 = sdiv i32 %406, %409
	store i32 %410, i32* %4
	%411 = load i32, i32* %4
	%412 = add i32 %411, 65536
	%413 = load i32, i32* %5
	%414 = sub i32 15, %413
	%415 = add i32 %414, 1
	%416 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %415
	%417 = load i32, i32* %416
	%418 = sub i32 %412, %417
	store i32 %418, i32* %2
	br label %425

419:
	%420 = load i32, i32* %4
	%421 = load i32, i32* %5
	%422 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %421
	%423 = load i32, i32* %422
	%424 = sdiv i32 %420, %423
	store i32 %424, i32* %2
	br label %425

425:
	br label %428

426:
	%427 = load i32, i32* %4
	store i32 %427, i32* %2
	br label %428

428:
	br label %429

429:
	%430 = load i32, i32* %2
	store i32 %430, i32* %11
	br label %127

431:
	%432 = load i32, i32* %12
	store i32 %432, i32* %2
	%433 = load i32, i32* %2
	store i32 %433, i32* %9
	br label %434

434:
	%435 = load i32, i32* %7
	store i32 %435, i32* %19
	%436 = load i32, i32* %7
	store i32 %436, i32* %20
	store i32 0, i32* %21
	br label %437

437:
	%438 = load i32, i32* %20
	%439 = icmp ne i32 %438, 0
	br i1 %439, label %440, label %741

440:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%441 = load i32, i32* %20
	store i32 %441, i32* %4
	store i32 1, i32* %5
	br label %442

442:
	%443 = load i32, i32* %3
	%444 = icmp slt i32 %443, 16
	br i1 %444, label %445, label %467

445:
	%446 = load i32, i32* %4
	%447 = srem i32 %446, 2
	%448 = icmp ne i32 %447, 0
	br i1 %448, label %449, label %460

449:
	%450 = load i32, i32* %5
	%451 = srem i32 %450, 2
	%452 = icmp ne i32 %451, 0
	br i1 %452, label %453, label %460

453:
	%454 = load i32, i32* %2
	%455 = load i32, i32* %3
	%456 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %455
	%457 = load i32, i32* %456
	%458 = mul i32 1, %457
	%459 = add i32 %454, %458
	store i32 %459, i32* %2
	br label %460

460:
	%461 = load i32, i32* %4
	%462 = sdiv i32 %461, 2
	store i32 %462, i32* %4
	%463 = load i32, i32* %5
	%464 = sdiv i32 %463, 2
	store i32 %464, i32* %5
	%465 = load i32, i32* %3
	%466 = add i32 %465, 1
	store i32 %466, i32* %3
	br label %442

467:
	%468 = load i32, i32* %2
	%469 = icmp ne i32 %468, 0
	br i1 %469, label %470, label %585

470:
	%471 = load i32, i32* %21
	store i32 %471, i32* %22
	%472 = load i32, i32* %19
	store i32 %472, i32* %23
	br label %473

473:
	%474 = load i32, i32* %23
	%475 = icmp ne i32 %474, 0
	br i1 %475, label %476, label %582

476:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%477 = load i32, i32* %22
	store i32 %477, i32* %4
	%478 = load i32, i32* %23
	store i32 %478, i32* %5
	br label %479

479:
	%480 = load i32, i32* %3
	%481 = icmp slt i32 %480, 16
	br i1 %481, label %482, label %517

482:
	%483 = load i32, i32* %4
	%484 = srem i32 %483, 2
	%485 = icmp ne i32 %484, 0
	br i1 %485, label %486, label %498

486:
	%487 = load i32, i32* %5
	%488 = srem i32 %487, 2
	%489 = icmp eq i32 %488, 0
	br i1 %489, label %490, label %497

490:
	%491 = load i32, i32* %2
	%492 = load i32, i32* %3
	%493 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %492
	%494 = load i32, i32* %493
	%495 = mul i32 1, %494
	%496 = add i32 %491, %495
	store i32 %496, i32* %2
	br label %497

497:
	br label %510

498:
	%499 = load i32, i32* %5
	%500 = srem i32 %499, 2
	%501 = icmp ne i32 %500, 0
	br i1 %501, label %502, label %509

502:
	%503 = load i32, i32* %2
	%504 = load i32, i32* %3
	%505 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %504
	%506 = load i32, i32* %505
	%507 = mul i32 1, %506
	%508 = add i32 %503, %507
	store i32 %508, i32* %2
	br label %509

509:
	br label %510

510:
	%511 = load i32, i32* %4
	%512 = sdiv i32 %511, 2
	store i32 %512, i32* %4
	%513 = load i32, i32* %5
	%514 = sdiv i32 %513, 2
	store i32 %514, i32* %5
	%515 = load i32, i32* %3
	%516 = add i32 %515, 1
	store i32 %516, i32* %3
	br label %479

517:
	%518 = load i32, i32* %2
	store i32 %518, i32* %24
	store i32 0, i32* %2
	store i32 0, i32* %3
	%519 = load i32, i32* %22
	store i32 %519, i32* %4
	%520 = load i32, i32* %23
	store i32 %520, i32* %5
	br label %521

521:
	%522 = load i32, i32* %3
	%523 = icmp slt i32 %522, 16
	br i1 %523, label %524, label %546

524:
	%525 = load i32, i32* %4
	%526 = srem i32 %525, 2
	%527 = icmp ne i32 %526, 0
	br i1 %527, label %528, label %539

528:
	%529 = load i32, i32* %5
	%530 = srem i32 %529, 2
	%531 = icmp ne i32 %530, 0
	br i1 %531, label %532, label %539

532:
	%533 = load i32, i32* %2
	%534 = load i32, i32* %3
	%535 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %534
	%536 = load i32, i32* %535
	%537 = mul i32 1, %536
	%538 = add i32 %533, %537
	store i32 %538, i32* %2
	br label %539

539:
	%540 = load i32, i32* %4
	%541 = sdiv i32 %540, 2
	store i32 %541, i32* %4
	%542 = load i32, i32* %5
	%543 = sdiv i32 %542, 2
	store i32 %543, i32* %5
	%544 = load i32, i32* %3
	%545 = add i32 %544, 1
	store i32 %545, i32* %3
	br label %521

546:
	%547 = load i32, i32* %2
	store i32 %547, i32* %23
	%548 = icmp sgt i32 1, 15
	br i1 %548, label %549, label %550

549:
	store i32 0, i32* %2
	br label %579

550:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%551 = load i32, i32* %23
	%552 = mul i32 %551, 2
	store i32 %552, i32* %4
	store i32 65535, i32* %5
	br label %553

553:
	%554 = load i32, i32* %3
	%555 = icmp slt i32 %554, 16
	br i1 %555, label %556, label %578

556:
	%557 = load i32, i32* %4
	%558 = srem i32 %557, 2
	%559 = icmp ne i32 %558, 0
	br i1 %559, label %560, label %571

560:
	%561 = load i32, i32* %5
	%562 = srem i32 %561, 2
	%563 = icmp ne i32 %562, 0
	br i1 %563, label %564, label %571

564:
	%565 = load i32, i32* %2
	%566 = load i32, i32* %3
	%567 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %566
	%568 = load i32, i32* %567
	%569 = mul i32 1, %568
	%570 = add i32 %565, %569
	store i32 %570, i32* %2
	br label %571

571:
	%572 = load i32, i32* %4
	%573 = sdiv i32 %572, 2
	store i32 %573, i32* %4
	%574 = load i32, i32* %5
	%575 = sdiv i32 %574, 2
	store i32 %575, i32* %5
	%576 = load i32, i32* %3
	%577 = add i32 %576, 1
	store i32 %577, i32* %3
	br label %553

578:
	br label %579

579:
	%580 = load i32, i32* %2
	store i32 %580, i32* %23
	%581 = load i32, i32* %24
	store i32 %581, i32* %22
	br label %473

582:
	%583 = load i32, i32* %22
	store i32 %583, i32* %2
	%584 = load i32, i32* %2
	store i32 %584, i32* %21
	br label %585

585:
	%586 = load i32, i32* %19
	store i32 %586, i32* %25
	%587 = load i32, i32* %19
	store i32 %587, i32* %26
	br label %588

588:
	%589 = load i32, i32* %26
	%590 = icmp ne i32 %589, 0
	br i1 %590, label %591, label %697

591:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%592 = load i32, i32* %25
	store i32 %592, i32* %4
	%593 = load i32, i32* %26
	store i32 %593, i32* %5
	br label %594

594:
	%595 = load i32, i32* %3
	%596 = icmp slt i32 %595, 16
	br i1 %596, label %597, label %632

597:
	%598 = load i32, i32* %4
	%599 = srem i32 %598, 2
	%600 = icmp ne i32 %599, 0
	br i1 %600, label %601, label %613

601:
	%602 = load i32, i32* %5
	%603 = srem i32 %602, 2
	%604 = icmp eq i32 %603, 0
	br i1 %604, label %605, label %612

605:
	%606 = load i32, i32* %2
	%607 = load i32, i32* %3
	%608 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %607
	%609 = load i32, i32* %608
	%610 = mul i32 1, %609
	%611 = add i32 %606, %610
	store i32 %611, i32* %2
	br label %612

612:
	br label %625

613:
	%614 = load i32, i32* %5
	%615 = srem i32 %614, 2
	%616 = icmp ne i32 %615, 0
	br i1 %616, label %617, label %624

617:
	%618 = load i32, i32* %2
	%619 = load i32, i32* %3
	%620 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %619
	%621 = load i32, i32* %620
	%622 = mul i32 1, %621
	%623 = add i32 %618, %622
	store i32 %623, i32* %2
	br label %624

624:
	br label %625

625:
	%626 = load i32, i32* %4
	%627 = sdiv i32 %626, 2
	store i32 %627, i32* %4
	%628 = load i32, i32* %5
	%629 = sdiv i32 %628, 2
	store i32 %629, i32* %5
	%630 = load i32, i32* %3
	%631 = add i32 %630, 1
	store i32 %631, i32* %3
	br label %594

632:
	%633 = load i32, i32* %2
	store i32 %633, i32* %27
	store i32 0, i32* %2
	store i32 0, i32* %3
	%634 = load i32, i32* %25
	store i32 %634, i32* %4
	%635 = load i32, i32* %26
	store i32 %635, i32* %5
	br label %636

636:
	%637 = load i32, i32* %3
	%638 = icmp slt i32 %637, 16
	br i1 %638, label %639, label %661

639:
	%640 = load i32, i32* %4
	%641 = srem i32 %640, 2
	%642 = icmp ne i32 %641, 0
	br i1 %642, label %643, label %654

643:
	%644 = load i32, i32* %5
	%645 = srem i32 %644, 2
	%646 = icmp ne i32 %645, 0
	br i1 %646, label %647, label %654

647:
	%648 = load i32, i32* %2
	%649 = load i32, i32* %3
	%650 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %649
	%651 = load i32, i32* %650
	%652 = mul i32 1, %651
	%653 = add i32 %648, %652
	store i32 %653, i32* %2
	br label %654

654:
	%655 = load i32, i32* %4
	%656 = sdiv i32 %655, 2
	store i32 %656, i32* %4
	%657 = load i32, i32* %5
	%658 = sdiv i32 %657, 2
	store i32 %658, i32* %5
	%659 = load i32, i32* %3
	%660 = add i32 %659, 1
	store i32 %660, i32* %3
	br label %636

661:
	%662 = load i32, i32* %2
	store i32 %662, i32* %26
	%663 = icmp sgt i32 1, 15
	br i1 %663, label %664, label %665

664:
	store i32 0, i32* %2
	br label %694

665:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%666 = load i32, i32* %26
	%667 = mul i32 %666, 2
	store i32 %667, i32* %4
	store i32 65535, i32* %5
	br label %668

668:
	%669 = load i32, i32* %3
	%670 = icmp slt i32 %669, 16
	br i1 %670, label %671, label %693

671:
	%672 = load i32, i32* %4
	%673 = srem i32 %672, 2
	%674 = icmp ne i32 %673, 0
	br i1 %674, label %675, label %686

675:
	%676 = load i32, i32* %5
	%677 = srem i32 %676, 2
	%678 = icmp ne i32 %677, 0
	br i1 %678, label %679, label %686

679:
	%680 = load i32, i32* %2
	%681 = load i32, i32* %3
	%682 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %681
	%683 = load i32, i32* %682
	%684 = mul i32 1, %683
	%685 = add i32 %680, %684
	store i32 %685, i32* %2
	br label %686

686:
	%687 = load i32, i32* %4
	%688 = sdiv i32 %687, 2
	store i32 %688, i32* %4
	%689 = load i32, i32* %5
	%690 = sdiv i32 %689, 2
	store i32 %690, i32* %5
	%691 = load i32, i32* %3
	%692 = add i32 %691, 1
	store i32 %692, i32* %3
	br label %668

693:
	br label %694

694:
	%695 = load i32, i32* %2
	store i32 %695, i32* %26
	%696 = load i32, i32* %27
	store i32 %696, i32* %25
	br label %588

697:
	%698 = load i32, i32* %25
	store i32 %698, i32* %2
	%699 = load i32, i32* %2
	store i32 %699, i32* %19
	%700 = load i32, i32* %20
	store i32 %700, i32* %4
	store i32 1, i32* %5
	%701 = load i32, i32* %5
	%702 = icmp sge i32 %701, 15
	br i1 %702, label %703, label %709

703:
	%704 = load i32, i32* %4
	%705 = icmp slt i32 %704, 0
	br i1 %705, label %706, label %707

706:
	store i32 65535, i32* %2
	br label %708

707:
	store i32 0, i32* %2
	br label %708

708:
	br label %739

709:
	%710 = load i32, i32* %5
	%711 = icmp sgt i32 %710, 0
	br i1 %711, label %712, label %736

712:
	%713 = load i32, i32* %4
	%714 = icmp sgt i32 %713, 32767
	br i1 %714, label %715, label %729

715:
	%716 = load i32, i32* %4
	%717 = load i32, i32* %5
	%718 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %717
	%719 = load i32, i32* %718
	%720 = sdiv i32 %716, %719
	store i32 %720, i32* %4
	%721 = load i32, i32* %4
	%722 = add i32 %721, 65536
	%723 = load i32, i32* %5
	%724 = sub i32 15, %723
	%725 = add i32 %724, 1
	%726 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %725
	%727 = load i32, i32* %726
	%728 = sub i32 %722, %727
	store i32 %728, i32* %2
	br label %735

729:
	%730 = load i32, i32* %4
	%731 = load i32, i32* %5
	%732 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %731
	%733 = load i32, i32* %732
	%734 = sdiv i32 %730, %733
	store i32 %734, i32* %2
	br label %735

735:
	br label %738

736:
	%737 = load i32, i32* %4
	store i32 %737, i32* %2
	br label %738

738:
	br label %739

739:
	%740 = load i32, i32* %2
	store i32 %740, i32* %20
	br label %437

741:
	%742 = load i32, i32* %21
	store i32 %742, i32* %2
	%743 = load i32, i32* %2
	store i32 %743, i32* %7
	%744 = load i32, i32* %8
	store i32 %744, i32* %4
	store i32 1, i32* %5
	%745 = load i32, i32* %5
	%746 = icmp sge i32 %745, 15
	br i1 %746, label %747, label %753

747:
	%748 = load i32, i32* %4
	%749 = icmp slt i32 %748, 0
	br i1 %749, label %750, label %751

750:
	store i32 65535, i32* %2
	br label %752

751:
	store i32 0, i32* %2
	br label %752

752:
	br label %783

753:
	%754 = load i32, i32* %5
	%755 = icmp sgt i32 %754, 0
	br i1 %755, label %756, label %780

756:
	%757 = load i32, i32* %4
	%758 = icmp sgt i32 %757, 32767
	br i1 %758, label %759, label %773

759:
	%760 = load i32, i32* %4
	%761 = load i32, i32* %5
	%762 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %761
	%763 = load i32, i32* %762
	%764 = sdiv i32 %760, %763
	store i32 %764, i32* %4
	%765 = load i32, i32* %4
	%766 = add i32 %765, 65536
	%767 = load i32, i32* %5
	%768 = sub i32 15, %767
	%769 = add i32 %768, 1
	%770 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %769
	%771 = load i32, i32* %770
	%772 = sub i32 %766, %771
	store i32 %772, i32* %2
	br label %779

773:
	%774 = load i32, i32* %4
	%775 = load i32, i32* %5
	%776 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %775
	%777 = load i32, i32* %776
	%778 = sdiv i32 %774, %777
	store i32 %778, i32* %2
	br label %779

779:
	br label %782

780:
	%781 = load i32, i32* %4
	store i32 %781, i32* %2
	br label %782

782:
	br label %783

783:
	%784 = load i32, i32* %2
	store i32 %784, i32* %8
	br label %91

785:
	%786 = load i32, i32* %9
	store i32 %786, i32* %2
	%787 = load i32, i32* %2
	call void @putint(i32 %787)
	call void @putch(i32 10)
	store i32 2, i32* %28
	store i32 1, i32* %29
	store i32 1, i32* %30
	br label %788

788:
	%789 = load i32, i32* %29
	%790 = icmp sgt i32 %789, 0
	br i1 %790, label %791, label %1482

791:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%792 = load i32, i32* %29
	store i32 %792, i32* %4
	store i32 1, i32* %5
	br label %793

793:
	%794 = load i32, i32* %3
	%795 = icmp slt i32 %794, 16
	br i1 %795, label %796, label %818

796:
	%797 = load i32, i32* %4
	%798 = srem i32 %797, 2
	%799 = icmp ne i32 %798, 0
	br i1 %799, label %800, label %811

800:
	%801 = load i32, i32* %5
	%802 = srem i32 %801, 2
	%803 = icmp ne i32 %802, 0
	br i1 %803, label %804, label %811

804:
	%805 = load i32, i32* %2
	%806 = load i32, i32* %3
	%807 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %806
	%808 = load i32, i32* %807
	%809 = mul i32 1, %808
	%810 = add i32 %805, %809
	store i32 %810, i32* %2
	br label %811

811:
	%812 = load i32, i32* %4
	%813 = sdiv i32 %812, 2
	store i32 %813, i32* %4
	%814 = load i32, i32* %5
	%815 = sdiv i32 %814, 2
	store i32 %815, i32* %5
	%816 = load i32, i32* %3
	%817 = add i32 %816, 1
	store i32 %817, i32* %3
	br label %793

818:
	%819 = load i32, i32* %2
	%820 = icmp ne i32 %819, 0
	br i1 %820, label %821, label %1131

821:
	%822 = load i32, i32* %30
	store i32 %822, i32* %31
	%823 = load i32, i32* %28
	store i32 %823, i32* %32
	store i32 0, i32* %33
	br label %824

824:
	%825 = load i32, i32* %32
	%826 = icmp ne i32 %825, 0
	br i1 %826, label %827, label %1128

827:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%828 = load i32, i32* %32
	store i32 %828, i32* %4
	store i32 1, i32* %5
	br label %829

829:
	%830 = load i32, i32* %3
	%831 = icmp slt i32 %830, 16
	br i1 %831, label %832, label %854

832:
	%833 = load i32, i32* %4
	%834 = srem i32 %833, 2
	%835 = icmp ne i32 %834, 0
	br i1 %835, label %836, label %847

836:
	%837 = load i32, i32* %5
	%838 = srem i32 %837, 2
	%839 = icmp ne i32 %838, 0
	br i1 %839, label %840, label %847

840:
	%841 = load i32, i32* %2
	%842 = load i32, i32* %3
	%843 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %842
	%844 = load i32, i32* %843
	%845 = mul i32 1, %844
	%846 = add i32 %841, %845
	store i32 %846, i32* %2
	br label %847

847:
	%848 = load i32, i32* %4
	%849 = sdiv i32 %848, 2
	store i32 %849, i32* %4
	%850 = load i32, i32* %5
	%851 = sdiv i32 %850, 2
	store i32 %851, i32* %5
	%852 = load i32, i32* %3
	%853 = add i32 %852, 1
	store i32 %853, i32* %3
	br label %829

854:
	%855 = load i32, i32* %2
	%856 = icmp ne i32 %855, 0
	br i1 %856, label %857, label %972

857:
	%858 = load i32, i32* %33
	store i32 %858, i32* %34
	%859 = load i32, i32* %31
	store i32 %859, i32* %35
	br label %860

860:
	%861 = load i32, i32* %35
	%862 = icmp ne i32 %861, 0
	br i1 %862, label %863, label %969

863:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%864 = load i32, i32* %34
	store i32 %864, i32* %4
	%865 = load i32, i32* %35
	store i32 %865, i32* %5
	br label %866

866:
	%867 = load i32, i32* %3
	%868 = icmp slt i32 %867, 16
	br i1 %868, label %869, label %904

869:
	%870 = load i32, i32* %4
	%871 = srem i32 %870, 2
	%872 = icmp ne i32 %871, 0
	br i1 %872, label %873, label %885

873:
	%874 = load i32, i32* %5
	%875 = srem i32 %874, 2
	%876 = icmp eq i32 %875, 0
	br i1 %876, label %877, label %884

877:
	%878 = load i32, i32* %2
	%879 = load i32, i32* %3
	%880 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %879
	%881 = load i32, i32* %880
	%882 = mul i32 1, %881
	%883 = add i32 %878, %882
	store i32 %883, i32* %2
	br label %884

884:
	br label %897

885:
	%886 = load i32, i32* %5
	%887 = srem i32 %886, 2
	%888 = icmp ne i32 %887, 0
	br i1 %888, label %889, label %896

889:
	%890 = load i32, i32* %2
	%891 = load i32, i32* %3
	%892 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %891
	%893 = load i32, i32* %892
	%894 = mul i32 1, %893
	%895 = add i32 %890, %894
	store i32 %895, i32* %2
	br label %896

896:
	br label %897

897:
	%898 = load i32, i32* %4
	%899 = sdiv i32 %898, 2
	store i32 %899, i32* %4
	%900 = load i32, i32* %5
	%901 = sdiv i32 %900, 2
	store i32 %901, i32* %5
	%902 = load i32, i32* %3
	%903 = add i32 %902, 1
	store i32 %903, i32* %3
	br label %866

904:
	%905 = load i32, i32* %2
	store i32 %905, i32* %36
	store i32 0, i32* %2
	store i32 0, i32* %3
	%906 = load i32, i32* %34
	store i32 %906, i32* %4
	%907 = load i32, i32* %35
	store i32 %907, i32* %5
	br label %908

908:
	%909 = load i32, i32* %3
	%910 = icmp slt i32 %909, 16
	br i1 %910, label %911, label %933

911:
	%912 = load i32, i32* %4
	%913 = srem i32 %912, 2
	%914 = icmp ne i32 %913, 0
	br i1 %914, label %915, label %926

915:
	%916 = load i32, i32* %5
	%917 = srem i32 %916, 2
	%918 = icmp ne i32 %917, 0
	br i1 %918, label %919, label %926

919:
	%920 = load i32, i32* %2
	%921 = load i32, i32* %3
	%922 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %921
	%923 = load i32, i32* %922
	%924 = mul i32 1, %923
	%925 = add i32 %920, %924
	store i32 %925, i32* %2
	br label %926

926:
	%927 = load i32, i32* %4
	%928 = sdiv i32 %927, 2
	store i32 %928, i32* %4
	%929 = load i32, i32* %5
	%930 = sdiv i32 %929, 2
	store i32 %930, i32* %5
	%931 = load i32, i32* %3
	%932 = add i32 %931, 1
	store i32 %932, i32* %3
	br label %908

933:
	%934 = load i32, i32* %2
	store i32 %934, i32* %35
	%935 = icmp sgt i32 1, 15
	br i1 %935, label %936, label %937

936:
	store i32 0, i32* %2
	br label %966

937:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%938 = load i32, i32* %35
	%939 = mul i32 %938, 2
	store i32 %939, i32* %4
	store i32 65535, i32* %5
	br label %940

940:
	%941 = load i32, i32* %3
	%942 = icmp slt i32 %941, 16
	br i1 %942, label %943, label %965

943:
	%944 = load i32, i32* %4
	%945 = srem i32 %944, 2
	%946 = icmp ne i32 %945, 0
	br i1 %946, label %947, label %958

947:
	%948 = load i32, i32* %5
	%949 = srem i32 %948, 2
	%950 = icmp ne i32 %949, 0
	br i1 %950, label %951, label %958

951:
	%952 = load i32, i32* %2
	%953 = load i32, i32* %3
	%954 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %953
	%955 = load i32, i32* %954
	%956 = mul i32 1, %955
	%957 = add i32 %952, %956
	store i32 %957, i32* %2
	br label %958

958:
	%959 = load i32, i32* %4
	%960 = sdiv i32 %959, 2
	store i32 %960, i32* %4
	%961 = load i32, i32* %5
	%962 = sdiv i32 %961, 2
	store i32 %962, i32* %5
	%963 = load i32, i32* %3
	%964 = add i32 %963, 1
	store i32 %964, i32* %3
	br label %940

965:
	br label %966

966:
	%967 = load i32, i32* %2
	store i32 %967, i32* %35
	%968 = load i32, i32* %36
	store i32 %968, i32* %34
	br label %860

969:
	%970 = load i32, i32* %34
	store i32 %970, i32* %2
	%971 = load i32, i32* %2
	store i32 %971, i32* %33
	br label %972

972:
	%973 = load i32, i32* %31
	store i32 %973, i32* %37
	%974 = load i32, i32* %31
	store i32 %974, i32* %38
	br label %975

975:
	%976 = load i32, i32* %38
	%977 = icmp ne i32 %976, 0
	br i1 %977, label %978, label %1084

978:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%979 = load i32, i32* %37
	store i32 %979, i32* %4
	%980 = load i32, i32* %38
	store i32 %980, i32* %5
	br label %981

981:
	%982 = load i32, i32* %3
	%983 = icmp slt i32 %982, 16
	br i1 %983, label %984, label %1019

984:
	%985 = load i32, i32* %4
	%986 = srem i32 %985, 2
	%987 = icmp ne i32 %986, 0
	br i1 %987, label %988, label %1000

988:
	%989 = load i32, i32* %5
	%990 = srem i32 %989, 2
	%991 = icmp eq i32 %990, 0
	br i1 %991, label %992, label %999

992:
	%993 = load i32, i32* %2
	%994 = load i32, i32* %3
	%995 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %994
	%996 = load i32, i32* %995
	%997 = mul i32 1, %996
	%998 = add i32 %993, %997
	store i32 %998, i32* %2
	br label %999

999:
	br label %1012

1000:
	%1001 = load i32, i32* %5
	%1002 = srem i32 %1001, 2
	%1003 = icmp ne i32 %1002, 0
	br i1 %1003, label %1004, label %1011

1004:
	%1005 = load i32, i32* %2
	%1006 = load i32, i32* %3
	%1007 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %1006
	%1008 = load i32, i32* %1007
	%1009 = mul i32 1, %1008
	%1010 = add i32 %1005, %1009
	store i32 %1010, i32* %2
	br label %1011

1011:
	br label %1012

1012:
	%1013 = load i32, i32* %4
	%1014 = sdiv i32 %1013, 2
	store i32 %1014, i32* %4
	%1015 = load i32, i32* %5
	%1016 = sdiv i32 %1015, 2
	store i32 %1016, i32* %5
	%1017 = load i32, i32* %3
	%1018 = add i32 %1017, 1
	store i32 %1018, i32* %3
	br label %981

1019:
	%1020 = load i32, i32* %2
	store i32 %1020, i32* %39
	store i32 0, i32* %2
	store i32 0, i32* %3
	%1021 = load i32, i32* %37
	store i32 %1021, i32* %4
	%1022 = load i32, i32* %38
	store i32 %1022, i32* %5
	br label %1023

1023:
	%1024 = load i32, i32* %3
	%1025 = icmp slt i32 %1024, 16
	br i1 %1025, label %1026, label %1048

1026:
	%1027 = load i32, i32* %4
	%1028 = srem i32 %1027, 2
	%1029 = icmp ne i32 %1028, 0
	br i1 %1029, label %1030, label %1041

1030:
	%1031 = load i32, i32* %5
	%1032 = srem i32 %1031, 2
	%1033 = icmp ne i32 %1032, 0
	br i1 %1033, label %1034, label %1041

1034:
	%1035 = load i32, i32* %2
	%1036 = load i32, i32* %3
	%1037 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %1036
	%1038 = load i32, i32* %1037
	%1039 = mul i32 1, %1038
	%1040 = add i32 %1035, %1039
	store i32 %1040, i32* %2
	br label %1041

1041:
	%1042 = load i32, i32* %4
	%1043 = sdiv i32 %1042, 2
	store i32 %1043, i32* %4
	%1044 = load i32, i32* %5
	%1045 = sdiv i32 %1044, 2
	store i32 %1045, i32* %5
	%1046 = load i32, i32* %3
	%1047 = add i32 %1046, 1
	store i32 %1047, i32* %3
	br label %1023

1048:
	%1049 = load i32, i32* %2
	store i32 %1049, i32* %38
	%1050 = icmp sgt i32 1, 15
	br i1 %1050, label %1051, label %1052

1051:
	store i32 0, i32* %2
	br label %1081

1052:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%1053 = load i32, i32* %38
	%1054 = mul i32 %1053, 2
	store i32 %1054, i32* %4
	store i32 65535, i32* %5
	br label %1055

1055:
	%1056 = load i32, i32* %3
	%1057 = icmp slt i32 %1056, 16
	br i1 %1057, label %1058, label %1080

1058:
	%1059 = load i32, i32* %4
	%1060 = srem i32 %1059, 2
	%1061 = icmp ne i32 %1060, 0
	br i1 %1061, label %1062, label %1073

1062:
	%1063 = load i32, i32* %5
	%1064 = srem i32 %1063, 2
	%1065 = icmp ne i32 %1064, 0
	br i1 %1065, label %1066, label %1073

1066:
	%1067 = load i32, i32* %2
	%1068 = load i32, i32* %3
	%1069 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %1068
	%1070 = load i32, i32* %1069
	%1071 = mul i32 1, %1070
	%1072 = add i32 %1067, %1071
	store i32 %1072, i32* %2
	br label %1073

1073:
	%1074 = load i32, i32* %4
	%1075 = sdiv i32 %1074, 2
	store i32 %1075, i32* %4
	%1076 = load i32, i32* %5
	%1077 = sdiv i32 %1076, 2
	store i32 %1077, i32* %5
	%1078 = load i32, i32* %3
	%1079 = add i32 %1078, 1
	store i32 %1079, i32* %3
	br label %1055

1080:
	br label %1081

1081:
	%1082 = load i32, i32* %2
	store i32 %1082, i32* %38
	%1083 = load i32, i32* %39
	store i32 %1083, i32* %37
	br label %975

1084:
	%1085 = load i32, i32* %37
	store i32 %1085, i32* %2
	%1086 = load i32, i32* %2
	store i32 %1086, i32* %31
	%1087 = load i32, i32* %32
	store i32 %1087, i32* %4
	store i32 1, i32* %5
	%1088 = load i32, i32* %5
	%1089 = icmp sge i32 %1088, 15
	br i1 %1089, label %1090, label %1096

1090:
	%1091 = load i32, i32* %4
	%1092 = icmp slt i32 %1091, 0
	br i1 %1092, label %1093, label %1094

1093:
	store i32 65535, i32* %2
	br label %1095

1094:
	store i32 0, i32* %2
	br label %1095

1095:
	br label %1126

1096:
	%1097 = load i32, i32* %5
	%1098 = icmp sgt i32 %1097, 0
	br i1 %1098, label %1099, label %1123

1099:
	%1100 = load i32, i32* %4
	%1101 = icmp sgt i32 %1100, 32767
	br i1 %1101, label %1102, label %1116

1102:
	%1103 = load i32, i32* %4
	%1104 = load i32, i32* %5
	%1105 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %1104
	%1106 = load i32, i32* %1105
	%1107 = sdiv i32 %1103, %1106
	store i32 %1107, i32* %4
	%1108 = load i32, i32* %4
	%1109 = add i32 %1108, 65536
	%1110 = load i32, i32* %5
	%1111 = sub i32 15, %1110
	%1112 = add i32 %1111, 1
	%1113 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %1112
	%1114 = load i32, i32* %1113
	%1115 = sub i32 %1109, %1114
	store i32 %1115, i32* %2
	br label %1122

1116:
	%1117 = load i32, i32* %4
	%1118 = load i32, i32* %5
	%1119 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %1118
	%1120 = load i32, i32* %1119
	%1121 = sdiv i32 %1117, %1120
	store i32 %1121, i32* %2
	br label %1122

1122:
	br label %1125

1123:
	%1124 = load i32, i32* %4
	store i32 %1124, i32* %2
	br label %1125

1125:
	br label %1126

1126:
	%1127 = load i32, i32* %2
	store i32 %1127, i32* %32
	br label %824

1128:
	%1129 = load i32, i32* %33
	store i32 %1129, i32* %2
	%1130 = load i32, i32* %2
	store i32 %1130, i32* %30
	br label %1131

1131:
	%1132 = load i32, i32* %28
	store i32 %1132, i32* %40
	%1133 = load i32, i32* %28
	store i32 %1133, i32* %41
	store i32 0, i32* %42
	br label %1134

1134:
	%1135 = load i32, i32* %41
	%1136 = icmp ne i32 %1135, 0
	br i1 %1136, label %1137, label %1438

1137:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%1138 = load i32, i32* %41
	store i32 %1138, i32* %4
	store i32 1, i32* %5
	br label %1139

1139:
	%1140 = load i32, i32* %3
	%1141 = icmp slt i32 %1140, 16
	br i1 %1141, label %1142, label %1164

1142:
	%1143 = load i32, i32* %4
	%1144 = srem i32 %1143, 2
	%1145 = icmp ne i32 %1144, 0
	br i1 %1145, label %1146, label %1157

1146:
	%1147 = load i32, i32* %5
	%1148 = srem i32 %1147, 2
	%1149 = icmp ne i32 %1148, 0
	br i1 %1149, label %1150, label %1157

1150:
	%1151 = load i32, i32* %2
	%1152 = load i32, i32* %3
	%1153 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %1152
	%1154 = load i32, i32* %1153
	%1155 = mul i32 1, %1154
	%1156 = add i32 %1151, %1155
	store i32 %1156, i32* %2
	br label %1157

1157:
	%1158 = load i32, i32* %4
	%1159 = sdiv i32 %1158, 2
	store i32 %1159, i32* %4
	%1160 = load i32, i32* %5
	%1161 = sdiv i32 %1160, 2
	store i32 %1161, i32* %5
	%1162 = load i32, i32* %3
	%1163 = add i32 %1162, 1
	store i32 %1163, i32* %3
	br label %1139

1164:
	%1165 = load i32, i32* %2
	%1166 = icmp ne i32 %1165, 0
	br i1 %1166, label %1167, label %1282

1167:
	%1168 = load i32, i32* %42
	store i32 %1168, i32* %43
	%1169 = load i32, i32* %40
	store i32 %1169, i32* %44
	br label %1170

1170:
	%1171 = load i32, i32* %44
	%1172 = icmp ne i32 %1171, 0
	br i1 %1172, label %1173, label %1279

1173:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%1174 = load i32, i32* %43
	store i32 %1174, i32* %4
	%1175 = load i32, i32* %44
	store i32 %1175, i32* %5
	br label %1176

1176:
	%1177 = load i32, i32* %3
	%1178 = icmp slt i32 %1177, 16
	br i1 %1178, label %1179, label %1214

1179:
	%1180 = load i32, i32* %4
	%1181 = srem i32 %1180, 2
	%1182 = icmp ne i32 %1181, 0
	br i1 %1182, label %1183, label %1195

1183:
	%1184 = load i32, i32* %5
	%1185 = srem i32 %1184, 2
	%1186 = icmp eq i32 %1185, 0
	br i1 %1186, label %1187, label %1194

1187:
	%1188 = load i32, i32* %2
	%1189 = load i32, i32* %3
	%1190 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %1189
	%1191 = load i32, i32* %1190
	%1192 = mul i32 1, %1191
	%1193 = add i32 %1188, %1192
	store i32 %1193, i32* %2
	br label %1194

1194:
	br label %1207

1195:
	%1196 = load i32, i32* %5
	%1197 = srem i32 %1196, 2
	%1198 = icmp ne i32 %1197, 0
	br i1 %1198, label %1199, label %1206

1199:
	%1200 = load i32, i32* %2
	%1201 = load i32, i32* %3
	%1202 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %1201
	%1203 = load i32, i32* %1202
	%1204 = mul i32 1, %1203
	%1205 = add i32 %1200, %1204
	store i32 %1205, i32* %2
	br label %1206

1206:
	br label %1207

1207:
	%1208 = load i32, i32* %4
	%1209 = sdiv i32 %1208, 2
	store i32 %1209, i32* %4
	%1210 = load i32, i32* %5
	%1211 = sdiv i32 %1210, 2
	store i32 %1211, i32* %5
	%1212 = load i32, i32* %3
	%1213 = add i32 %1212, 1
	store i32 %1213, i32* %3
	br label %1176

1214:
	%1215 = load i32, i32* %2
	store i32 %1215, i32* %45
	store i32 0, i32* %2
	store i32 0, i32* %3
	%1216 = load i32, i32* %43
	store i32 %1216, i32* %4
	%1217 = load i32, i32* %44
	store i32 %1217, i32* %5
	br label %1218

1218:
	%1219 = load i32, i32* %3
	%1220 = icmp slt i32 %1219, 16
	br i1 %1220, label %1221, label %1243

1221:
	%1222 = load i32, i32* %4
	%1223 = srem i32 %1222, 2
	%1224 = icmp ne i32 %1223, 0
	br i1 %1224, label %1225, label %1236

1225:
	%1226 = load i32, i32* %5
	%1227 = srem i32 %1226, 2
	%1228 = icmp ne i32 %1227, 0
	br i1 %1228, label %1229, label %1236

1229:
	%1230 = load i32, i32* %2
	%1231 = load i32, i32* %3
	%1232 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %1231
	%1233 = load i32, i32* %1232
	%1234 = mul i32 1, %1233
	%1235 = add i32 %1230, %1234
	store i32 %1235, i32* %2
	br label %1236

1236:
	%1237 = load i32, i32* %4
	%1238 = sdiv i32 %1237, 2
	store i32 %1238, i32* %4
	%1239 = load i32, i32* %5
	%1240 = sdiv i32 %1239, 2
	store i32 %1240, i32* %5
	%1241 = load i32, i32* %3
	%1242 = add i32 %1241, 1
	store i32 %1242, i32* %3
	br label %1218

1243:
	%1244 = load i32, i32* %2
	store i32 %1244, i32* %44
	%1245 = icmp sgt i32 1, 15
	br i1 %1245, label %1246, label %1247

1246:
	store i32 0, i32* %2
	br label %1276

1247:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%1248 = load i32, i32* %44
	%1249 = mul i32 %1248, 2
	store i32 %1249, i32* %4
	store i32 65535, i32* %5
	br label %1250

1250:
	%1251 = load i32, i32* %3
	%1252 = icmp slt i32 %1251, 16
	br i1 %1252, label %1253, label %1275

1253:
	%1254 = load i32, i32* %4
	%1255 = srem i32 %1254, 2
	%1256 = icmp ne i32 %1255, 0
	br i1 %1256, label %1257, label %1268

1257:
	%1258 = load i32, i32* %5
	%1259 = srem i32 %1258, 2
	%1260 = icmp ne i32 %1259, 0
	br i1 %1260, label %1261, label %1268

1261:
	%1262 = load i32, i32* %2
	%1263 = load i32, i32* %3
	%1264 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %1263
	%1265 = load i32, i32* %1264
	%1266 = mul i32 1, %1265
	%1267 = add i32 %1262, %1266
	store i32 %1267, i32* %2
	br label %1268

1268:
	%1269 = load i32, i32* %4
	%1270 = sdiv i32 %1269, 2
	store i32 %1270, i32* %4
	%1271 = load i32, i32* %5
	%1272 = sdiv i32 %1271, 2
	store i32 %1272, i32* %5
	%1273 = load i32, i32* %3
	%1274 = add i32 %1273, 1
	store i32 %1274, i32* %3
	br label %1250

1275:
	br label %1276

1276:
	%1277 = load i32, i32* %2
	store i32 %1277, i32* %44
	%1278 = load i32, i32* %45
	store i32 %1278, i32* %43
	br label %1170

1279:
	%1280 = load i32, i32* %43
	store i32 %1280, i32* %2
	%1281 = load i32, i32* %2
	store i32 %1281, i32* %42
	br label %1282

1282:
	%1283 = load i32, i32* %40
	store i32 %1283, i32* %46
	%1284 = load i32, i32* %40
	store i32 %1284, i32* %47
	br label %1285

1285:
	%1286 = load i32, i32* %47
	%1287 = icmp ne i32 %1286, 0
	br i1 %1287, label %1288, label %1394

1288:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%1289 = load i32, i32* %46
	store i32 %1289, i32* %4
	%1290 = load i32, i32* %47
	store i32 %1290, i32* %5
	br label %1291

1291:
	%1292 = load i32, i32* %3
	%1293 = icmp slt i32 %1292, 16
	br i1 %1293, label %1294, label %1329

1294:
	%1295 = load i32, i32* %4
	%1296 = srem i32 %1295, 2
	%1297 = icmp ne i32 %1296, 0
	br i1 %1297, label %1298, label %1310

1298:
	%1299 = load i32, i32* %5
	%1300 = srem i32 %1299, 2
	%1301 = icmp eq i32 %1300, 0
	br i1 %1301, label %1302, label %1309

1302:
	%1303 = load i32, i32* %2
	%1304 = load i32, i32* %3
	%1305 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %1304
	%1306 = load i32, i32* %1305
	%1307 = mul i32 1, %1306
	%1308 = add i32 %1303, %1307
	store i32 %1308, i32* %2
	br label %1309

1309:
	br label %1322

1310:
	%1311 = load i32, i32* %5
	%1312 = srem i32 %1311, 2
	%1313 = icmp ne i32 %1312, 0
	br i1 %1313, label %1314, label %1321

1314:
	%1315 = load i32, i32* %2
	%1316 = load i32, i32* %3
	%1317 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %1316
	%1318 = load i32, i32* %1317
	%1319 = mul i32 1, %1318
	%1320 = add i32 %1315, %1319
	store i32 %1320, i32* %2
	br label %1321

1321:
	br label %1322

1322:
	%1323 = load i32, i32* %4
	%1324 = sdiv i32 %1323, 2
	store i32 %1324, i32* %4
	%1325 = load i32, i32* %5
	%1326 = sdiv i32 %1325, 2
	store i32 %1326, i32* %5
	%1327 = load i32, i32* %3
	%1328 = add i32 %1327, 1
	store i32 %1328, i32* %3
	br label %1291

1329:
	%1330 = load i32, i32* %2
	store i32 %1330, i32* %48
	store i32 0, i32* %2
	store i32 0, i32* %3
	%1331 = load i32, i32* %46
	store i32 %1331, i32* %4
	%1332 = load i32, i32* %47
	store i32 %1332, i32* %5
	br label %1333

1333:
	%1334 = load i32, i32* %3
	%1335 = icmp slt i32 %1334, 16
	br i1 %1335, label %1336, label %1358

1336:
	%1337 = load i32, i32* %4
	%1338 = srem i32 %1337, 2
	%1339 = icmp ne i32 %1338, 0
	br i1 %1339, label %1340, label %1351

1340:
	%1341 = load i32, i32* %5
	%1342 = srem i32 %1341, 2
	%1343 = icmp ne i32 %1342, 0
	br i1 %1343, label %1344, label %1351

1344:
	%1345 = load i32, i32* %2
	%1346 = load i32, i32* %3
	%1347 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %1346
	%1348 = load i32, i32* %1347
	%1349 = mul i32 1, %1348
	%1350 = add i32 %1345, %1349
	store i32 %1350, i32* %2
	br label %1351

1351:
	%1352 = load i32, i32* %4
	%1353 = sdiv i32 %1352, 2
	store i32 %1353, i32* %4
	%1354 = load i32, i32* %5
	%1355 = sdiv i32 %1354, 2
	store i32 %1355, i32* %5
	%1356 = load i32, i32* %3
	%1357 = add i32 %1356, 1
	store i32 %1357, i32* %3
	br label %1333

1358:
	%1359 = load i32, i32* %2
	store i32 %1359, i32* %47
	%1360 = icmp sgt i32 1, 15
	br i1 %1360, label %1361, label %1362

1361:
	store i32 0, i32* %2
	br label %1391

1362:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%1363 = load i32, i32* %47
	%1364 = mul i32 %1363, 2
	store i32 %1364, i32* %4
	store i32 65535, i32* %5
	br label %1365

1365:
	%1366 = load i32, i32* %3
	%1367 = icmp slt i32 %1366, 16
	br i1 %1367, label %1368, label %1390

1368:
	%1369 = load i32, i32* %4
	%1370 = srem i32 %1369, 2
	%1371 = icmp ne i32 %1370, 0
	br i1 %1371, label %1372, label %1383

1372:
	%1373 = load i32, i32* %5
	%1374 = srem i32 %1373, 2
	%1375 = icmp ne i32 %1374, 0
	br i1 %1375, label %1376, label %1383

1376:
	%1377 = load i32, i32* %2
	%1378 = load i32, i32* %3
	%1379 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %1378
	%1380 = load i32, i32* %1379
	%1381 = mul i32 1, %1380
	%1382 = add i32 %1377, %1381
	store i32 %1382, i32* %2
	br label %1383

1383:
	%1384 = load i32, i32* %4
	%1385 = sdiv i32 %1384, 2
	store i32 %1385, i32* %4
	%1386 = load i32, i32* %5
	%1387 = sdiv i32 %1386, 2
	store i32 %1387, i32* %5
	%1388 = load i32, i32* %3
	%1389 = add i32 %1388, 1
	store i32 %1389, i32* %3
	br label %1365

1390:
	br label %1391

1391:
	%1392 = load i32, i32* %2
	store i32 %1392, i32* %47
	%1393 = load i32, i32* %48
	store i32 %1393, i32* %46
	br label %1285

1394:
	%1395 = load i32, i32* %46
	store i32 %1395, i32* %2
	%1396 = load i32, i32* %2
	store i32 %1396, i32* %40
	%1397 = load i32, i32* %41
	store i32 %1397, i32* %4
	store i32 1, i32* %5
	%1398 = load i32, i32* %5
	%1399 = icmp sge i32 %1398, 15
	br i1 %1399, label %1400, label %1406

1400:
	%1401 = load i32, i32* %4
	%1402 = icmp slt i32 %1401, 0
	br i1 %1402, label %1403, label %1404

1403:
	store i32 65535, i32* %2
	br label %1405

1404:
	store i32 0, i32* %2
	br label %1405

1405:
	br label %1436

1406:
	%1407 = load i32, i32* %5
	%1408 = icmp sgt i32 %1407, 0
	br i1 %1408, label %1409, label %1433

1409:
	%1410 = load i32, i32* %4
	%1411 = icmp sgt i32 %1410, 32767
	br i1 %1411, label %1412, label %1426

1412:
	%1413 = load i32, i32* %4
	%1414 = load i32, i32* %5
	%1415 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %1414
	%1416 = load i32, i32* %1415
	%1417 = sdiv i32 %1413, %1416
	store i32 %1417, i32* %4
	%1418 = load i32, i32* %4
	%1419 = add i32 %1418, 65536
	%1420 = load i32, i32* %5
	%1421 = sub i32 15, %1420
	%1422 = add i32 %1421, 1
	%1423 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %1422
	%1424 = load i32, i32* %1423
	%1425 = sub i32 %1419, %1424
	store i32 %1425, i32* %2
	br label %1432

1426:
	%1427 = load i32, i32* %4
	%1428 = load i32, i32* %5
	%1429 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %1428
	%1430 = load i32, i32* %1429
	%1431 = sdiv i32 %1427, %1430
	store i32 %1431, i32* %2
	br label %1432

1432:
	br label %1435

1433:
	%1434 = load i32, i32* %4
	store i32 %1434, i32* %2
	br label %1435

1435:
	br label %1436

1436:
	%1437 = load i32, i32* %2
	store i32 %1437, i32* %41
	br label %1134

1438:
	%1439 = load i32, i32* %42
	store i32 %1439, i32* %2
	%1440 = load i32, i32* %2
	store i32 %1440, i32* %28
	%1441 = load i32, i32* %29
	store i32 %1441, i32* %4
	store i32 1, i32* %5
	%1442 = load i32, i32* %5
	%1443 = icmp sge i32 %1442, 15
	br i1 %1443, label %1444, label %1450

1444:
	%1445 = load i32, i32* %4
	%1446 = icmp slt i32 %1445, 0
	br i1 %1446, label %1447, label %1448

1447:
	store i32 65535, i32* %2
	br label %1449

1448:
	store i32 0, i32* %2
	br label %1449

1449:
	br label %1480

1450:
	%1451 = load i32, i32* %5
	%1452 = icmp sgt i32 %1451, 0
	br i1 %1452, label %1453, label %1477

1453:
	%1454 = load i32, i32* %4
	%1455 = icmp sgt i32 %1454, 32767
	br i1 %1455, label %1456, label %1470

1456:
	%1457 = load i32, i32* %4
	%1458 = load i32, i32* %5
	%1459 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %1458
	%1460 = load i32, i32* %1459
	%1461 = sdiv i32 %1457, %1460
	store i32 %1461, i32* %4
	%1462 = load i32, i32* %4
	%1463 = add i32 %1462, 65536
	%1464 = load i32, i32* %5
	%1465 = sub i32 15, %1464
	%1466 = add i32 %1465, 1
	%1467 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %1466
	%1468 = load i32, i32* %1467
	%1469 = sub i32 %1463, %1468
	store i32 %1469, i32* %2
	br label %1476

1470:
	%1471 = load i32, i32* %4
	%1472 = load i32, i32* %5
	%1473 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %1472
	%1474 = load i32, i32* %1473
	%1475 = sdiv i32 %1471, %1474
	store i32 %1475, i32* %2
	br label %1476

1476:
	br label %1479

1477:
	%1478 = load i32, i32* %4
	store i32 %1478, i32* %2
	br label %1479

1479:
	br label %1480

1480:
	%1481 = load i32, i32* %2
	store i32 %1481, i32* %29
	br label %788

1482:
	%1483 = load i32, i32* %30
	store i32 %1483, i32* %2
	%1484 = load i32, i32* %2
	call void @putint(i32 %1484)
	call void @putch(i32 10)
	store i32 2, i32* %6
	br label %1485

1485:
	%1486 = load i32, i32* %6
	%1487 = icmp slt i32 %1486, 16
	br i1 %1487, label %1488, label %2189

1488:
	store i32 2, i32* %49
	%1489 = load i32, i32* %6
	store i32 %1489, i32* %50
	store i32 1, i32* %51
	br label %1490

1490:
	%1491 = load i32, i32* %50
	%1492 = icmp sgt i32 %1491, 0
	br i1 %1492, label %1493, label %2184

1493:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%1494 = load i32, i32* %50
	store i32 %1494, i32* %4
	store i32 1, i32* %5
	br label %1495

1495:
	%1496 = load i32, i32* %3
	%1497 = icmp slt i32 %1496, 16
	br i1 %1497, label %1498, label %1520

1498:
	%1499 = load i32, i32* %4
	%1500 = srem i32 %1499, 2
	%1501 = icmp ne i32 %1500, 0
	br i1 %1501, label %1502, label %1513

1502:
	%1503 = load i32, i32* %5
	%1504 = srem i32 %1503, 2
	%1505 = icmp ne i32 %1504, 0
	br i1 %1505, label %1506, label %1513

1506:
	%1507 = load i32, i32* %2
	%1508 = load i32, i32* %3
	%1509 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %1508
	%1510 = load i32, i32* %1509
	%1511 = mul i32 1, %1510
	%1512 = add i32 %1507, %1511
	store i32 %1512, i32* %2
	br label %1513

1513:
	%1514 = load i32, i32* %4
	%1515 = sdiv i32 %1514, 2
	store i32 %1515, i32* %4
	%1516 = load i32, i32* %5
	%1517 = sdiv i32 %1516, 2
	store i32 %1517, i32* %5
	%1518 = load i32, i32* %3
	%1519 = add i32 %1518, 1
	store i32 %1519, i32* %3
	br label %1495

1520:
	%1521 = load i32, i32* %2
	%1522 = icmp ne i32 %1521, 0
	br i1 %1522, label %1523, label %1833

1523:
	%1524 = load i32, i32* %51
	store i32 %1524, i32* %52
	%1525 = load i32, i32* %49
	store i32 %1525, i32* %53
	store i32 0, i32* %54
	br label %1526

1526:
	%1527 = load i32, i32* %53
	%1528 = icmp ne i32 %1527, 0
	br i1 %1528, label %1529, label %1830

1529:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%1530 = load i32, i32* %53
	store i32 %1530, i32* %4
	store i32 1, i32* %5
	br label %1531

1531:
	%1532 = load i32, i32* %3
	%1533 = icmp slt i32 %1532, 16
	br i1 %1533, label %1534, label %1556

1534:
	%1535 = load i32, i32* %4
	%1536 = srem i32 %1535, 2
	%1537 = icmp ne i32 %1536, 0
	br i1 %1537, label %1538, label %1549

1538:
	%1539 = load i32, i32* %5
	%1540 = srem i32 %1539, 2
	%1541 = icmp ne i32 %1540, 0
	br i1 %1541, label %1542, label %1549

1542:
	%1543 = load i32, i32* %2
	%1544 = load i32, i32* %3
	%1545 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %1544
	%1546 = load i32, i32* %1545
	%1547 = mul i32 1, %1546
	%1548 = add i32 %1543, %1547
	store i32 %1548, i32* %2
	br label %1549

1549:
	%1550 = load i32, i32* %4
	%1551 = sdiv i32 %1550, 2
	store i32 %1551, i32* %4
	%1552 = load i32, i32* %5
	%1553 = sdiv i32 %1552, 2
	store i32 %1553, i32* %5
	%1554 = load i32, i32* %3
	%1555 = add i32 %1554, 1
	store i32 %1555, i32* %3
	br label %1531

1556:
	%1557 = load i32, i32* %2
	%1558 = icmp ne i32 %1557, 0
	br i1 %1558, label %1559, label %1674

1559:
	%1560 = load i32, i32* %54
	store i32 %1560, i32* %55
	%1561 = load i32, i32* %52
	store i32 %1561, i32* %56
	br label %1562

1562:
	%1563 = load i32, i32* %56
	%1564 = icmp ne i32 %1563, 0
	br i1 %1564, label %1565, label %1671

1565:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%1566 = load i32, i32* %55
	store i32 %1566, i32* %4
	%1567 = load i32, i32* %56
	store i32 %1567, i32* %5
	br label %1568

1568:
	%1569 = load i32, i32* %3
	%1570 = icmp slt i32 %1569, 16
	br i1 %1570, label %1571, label %1606

1571:
	%1572 = load i32, i32* %4
	%1573 = srem i32 %1572, 2
	%1574 = icmp ne i32 %1573, 0
	br i1 %1574, label %1575, label %1587

1575:
	%1576 = load i32, i32* %5
	%1577 = srem i32 %1576, 2
	%1578 = icmp eq i32 %1577, 0
	br i1 %1578, label %1579, label %1586

1579:
	%1580 = load i32, i32* %2
	%1581 = load i32, i32* %3
	%1582 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %1581
	%1583 = load i32, i32* %1582
	%1584 = mul i32 1, %1583
	%1585 = add i32 %1580, %1584
	store i32 %1585, i32* %2
	br label %1586

1586:
	br label %1599

1587:
	%1588 = load i32, i32* %5
	%1589 = srem i32 %1588, 2
	%1590 = icmp ne i32 %1589, 0
	br i1 %1590, label %1591, label %1598

1591:
	%1592 = load i32, i32* %2
	%1593 = load i32, i32* %3
	%1594 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %1593
	%1595 = load i32, i32* %1594
	%1596 = mul i32 1, %1595
	%1597 = add i32 %1592, %1596
	store i32 %1597, i32* %2
	br label %1598

1598:
	br label %1599

1599:
	%1600 = load i32, i32* %4
	%1601 = sdiv i32 %1600, 2
	store i32 %1601, i32* %4
	%1602 = load i32, i32* %5
	%1603 = sdiv i32 %1602, 2
	store i32 %1603, i32* %5
	%1604 = load i32, i32* %3
	%1605 = add i32 %1604, 1
	store i32 %1605, i32* %3
	br label %1568

1606:
	%1607 = load i32, i32* %2
	store i32 %1607, i32* %57
	store i32 0, i32* %2
	store i32 0, i32* %3
	%1608 = load i32, i32* %55
	store i32 %1608, i32* %4
	%1609 = load i32, i32* %56
	store i32 %1609, i32* %5
	br label %1610

1610:
	%1611 = load i32, i32* %3
	%1612 = icmp slt i32 %1611, 16
	br i1 %1612, label %1613, label %1635

1613:
	%1614 = load i32, i32* %4
	%1615 = srem i32 %1614, 2
	%1616 = icmp ne i32 %1615, 0
	br i1 %1616, label %1617, label %1628

1617:
	%1618 = load i32, i32* %5
	%1619 = srem i32 %1618, 2
	%1620 = icmp ne i32 %1619, 0
	br i1 %1620, label %1621, label %1628

1621:
	%1622 = load i32, i32* %2
	%1623 = load i32, i32* %3
	%1624 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %1623
	%1625 = load i32, i32* %1624
	%1626 = mul i32 1, %1625
	%1627 = add i32 %1622, %1626
	store i32 %1627, i32* %2
	br label %1628

1628:
	%1629 = load i32, i32* %4
	%1630 = sdiv i32 %1629, 2
	store i32 %1630, i32* %4
	%1631 = load i32, i32* %5
	%1632 = sdiv i32 %1631, 2
	store i32 %1632, i32* %5
	%1633 = load i32, i32* %3
	%1634 = add i32 %1633, 1
	store i32 %1634, i32* %3
	br label %1610

1635:
	%1636 = load i32, i32* %2
	store i32 %1636, i32* %56
	%1637 = icmp sgt i32 1, 15
	br i1 %1637, label %1638, label %1639

1638:
	store i32 0, i32* %2
	br label %1668

1639:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%1640 = load i32, i32* %56
	%1641 = mul i32 %1640, 2
	store i32 %1641, i32* %4
	store i32 65535, i32* %5
	br label %1642

1642:
	%1643 = load i32, i32* %3
	%1644 = icmp slt i32 %1643, 16
	br i1 %1644, label %1645, label %1667

1645:
	%1646 = load i32, i32* %4
	%1647 = srem i32 %1646, 2
	%1648 = icmp ne i32 %1647, 0
	br i1 %1648, label %1649, label %1660

1649:
	%1650 = load i32, i32* %5
	%1651 = srem i32 %1650, 2
	%1652 = icmp ne i32 %1651, 0
	br i1 %1652, label %1653, label %1660

1653:
	%1654 = load i32, i32* %2
	%1655 = load i32, i32* %3
	%1656 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %1655
	%1657 = load i32, i32* %1656
	%1658 = mul i32 1, %1657
	%1659 = add i32 %1654, %1658
	store i32 %1659, i32* %2
	br label %1660

1660:
	%1661 = load i32, i32* %4
	%1662 = sdiv i32 %1661, 2
	store i32 %1662, i32* %4
	%1663 = load i32, i32* %5
	%1664 = sdiv i32 %1663, 2
	store i32 %1664, i32* %5
	%1665 = load i32, i32* %3
	%1666 = add i32 %1665, 1
	store i32 %1666, i32* %3
	br label %1642

1667:
	br label %1668

1668:
	%1669 = load i32, i32* %2
	store i32 %1669, i32* %56
	%1670 = load i32, i32* %57
	store i32 %1670, i32* %55
	br label %1562

1671:
	%1672 = load i32, i32* %55
	store i32 %1672, i32* %2
	%1673 = load i32, i32* %2
	store i32 %1673, i32* %54
	br label %1674

1674:
	%1675 = load i32, i32* %52
	store i32 %1675, i32* %58
	%1676 = load i32, i32* %52
	store i32 %1676, i32* %59
	br label %1677

1677:
	%1678 = load i32, i32* %59
	%1679 = icmp ne i32 %1678, 0
	br i1 %1679, label %1680, label %1786

1680:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%1681 = load i32, i32* %58
	store i32 %1681, i32* %4
	%1682 = load i32, i32* %59
	store i32 %1682, i32* %5
	br label %1683

1683:
	%1684 = load i32, i32* %3
	%1685 = icmp slt i32 %1684, 16
	br i1 %1685, label %1686, label %1721

1686:
	%1687 = load i32, i32* %4
	%1688 = srem i32 %1687, 2
	%1689 = icmp ne i32 %1688, 0
	br i1 %1689, label %1690, label %1702

1690:
	%1691 = load i32, i32* %5
	%1692 = srem i32 %1691, 2
	%1693 = icmp eq i32 %1692, 0
	br i1 %1693, label %1694, label %1701

1694:
	%1695 = load i32, i32* %2
	%1696 = load i32, i32* %3
	%1697 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %1696
	%1698 = load i32, i32* %1697
	%1699 = mul i32 1, %1698
	%1700 = add i32 %1695, %1699
	store i32 %1700, i32* %2
	br label %1701

1701:
	br label %1714

1702:
	%1703 = load i32, i32* %5
	%1704 = srem i32 %1703, 2
	%1705 = icmp ne i32 %1704, 0
	br i1 %1705, label %1706, label %1713

1706:
	%1707 = load i32, i32* %2
	%1708 = load i32, i32* %3
	%1709 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %1708
	%1710 = load i32, i32* %1709
	%1711 = mul i32 1, %1710
	%1712 = add i32 %1707, %1711
	store i32 %1712, i32* %2
	br label %1713

1713:
	br label %1714

1714:
	%1715 = load i32, i32* %4
	%1716 = sdiv i32 %1715, 2
	store i32 %1716, i32* %4
	%1717 = load i32, i32* %5
	%1718 = sdiv i32 %1717, 2
	store i32 %1718, i32* %5
	%1719 = load i32, i32* %3
	%1720 = add i32 %1719, 1
	store i32 %1720, i32* %3
	br label %1683

1721:
	%1722 = load i32, i32* %2
	store i32 %1722, i32* %60
	store i32 0, i32* %2
	store i32 0, i32* %3
	%1723 = load i32, i32* %58
	store i32 %1723, i32* %4
	%1724 = load i32, i32* %59
	store i32 %1724, i32* %5
	br label %1725

1725:
	%1726 = load i32, i32* %3
	%1727 = icmp slt i32 %1726, 16
	br i1 %1727, label %1728, label %1750

1728:
	%1729 = load i32, i32* %4
	%1730 = srem i32 %1729, 2
	%1731 = icmp ne i32 %1730, 0
	br i1 %1731, label %1732, label %1743

1732:
	%1733 = load i32, i32* %5
	%1734 = srem i32 %1733, 2
	%1735 = icmp ne i32 %1734, 0
	br i1 %1735, label %1736, label %1743

1736:
	%1737 = load i32, i32* %2
	%1738 = load i32, i32* %3
	%1739 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %1738
	%1740 = load i32, i32* %1739
	%1741 = mul i32 1, %1740
	%1742 = add i32 %1737, %1741
	store i32 %1742, i32* %2
	br label %1743

1743:
	%1744 = load i32, i32* %4
	%1745 = sdiv i32 %1744, 2
	store i32 %1745, i32* %4
	%1746 = load i32, i32* %5
	%1747 = sdiv i32 %1746, 2
	store i32 %1747, i32* %5
	%1748 = load i32, i32* %3
	%1749 = add i32 %1748, 1
	store i32 %1749, i32* %3
	br label %1725

1750:
	%1751 = load i32, i32* %2
	store i32 %1751, i32* %59
	%1752 = icmp sgt i32 1, 15
	br i1 %1752, label %1753, label %1754

1753:
	store i32 0, i32* %2
	br label %1783

1754:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%1755 = load i32, i32* %59
	%1756 = mul i32 %1755, 2
	store i32 %1756, i32* %4
	store i32 65535, i32* %5
	br label %1757

1757:
	%1758 = load i32, i32* %3
	%1759 = icmp slt i32 %1758, 16
	br i1 %1759, label %1760, label %1782

1760:
	%1761 = load i32, i32* %4
	%1762 = srem i32 %1761, 2
	%1763 = icmp ne i32 %1762, 0
	br i1 %1763, label %1764, label %1775

1764:
	%1765 = load i32, i32* %5
	%1766 = srem i32 %1765, 2
	%1767 = icmp ne i32 %1766, 0
	br i1 %1767, label %1768, label %1775

1768:
	%1769 = load i32, i32* %2
	%1770 = load i32, i32* %3
	%1771 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %1770
	%1772 = load i32, i32* %1771
	%1773 = mul i32 1, %1772
	%1774 = add i32 %1769, %1773
	store i32 %1774, i32* %2
	br label %1775

1775:
	%1776 = load i32, i32* %4
	%1777 = sdiv i32 %1776, 2
	store i32 %1777, i32* %4
	%1778 = load i32, i32* %5
	%1779 = sdiv i32 %1778, 2
	store i32 %1779, i32* %5
	%1780 = load i32, i32* %3
	%1781 = add i32 %1780, 1
	store i32 %1781, i32* %3
	br label %1757

1782:
	br label %1783

1783:
	%1784 = load i32, i32* %2
	store i32 %1784, i32* %59
	%1785 = load i32, i32* %60
	store i32 %1785, i32* %58
	br label %1677

1786:
	%1787 = load i32, i32* %58
	store i32 %1787, i32* %2
	%1788 = load i32, i32* %2
	store i32 %1788, i32* %52
	%1789 = load i32, i32* %53
	store i32 %1789, i32* %4
	store i32 1, i32* %5
	%1790 = load i32, i32* %5
	%1791 = icmp sge i32 %1790, 15
	br i1 %1791, label %1792, label %1798

1792:
	%1793 = load i32, i32* %4
	%1794 = icmp slt i32 %1793, 0
	br i1 %1794, label %1795, label %1796

1795:
	store i32 65535, i32* %2
	br label %1797

1796:
	store i32 0, i32* %2
	br label %1797

1797:
	br label %1828

1798:
	%1799 = load i32, i32* %5
	%1800 = icmp sgt i32 %1799, 0
	br i1 %1800, label %1801, label %1825

1801:
	%1802 = load i32, i32* %4
	%1803 = icmp sgt i32 %1802, 32767
	br i1 %1803, label %1804, label %1818

1804:
	%1805 = load i32, i32* %4
	%1806 = load i32, i32* %5
	%1807 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %1806
	%1808 = load i32, i32* %1807
	%1809 = sdiv i32 %1805, %1808
	store i32 %1809, i32* %4
	%1810 = load i32, i32* %4
	%1811 = add i32 %1810, 65536
	%1812 = load i32, i32* %5
	%1813 = sub i32 15, %1812
	%1814 = add i32 %1813, 1
	%1815 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %1814
	%1816 = load i32, i32* %1815
	%1817 = sub i32 %1811, %1816
	store i32 %1817, i32* %2
	br label %1824

1818:
	%1819 = load i32, i32* %4
	%1820 = load i32, i32* %5
	%1821 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %1820
	%1822 = load i32, i32* %1821
	%1823 = sdiv i32 %1819, %1822
	store i32 %1823, i32* %2
	br label %1824

1824:
	br label %1827

1825:
	%1826 = load i32, i32* %4
	store i32 %1826, i32* %2
	br label %1827

1827:
	br label %1828

1828:
	%1829 = load i32, i32* %2
	store i32 %1829, i32* %53
	br label %1526

1830:
	%1831 = load i32, i32* %54
	store i32 %1831, i32* %2
	%1832 = load i32, i32* %2
	store i32 %1832, i32* %51
	br label %1833

1833:
	%1834 = load i32, i32* %49
	store i32 %1834, i32* %61
	%1835 = load i32, i32* %49
	store i32 %1835, i32* %62
	store i32 0, i32* %63
	br label %1836

1836:
	%1837 = load i32, i32* %62
	%1838 = icmp ne i32 %1837, 0
	br i1 %1838, label %1839, label %2140

1839:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%1840 = load i32, i32* %62
	store i32 %1840, i32* %4
	store i32 1, i32* %5
	br label %1841

1841:
	%1842 = load i32, i32* %3
	%1843 = icmp slt i32 %1842, 16
	br i1 %1843, label %1844, label %1866

1844:
	%1845 = load i32, i32* %4
	%1846 = srem i32 %1845, 2
	%1847 = icmp ne i32 %1846, 0
	br i1 %1847, label %1848, label %1859

1848:
	%1849 = load i32, i32* %5
	%1850 = srem i32 %1849, 2
	%1851 = icmp ne i32 %1850, 0
	br i1 %1851, label %1852, label %1859

1852:
	%1853 = load i32, i32* %2
	%1854 = load i32, i32* %3
	%1855 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %1854
	%1856 = load i32, i32* %1855
	%1857 = mul i32 1, %1856
	%1858 = add i32 %1853, %1857
	store i32 %1858, i32* %2
	br label %1859

1859:
	%1860 = load i32, i32* %4
	%1861 = sdiv i32 %1860, 2
	store i32 %1861, i32* %4
	%1862 = load i32, i32* %5
	%1863 = sdiv i32 %1862, 2
	store i32 %1863, i32* %5
	%1864 = load i32, i32* %3
	%1865 = add i32 %1864, 1
	store i32 %1865, i32* %3
	br label %1841

1866:
	%1867 = load i32, i32* %2
	%1868 = icmp ne i32 %1867, 0
	br i1 %1868, label %1869, label %1984

1869:
	%1870 = load i32, i32* %63
	store i32 %1870, i32* %64
	%1871 = load i32, i32* %61
	store i32 %1871, i32* %65
	br label %1872

1872:
	%1873 = load i32, i32* %65
	%1874 = icmp ne i32 %1873, 0
	br i1 %1874, label %1875, label %1981

1875:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%1876 = load i32, i32* %64
	store i32 %1876, i32* %4
	%1877 = load i32, i32* %65
	store i32 %1877, i32* %5
	br label %1878

1878:
	%1879 = load i32, i32* %3
	%1880 = icmp slt i32 %1879, 16
	br i1 %1880, label %1881, label %1916

1881:
	%1882 = load i32, i32* %4
	%1883 = srem i32 %1882, 2
	%1884 = icmp ne i32 %1883, 0
	br i1 %1884, label %1885, label %1897

1885:
	%1886 = load i32, i32* %5
	%1887 = srem i32 %1886, 2
	%1888 = icmp eq i32 %1887, 0
	br i1 %1888, label %1889, label %1896

1889:
	%1890 = load i32, i32* %2
	%1891 = load i32, i32* %3
	%1892 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %1891
	%1893 = load i32, i32* %1892
	%1894 = mul i32 1, %1893
	%1895 = add i32 %1890, %1894
	store i32 %1895, i32* %2
	br label %1896

1896:
	br label %1909

1897:
	%1898 = load i32, i32* %5
	%1899 = srem i32 %1898, 2
	%1900 = icmp ne i32 %1899, 0
	br i1 %1900, label %1901, label %1908

1901:
	%1902 = load i32, i32* %2
	%1903 = load i32, i32* %3
	%1904 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %1903
	%1905 = load i32, i32* %1904
	%1906 = mul i32 1, %1905
	%1907 = add i32 %1902, %1906
	store i32 %1907, i32* %2
	br label %1908

1908:
	br label %1909

1909:
	%1910 = load i32, i32* %4
	%1911 = sdiv i32 %1910, 2
	store i32 %1911, i32* %4
	%1912 = load i32, i32* %5
	%1913 = sdiv i32 %1912, 2
	store i32 %1913, i32* %5
	%1914 = load i32, i32* %3
	%1915 = add i32 %1914, 1
	store i32 %1915, i32* %3
	br label %1878

1916:
	%1917 = load i32, i32* %2
	store i32 %1917, i32* %66
	store i32 0, i32* %2
	store i32 0, i32* %3
	%1918 = load i32, i32* %64
	store i32 %1918, i32* %4
	%1919 = load i32, i32* %65
	store i32 %1919, i32* %5
	br label %1920

1920:
	%1921 = load i32, i32* %3
	%1922 = icmp slt i32 %1921, 16
	br i1 %1922, label %1923, label %1945

1923:
	%1924 = load i32, i32* %4
	%1925 = srem i32 %1924, 2
	%1926 = icmp ne i32 %1925, 0
	br i1 %1926, label %1927, label %1938

1927:
	%1928 = load i32, i32* %5
	%1929 = srem i32 %1928, 2
	%1930 = icmp ne i32 %1929, 0
	br i1 %1930, label %1931, label %1938

1931:
	%1932 = load i32, i32* %2
	%1933 = load i32, i32* %3
	%1934 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %1933
	%1935 = load i32, i32* %1934
	%1936 = mul i32 1, %1935
	%1937 = add i32 %1932, %1936
	store i32 %1937, i32* %2
	br label %1938

1938:
	%1939 = load i32, i32* %4
	%1940 = sdiv i32 %1939, 2
	store i32 %1940, i32* %4
	%1941 = load i32, i32* %5
	%1942 = sdiv i32 %1941, 2
	store i32 %1942, i32* %5
	%1943 = load i32, i32* %3
	%1944 = add i32 %1943, 1
	store i32 %1944, i32* %3
	br label %1920

1945:
	%1946 = load i32, i32* %2
	store i32 %1946, i32* %65
	%1947 = icmp sgt i32 1, 15
	br i1 %1947, label %1948, label %1949

1948:
	store i32 0, i32* %2
	br label %1978

1949:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%1950 = load i32, i32* %65
	%1951 = mul i32 %1950, 2
	store i32 %1951, i32* %4
	store i32 65535, i32* %5
	br label %1952

1952:
	%1953 = load i32, i32* %3
	%1954 = icmp slt i32 %1953, 16
	br i1 %1954, label %1955, label %1977

1955:
	%1956 = load i32, i32* %4
	%1957 = srem i32 %1956, 2
	%1958 = icmp ne i32 %1957, 0
	br i1 %1958, label %1959, label %1970

1959:
	%1960 = load i32, i32* %5
	%1961 = srem i32 %1960, 2
	%1962 = icmp ne i32 %1961, 0
	br i1 %1962, label %1963, label %1970

1963:
	%1964 = load i32, i32* %2
	%1965 = load i32, i32* %3
	%1966 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %1965
	%1967 = load i32, i32* %1966
	%1968 = mul i32 1, %1967
	%1969 = add i32 %1964, %1968
	store i32 %1969, i32* %2
	br label %1970

1970:
	%1971 = load i32, i32* %4
	%1972 = sdiv i32 %1971, 2
	store i32 %1972, i32* %4
	%1973 = load i32, i32* %5
	%1974 = sdiv i32 %1973, 2
	store i32 %1974, i32* %5
	%1975 = load i32, i32* %3
	%1976 = add i32 %1975, 1
	store i32 %1976, i32* %3
	br label %1952

1977:
	br label %1978

1978:
	%1979 = load i32, i32* %2
	store i32 %1979, i32* %65
	%1980 = load i32, i32* %66
	store i32 %1980, i32* %64
	br label %1872

1981:
	%1982 = load i32, i32* %64
	store i32 %1982, i32* %2
	%1983 = load i32, i32* %2
	store i32 %1983, i32* %63
	br label %1984

1984:
	%1985 = load i32, i32* %61
	store i32 %1985, i32* %67
	%1986 = load i32, i32* %61
	store i32 %1986, i32* %68
	br label %1987

1987:
	%1988 = load i32, i32* %68
	%1989 = icmp ne i32 %1988, 0
	br i1 %1989, label %1990, label %2096

1990:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%1991 = load i32, i32* %67
	store i32 %1991, i32* %4
	%1992 = load i32, i32* %68
	store i32 %1992, i32* %5
	br label %1993

1993:
	%1994 = load i32, i32* %3
	%1995 = icmp slt i32 %1994, 16
	br i1 %1995, label %1996, label %2031

1996:
	%1997 = load i32, i32* %4
	%1998 = srem i32 %1997, 2
	%1999 = icmp ne i32 %1998, 0
	br i1 %1999, label %2000, label %2012

2000:
	%2001 = load i32, i32* %5
	%2002 = srem i32 %2001, 2
	%2003 = icmp eq i32 %2002, 0
	br i1 %2003, label %2004, label %2011

2004:
	%2005 = load i32, i32* %2
	%2006 = load i32, i32* %3
	%2007 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %2006
	%2008 = load i32, i32* %2007
	%2009 = mul i32 1, %2008
	%2010 = add i32 %2005, %2009
	store i32 %2010, i32* %2
	br label %2011

2011:
	br label %2024

2012:
	%2013 = load i32, i32* %5
	%2014 = srem i32 %2013, 2
	%2015 = icmp ne i32 %2014, 0
	br i1 %2015, label %2016, label %2023

2016:
	%2017 = load i32, i32* %2
	%2018 = load i32, i32* %3
	%2019 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %2018
	%2020 = load i32, i32* %2019
	%2021 = mul i32 1, %2020
	%2022 = add i32 %2017, %2021
	store i32 %2022, i32* %2
	br label %2023

2023:
	br label %2024

2024:
	%2025 = load i32, i32* %4
	%2026 = sdiv i32 %2025, 2
	store i32 %2026, i32* %4
	%2027 = load i32, i32* %5
	%2028 = sdiv i32 %2027, 2
	store i32 %2028, i32* %5
	%2029 = load i32, i32* %3
	%2030 = add i32 %2029, 1
	store i32 %2030, i32* %3
	br label %1993

2031:
	%2032 = load i32, i32* %2
	store i32 %2032, i32* %69
	store i32 0, i32* %2
	store i32 0, i32* %3
	%2033 = load i32, i32* %67
	store i32 %2033, i32* %4
	%2034 = load i32, i32* %68
	store i32 %2034, i32* %5
	br label %2035

2035:
	%2036 = load i32, i32* %3
	%2037 = icmp slt i32 %2036, 16
	br i1 %2037, label %2038, label %2060

2038:
	%2039 = load i32, i32* %4
	%2040 = srem i32 %2039, 2
	%2041 = icmp ne i32 %2040, 0
	br i1 %2041, label %2042, label %2053

2042:
	%2043 = load i32, i32* %5
	%2044 = srem i32 %2043, 2
	%2045 = icmp ne i32 %2044, 0
	br i1 %2045, label %2046, label %2053

2046:
	%2047 = load i32, i32* %2
	%2048 = load i32, i32* %3
	%2049 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %2048
	%2050 = load i32, i32* %2049
	%2051 = mul i32 1, %2050
	%2052 = add i32 %2047, %2051
	store i32 %2052, i32* %2
	br label %2053

2053:
	%2054 = load i32, i32* %4
	%2055 = sdiv i32 %2054, 2
	store i32 %2055, i32* %4
	%2056 = load i32, i32* %5
	%2057 = sdiv i32 %2056, 2
	store i32 %2057, i32* %5
	%2058 = load i32, i32* %3
	%2059 = add i32 %2058, 1
	store i32 %2059, i32* %3
	br label %2035

2060:
	%2061 = load i32, i32* %2
	store i32 %2061, i32* %68
	%2062 = icmp sgt i32 1, 15
	br i1 %2062, label %2063, label %2064

2063:
	store i32 0, i32* %2
	br label %2093

2064:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%2065 = load i32, i32* %68
	%2066 = mul i32 %2065, 2
	store i32 %2066, i32* %4
	store i32 65535, i32* %5
	br label %2067

2067:
	%2068 = load i32, i32* %3
	%2069 = icmp slt i32 %2068, 16
	br i1 %2069, label %2070, label %2092

2070:
	%2071 = load i32, i32* %4
	%2072 = srem i32 %2071, 2
	%2073 = icmp ne i32 %2072, 0
	br i1 %2073, label %2074, label %2085

2074:
	%2075 = load i32, i32* %5
	%2076 = srem i32 %2075, 2
	%2077 = icmp ne i32 %2076, 0
	br i1 %2077, label %2078, label %2085

2078:
	%2079 = load i32, i32* %2
	%2080 = load i32, i32* %3
	%2081 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %2080
	%2082 = load i32, i32* %2081
	%2083 = mul i32 1, %2082
	%2084 = add i32 %2079, %2083
	store i32 %2084, i32* %2
	br label %2085

2085:
	%2086 = load i32, i32* %4
	%2087 = sdiv i32 %2086, 2
	store i32 %2087, i32* %4
	%2088 = load i32, i32* %5
	%2089 = sdiv i32 %2088, 2
	store i32 %2089, i32* %5
	%2090 = load i32, i32* %3
	%2091 = add i32 %2090, 1
	store i32 %2091, i32* %3
	br label %2067

2092:
	br label %2093

2093:
	%2094 = load i32, i32* %2
	store i32 %2094, i32* %68
	%2095 = load i32, i32* %69
	store i32 %2095, i32* %67
	br label %1987

2096:
	%2097 = load i32, i32* %67
	store i32 %2097, i32* %2
	%2098 = load i32, i32* %2
	store i32 %2098, i32* %61
	%2099 = load i32, i32* %62
	store i32 %2099, i32* %4
	store i32 1, i32* %5
	%2100 = load i32, i32* %5
	%2101 = icmp sge i32 %2100, 15
	br i1 %2101, label %2102, label %2108

2102:
	%2103 = load i32, i32* %4
	%2104 = icmp slt i32 %2103, 0
	br i1 %2104, label %2105, label %2106

2105:
	store i32 65535, i32* %2
	br label %2107

2106:
	store i32 0, i32* %2
	br label %2107

2107:
	br label %2138

2108:
	%2109 = load i32, i32* %5
	%2110 = icmp sgt i32 %2109, 0
	br i1 %2110, label %2111, label %2135

2111:
	%2112 = load i32, i32* %4
	%2113 = icmp sgt i32 %2112, 32767
	br i1 %2113, label %2114, label %2128

2114:
	%2115 = load i32, i32* %4
	%2116 = load i32, i32* %5
	%2117 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %2116
	%2118 = load i32, i32* %2117
	%2119 = sdiv i32 %2115, %2118
	store i32 %2119, i32* %4
	%2120 = load i32, i32* %4
	%2121 = add i32 %2120, 65536
	%2122 = load i32, i32* %5
	%2123 = sub i32 15, %2122
	%2124 = add i32 %2123, 1
	%2125 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %2124
	%2126 = load i32, i32* %2125
	%2127 = sub i32 %2121, %2126
	store i32 %2127, i32* %2
	br label %2134

2128:
	%2129 = load i32, i32* %4
	%2130 = load i32, i32* %5
	%2131 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %2130
	%2132 = load i32, i32* %2131
	%2133 = sdiv i32 %2129, %2132
	store i32 %2133, i32* %2
	br label %2134

2134:
	br label %2137

2135:
	%2136 = load i32, i32* %4
	store i32 %2136, i32* %2
	br label %2137

2137:
	br label %2138

2138:
	%2139 = load i32, i32* %2
	store i32 %2139, i32* %62
	br label %1836

2140:
	%2141 = load i32, i32* %63
	store i32 %2141, i32* %2
	%2142 = load i32, i32* %2
	store i32 %2142, i32* %49
	%2143 = load i32, i32* %50
	store i32 %2143, i32* %4
	store i32 1, i32* %5
	%2144 = load i32, i32* %5
	%2145 = icmp sge i32 %2144, 15
	br i1 %2145, label %2146, label %2152

2146:
	%2147 = load i32, i32* %4
	%2148 = icmp slt i32 %2147, 0
	br i1 %2148, label %2149, label %2150

2149:
	store i32 65535, i32* %2
	br label %2151

2150:
	store i32 0, i32* %2
	br label %2151

2151:
	br label %2182

2152:
	%2153 = load i32, i32* %5
	%2154 = icmp sgt i32 %2153, 0
	br i1 %2154, label %2155, label %2179

2155:
	%2156 = load i32, i32* %4
	%2157 = icmp sgt i32 %2156, 32767
	br i1 %2157, label %2158, label %2172

2158:
	%2159 = load i32, i32* %4
	%2160 = load i32, i32* %5
	%2161 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %2160
	%2162 = load i32, i32* %2161
	%2163 = sdiv i32 %2159, %2162
	store i32 %2163, i32* %4
	%2164 = load i32, i32* %4
	%2165 = add i32 %2164, 65536
	%2166 = load i32, i32* %5
	%2167 = sub i32 15, %2166
	%2168 = add i32 %2167, 1
	%2169 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %2168
	%2170 = load i32, i32* %2169
	%2171 = sub i32 %2165, %2170
	store i32 %2171, i32* %2
	br label %2178

2172:
	%2173 = load i32, i32* %4
	%2174 = load i32, i32* %5
	%2175 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %2174
	%2176 = load i32, i32* %2175
	%2177 = sdiv i32 %2173, %2176
	store i32 %2177, i32* %2
	br label %2178

2178:
	br label %2181

2179:
	%2180 = load i32, i32* %4
	store i32 %2180, i32* %2
	br label %2181

2181:
	br label %2182

2182:
	%2183 = load i32, i32* %2
	store i32 %2183, i32* %50
	br label %1490

2184:
	%2185 = load i32, i32* %51
	store i32 %2185, i32* %2
	%2186 = load i32, i32* %2
	call void @putint(i32 %2186)
	call void @putch(i32 10)
	%2187 = load i32, i32* %6
	%2188 = add i32 %2187, 1
	store i32 %2188, i32* %6
	br label %1485

2189:
	store i32 0, i32* %6
	br label %2190

2190:
	%2191 = load i32, i32* %6
	%2192 = icmp slt i32 %2191, 16
	br i1 %2192, label %2193, label %2900

2193:
	store i32 2, i32* %70
	%2194 = load i32, i32* %6
	store i32 %2194, i32* %71
	store i32 1, i32* %72
	br label %2195

2195:
	%2196 = load i32, i32* %71
	%2197 = icmp sgt i32 %2196, 0
	br i1 %2197, label %2198, label %2889

2198:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%2199 = load i32, i32* %71
	store i32 %2199, i32* %4
	store i32 1, i32* %5
	br label %2200

2200:
	%2201 = load i32, i32* %3
	%2202 = icmp slt i32 %2201, 16
	br i1 %2202, label %2203, label %2225

2203:
	%2204 = load i32, i32* %4
	%2205 = srem i32 %2204, 2
	%2206 = icmp ne i32 %2205, 0
	br i1 %2206, label %2207, label %2218

2207:
	%2208 = load i32, i32* %5
	%2209 = srem i32 %2208, 2
	%2210 = icmp ne i32 %2209, 0
	br i1 %2210, label %2211, label %2218

2211:
	%2212 = load i32, i32* %2
	%2213 = load i32, i32* %3
	%2214 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %2213
	%2215 = load i32, i32* %2214
	%2216 = mul i32 1, %2215
	%2217 = add i32 %2212, %2216
	store i32 %2217, i32* %2
	br label %2218

2218:
	%2219 = load i32, i32* %4
	%2220 = sdiv i32 %2219, 2
	store i32 %2220, i32* %4
	%2221 = load i32, i32* %5
	%2222 = sdiv i32 %2221, 2
	store i32 %2222, i32* %5
	%2223 = load i32, i32* %3
	%2224 = add i32 %2223, 1
	store i32 %2224, i32* %3
	br label %2200

2225:
	%2226 = load i32, i32* %2
	%2227 = icmp ne i32 %2226, 0
	br i1 %2227, label %2228, label %2538

2228:
	%2229 = load i32, i32* %72
	store i32 %2229, i32* %73
	%2230 = load i32, i32* %70
	store i32 %2230, i32* %74
	store i32 0, i32* %75
	br label %2231

2231:
	%2232 = load i32, i32* %74
	%2233 = icmp ne i32 %2232, 0
	br i1 %2233, label %2234, label %2535

2234:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%2235 = load i32, i32* %74
	store i32 %2235, i32* %4
	store i32 1, i32* %5
	br label %2236

2236:
	%2237 = load i32, i32* %3
	%2238 = icmp slt i32 %2237, 16
	br i1 %2238, label %2239, label %2261

2239:
	%2240 = load i32, i32* %4
	%2241 = srem i32 %2240, 2
	%2242 = icmp ne i32 %2241, 0
	br i1 %2242, label %2243, label %2254

2243:
	%2244 = load i32, i32* %5
	%2245 = srem i32 %2244, 2
	%2246 = icmp ne i32 %2245, 0
	br i1 %2246, label %2247, label %2254

2247:
	%2248 = load i32, i32* %2
	%2249 = load i32, i32* %3
	%2250 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %2249
	%2251 = load i32, i32* %2250
	%2252 = mul i32 1, %2251
	%2253 = add i32 %2248, %2252
	store i32 %2253, i32* %2
	br label %2254

2254:
	%2255 = load i32, i32* %4
	%2256 = sdiv i32 %2255, 2
	store i32 %2256, i32* %4
	%2257 = load i32, i32* %5
	%2258 = sdiv i32 %2257, 2
	store i32 %2258, i32* %5
	%2259 = load i32, i32* %3
	%2260 = add i32 %2259, 1
	store i32 %2260, i32* %3
	br label %2236

2261:
	%2262 = load i32, i32* %2
	%2263 = icmp ne i32 %2262, 0
	br i1 %2263, label %2264, label %2379

2264:
	%2265 = load i32, i32* %75
	store i32 %2265, i32* %76
	%2266 = load i32, i32* %73
	store i32 %2266, i32* %77
	br label %2267

2267:
	%2268 = load i32, i32* %77
	%2269 = icmp ne i32 %2268, 0
	br i1 %2269, label %2270, label %2376

2270:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%2271 = load i32, i32* %76
	store i32 %2271, i32* %4
	%2272 = load i32, i32* %77
	store i32 %2272, i32* %5
	br label %2273

2273:
	%2274 = load i32, i32* %3
	%2275 = icmp slt i32 %2274, 16
	br i1 %2275, label %2276, label %2311

2276:
	%2277 = load i32, i32* %4
	%2278 = srem i32 %2277, 2
	%2279 = icmp ne i32 %2278, 0
	br i1 %2279, label %2280, label %2292

2280:
	%2281 = load i32, i32* %5
	%2282 = srem i32 %2281, 2
	%2283 = icmp eq i32 %2282, 0
	br i1 %2283, label %2284, label %2291

2284:
	%2285 = load i32, i32* %2
	%2286 = load i32, i32* %3
	%2287 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %2286
	%2288 = load i32, i32* %2287
	%2289 = mul i32 1, %2288
	%2290 = add i32 %2285, %2289
	store i32 %2290, i32* %2
	br label %2291

2291:
	br label %2304

2292:
	%2293 = load i32, i32* %5
	%2294 = srem i32 %2293, 2
	%2295 = icmp ne i32 %2294, 0
	br i1 %2295, label %2296, label %2303

2296:
	%2297 = load i32, i32* %2
	%2298 = load i32, i32* %3
	%2299 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %2298
	%2300 = load i32, i32* %2299
	%2301 = mul i32 1, %2300
	%2302 = add i32 %2297, %2301
	store i32 %2302, i32* %2
	br label %2303

2303:
	br label %2304

2304:
	%2305 = load i32, i32* %4
	%2306 = sdiv i32 %2305, 2
	store i32 %2306, i32* %4
	%2307 = load i32, i32* %5
	%2308 = sdiv i32 %2307, 2
	store i32 %2308, i32* %5
	%2309 = load i32, i32* %3
	%2310 = add i32 %2309, 1
	store i32 %2310, i32* %3
	br label %2273

2311:
	%2312 = load i32, i32* %2
	store i32 %2312, i32* %78
	store i32 0, i32* %2
	store i32 0, i32* %3
	%2313 = load i32, i32* %76
	store i32 %2313, i32* %4
	%2314 = load i32, i32* %77
	store i32 %2314, i32* %5
	br label %2315

2315:
	%2316 = load i32, i32* %3
	%2317 = icmp slt i32 %2316, 16
	br i1 %2317, label %2318, label %2340

2318:
	%2319 = load i32, i32* %4
	%2320 = srem i32 %2319, 2
	%2321 = icmp ne i32 %2320, 0
	br i1 %2321, label %2322, label %2333

2322:
	%2323 = load i32, i32* %5
	%2324 = srem i32 %2323, 2
	%2325 = icmp ne i32 %2324, 0
	br i1 %2325, label %2326, label %2333

2326:
	%2327 = load i32, i32* %2
	%2328 = load i32, i32* %3
	%2329 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %2328
	%2330 = load i32, i32* %2329
	%2331 = mul i32 1, %2330
	%2332 = add i32 %2327, %2331
	store i32 %2332, i32* %2
	br label %2333

2333:
	%2334 = load i32, i32* %4
	%2335 = sdiv i32 %2334, 2
	store i32 %2335, i32* %4
	%2336 = load i32, i32* %5
	%2337 = sdiv i32 %2336, 2
	store i32 %2337, i32* %5
	%2338 = load i32, i32* %3
	%2339 = add i32 %2338, 1
	store i32 %2339, i32* %3
	br label %2315

2340:
	%2341 = load i32, i32* %2
	store i32 %2341, i32* %77
	%2342 = icmp sgt i32 1, 15
	br i1 %2342, label %2343, label %2344

2343:
	store i32 0, i32* %2
	br label %2373

2344:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%2345 = load i32, i32* %77
	%2346 = mul i32 %2345, 2
	store i32 %2346, i32* %4
	store i32 65535, i32* %5
	br label %2347

2347:
	%2348 = load i32, i32* %3
	%2349 = icmp slt i32 %2348, 16
	br i1 %2349, label %2350, label %2372

2350:
	%2351 = load i32, i32* %4
	%2352 = srem i32 %2351, 2
	%2353 = icmp ne i32 %2352, 0
	br i1 %2353, label %2354, label %2365

2354:
	%2355 = load i32, i32* %5
	%2356 = srem i32 %2355, 2
	%2357 = icmp ne i32 %2356, 0
	br i1 %2357, label %2358, label %2365

2358:
	%2359 = load i32, i32* %2
	%2360 = load i32, i32* %3
	%2361 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %2360
	%2362 = load i32, i32* %2361
	%2363 = mul i32 1, %2362
	%2364 = add i32 %2359, %2363
	store i32 %2364, i32* %2
	br label %2365

2365:
	%2366 = load i32, i32* %4
	%2367 = sdiv i32 %2366, 2
	store i32 %2367, i32* %4
	%2368 = load i32, i32* %5
	%2369 = sdiv i32 %2368, 2
	store i32 %2369, i32* %5
	%2370 = load i32, i32* %3
	%2371 = add i32 %2370, 1
	store i32 %2371, i32* %3
	br label %2347

2372:
	br label %2373

2373:
	%2374 = load i32, i32* %2
	store i32 %2374, i32* %77
	%2375 = load i32, i32* %78
	store i32 %2375, i32* %76
	br label %2267

2376:
	%2377 = load i32, i32* %76
	store i32 %2377, i32* %2
	%2378 = load i32, i32* %2
	store i32 %2378, i32* %75
	br label %2379

2379:
	%2380 = load i32, i32* %73
	store i32 %2380, i32* %79
	%2381 = load i32, i32* %73
	store i32 %2381, i32* %80
	br label %2382

2382:
	%2383 = load i32, i32* %80
	%2384 = icmp ne i32 %2383, 0
	br i1 %2384, label %2385, label %2491

2385:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%2386 = load i32, i32* %79
	store i32 %2386, i32* %4
	%2387 = load i32, i32* %80
	store i32 %2387, i32* %5
	br label %2388

2388:
	%2389 = load i32, i32* %3
	%2390 = icmp slt i32 %2389, 16
	br i1 %2390, label %2391, label %2426

2391:
	%2392 = load i32, i32* %4
	%2393 = srem i32 %2392, 2
	%2394 = icmp ne i32 %2393, 0
	br i1 %2394, label %2395, label %2407

2395:
	%2396 = load i32, i32* %5
	%2397 = srem i32 %2396, 2
	%2398 = icmp eq i32 %2397, 0
	br i1 %2398, label %2399, label %2406

2399:
	%2400 = load i32, i32* %2
	%2401 = load i32, i32* %3
	%2402 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %2401
	%2403 = load i32, i32* %2402
	%2404 = mul i32 1, %2403
	%2405 = add i32 %2400, %2404
	store i32 %2405, i32* %2
	br label %2406

2406:
	br label %2419

2407:
	%2408 = load i32, i32* %5
	%2409 = srem i32 %2408, 2
	%2410 = icmp ne i32 %2409, 0
	br i1 %2410, label %2411, label %2418

2411:
	%2412 = load i32, i32* %2
	%2413 = load i32, i32* %3
	%2414 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %2413
	%2415 = load i32, i32* %2414
	%2416 = mul i32 1, %2415
	%2417 = add i32 %2412, %2416
	store i32 %2417, i32* %2
	br label %2418

2418:
	br label %2419

2419:
	%2420 = load i32, i32* %4
	%2421 = sdiv i32 %2420, 2
	store i32 %2421, i32* %4
	%2422 = load i32, i32* %5
	%2423 = sdiv i32 %2422, 2
	store i32 %2423, i32* %5
	%2424 = load i32, i32* %3
	%2425 = add i32 %2424, 1
	store i32 %2425, i32* %3
	br label %2388

2426:
	%2427 = load i32, i32* %2
	store i32 %2427, i32* %81
	store i32 0, i32* %2
	store i32 0, i32* %3
	%2428 = load i32, i32* %79
	store i32 %2428, i32* %4
	%2429 = load i32, i32* %80
	store i32 %2429, i32* %5
	br label %2430

2430:
	%2431 = load i32, i32* %3
	%2432 = icmp slt i32 %2431, 16
	br i1 %2432, label %2433, label %2455

2433:
	%2434 = load i32, i32* %4
	%2435 = srem i32 %2434, 2
	%2436 = icmp ne i32 %2435, 0
	br i1 %2436, label %2437, label %2448

2437:
	%2438 = load i32, i32* %5
	%2439 = srem i32 %2438, 2
	%2440 = icmp ne i32 %2439, 0
	br i1 %2440, label %2441, label %2448

2441:
	%2442 = load i32, i32* %2
	%2443 = load i32, i32* %3
	%2444 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %2443
	%2445 = load i32, i32* %2444
	%2446 = mul i32 1, %2445
	%2447 = add i32 %2442, %2446
	store i32 %2447, i32* %2
	br label %2448

2448:
	%2449 = load i32, i32* %4
	%2450 = sdiv i32 %2449, 2
	store i32 %2450, i32* %4
	%2451 = load i32, i32* %5
	%2452 = sdiv i32 %2451, 2
	store i32 %2452, i32* %5
	%2453 = load i32, i32* %3
	%2454 = add i32 %2453, 1
	store i32 %2454, i32* %3
	br label %2430

2455:
	%2456 = load i32, i32* %2
	store i32 %2456, i32* %80
	%2457 = icmp sgt i32 1, 15
	br i1 %2457, label %2458, label %2459

2458:
	store i32 0, i32* %2
	br label %2488

2459:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%2460 = load i32, i32* %80
	%2461 = mul i32 %2460, 2
	store i32 %2461, i32* %4
	store i32 65535, i32* %5
	br label %2462

2462:
	%2463 = load i32, i32* %3
	%2464 = icmp slt i32 %2463, 16
	br i1 %2464, label %2465, label %2487

2465:
	%2466 = load i32, i32* %4
	%2467 = srem i32 %2466, 2
	%2468 = icmp ne i32 %2467, 0
	br i1 %2468, label %2469, label %2480

2469:
	%2470 = load i32, i32* %5
	%2471 = srem i32 %2470, 2
	%2472 = icmp ne i32 %2471, 0
	br i1 %2472, label %2473, label %2480

2473:
	%2474 = load i32, i32* %2
	%2475 = load i32, i32* %3
	%2476 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %2475
	%2477 = load i32, i32* %2476
	%2478 = mul i32 1, %2477
	%2479 = add i32 %2474, %2478
	store i32 %2479, i32* %2
	br label %2480

2480:
	%2481 = load i32, i32* %4
	%2482 = sdiv i32 %2481, 2
	store i32 %2482, i32* %4
	%2483 = load i32, i32* %5
	%2484 = sdiv i32 %2483, 2
	store i32 %2484, i32* %5
	%2485 = load i32, i32* %3
	%2486 = add i32 %2485, 1
	store i32 %2486, i32* %3
	br label %2462

2487:
	br label %2488

2488:
	%2489 = load i32, i32* %2
	store i32 %2489, i32* %80
	%2490 = load i32, i32* %81
	store i32 %2490, i32* %79
	br label %2382

2491:
	%2492 = load i32, i32* %79
	store i32 %2492, i32* %2
	%2493 = load i32, i32* %2
	store i32 %2493, i32* %73
	%2494 = load i32, i32* %74
	store i32 %2494, i32* %4
	store i32 1, i32* %5
	%2495 = load i32, i32* %5
	%2496 = icmp sge i32 %2495, 15
	br i1 %2496, label %2497, label %2503

2497:
	%2498 = load i32, i32* %4
	%2499 = icmp slt i32 %2498, 0
	br i1 %2499, label %2500, label %2501

2500:
	store i32 65535, i32* %2
	br label %2502

2501:
	store i32 0, i32* %2
	br label %2502

2502:
	br label %2533

2503:
	%2504 = load i32, i32* %5
	%2505 = icmp sgt i32 %2504, 0
	br i1 %2505, label %2506, label %2530

2506:
	%2507 = load i32, i32* %4
	%2508 = icmp sgt i32 %2507, 32767
	br i1 %2508, label %2509, label %2523

2509:
	%2510 = load i32, i32* %4
	%2511 = load i32, i32* %5
	%2512 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %2511
	%2513 = load i32, i32* %2512
	%2514 = sdiv i32 %2510, %2513
	store i32 %2514, i32* %4
	%2515 = load i32, i32* %4
	%2516 = add i32 %2515, 65536
	%2517 = load i32, i32* %5
	%2518 = sub i32 15, %2517
	%2519 = add i32 %2518, 1
	%2520 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %2519
	%2521 = load i32, i32* %2520
	%2522 = sub i32 %2516, %2521
	store i32 %2522, i32* %2
	br label %2529

2523:
	%2524 = load i32, i32* %4
	%2525 = load i32, i32* %5
	%2526 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %2525
	%2527 = load i32, i32* %2526
	%2528 = sdiv i32 %2524, %2527
	store i32 %2528, i32* %2
	br label %2529

2529:
	br label %2532

2530:
	%2531 = load i32, i32* %4
	store i32 %2531, i32* %2
	br label %2532

2532:
	br label %2533

2533:
	%2534 = load i32, i32* %2
	store i32 %2534, i32* %74
	br label %2231

2535:
	%2536 = load i32, i32* %75
	store i32 %2536, i32* %2
	%2537 = load i32, i32* %2
	store i32 %2537, i32* %72
	br label %2538

2538:
	%2539 = load i32, i32* %70
	store i32 %2539, i32* %82
	%2540 = load i32, i32* %70
	store i32 %2540, i32* %83
	store i32 0, i32* %84
	br label %2541

2541:
	%2542 = load i32, i32* %83
	%2543 = icmp ne i32 %2542, 0
	br i1 %2543, label %2544, label %2845

2544:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%2545 = load i32, i32* %83
	store i32 %2545, i32* %4
	store i32 1, i32* %5
	br label %2546

2546:
	%2547 = load i32, i32* %3
	%2548 = icmp slt i32 %2547, 16
	br i1 %2548, label %2549, label %2571

2549:
	%2550 = load i32, i32* %4
	%2551 = srem i32 %2550, 2
	%2552 = icmp ne i32 %2551, 0
	br i1 %2552, label %2553, label %2564

2553:
	%2554 = load i32, i32* %5
	%2555 = srem i32 %2554, 2
	%2556 = icmp ne i32 %2555, 0
	br i1 %2556, label %2557, label %2564

2557:
	%2558 = load i32, i32* %2
	%2559 = load i32, i32* %3
	%2560 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %2559
	%2561 = load i32, i32* %2560
	%2562 = mul i32 1, %2561
	%2563 = add i32 %2558, %2562
	store i32 %2563, i32* %2
	br label %2564

2564:
	%2565 = load i32, i32* %4
	%2566 = sdiv i32 %2565, 2
	store i32 %2566, i32* %4
	%2567 = load i32, i32* %5
	%2568 = sdiv i32 %2567, 2
	store i32 %2568, i32* %5
	%2569 = load i32, i32* %3
	%2570 = add i32 %2569, 1
	store i32 %2570, i32* %3
	br label %2546

2571:
	%2572 = load i32, i32* %2
	%2573 = icmp ne i32 %2572, 0
	br i1 %2573, label %2574, label %2689

2574:
	%2575 = load i32, i32* %84
	store i32 %2575, i32* %85
	%2576 = load i32, i32* %82
	store i32 %2576, i32* %86
	br label %2577

2577:
	%2578 = load i32, i32* %86
	%2579 = icmp ne i32 %2578, 0
	br i1 %2579, label %2580, label %2686

2580:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%2581 = load i32, i32* %85
	store i32 %2581, i32* %4
	%2582 = load i32, i32* %86
	store i32 %2582, i32* %5
	br label %2583

2583:
	%2584 = load i32, i32* %3
	%2585 = icmp slt i32 %2584, 16
	br i1 %2585, label %2586, label %2621

2586:
	%2587 = load i32, i32* %4
	%2588 = srem i32 %2587, 2
	%2589 = icmp ne i32 %2588, 0
	br i1 %2589, label %2590, label %2602

2590:
	%2591 = load i32, i32* %5
	%2592 = srem i32 %2591, 2
	%2593 = icmp eq i32 %2592, 0
	br i1 %2593, label %2594, label %2601

2594:
	%2595 = load i32, i32* %2
	%2596 = load i32, i32* %3
	%2597 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %2596
	%2598 = load i32, i32* %2597
	%2599 = mul i32 1, %2598
	%2600 = add i32 %2595, %2599
	store i32 %2600, i32* %2
	br label %2601

2601:
	br label %2614

2602:
	%2603 = load i32, i32* %5
	%2604 = srem i32 %2603, 2
	%2605 = icmp ne i32 %2604, 0
	br i1 %2605, label %2606, label %2613

2606:
	%2607 = load i32, i32* %2
	%2608 = load i32, i32* %3
	%2609 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %2608
	%2610 = load i32, i32* %2609
	%2611 = mul i32 1, %2610
	%2612 = add i32 %2607, %2611
	store i32 %2612, i32* %2
	br label %2613

2613:
	br label %2614

2614:
	%2615 = load i32, i32* %4
	%2616 = sdiv i32 %2615, 2
	store i32 %2616, i32* %4
	%2617 = load i32, i32* %5
	%2618 = sdiv i32 %2617, 2
	store i32 %2618, i32* %5
	%2619 = load i32, i32* %3
	%2620 = add i32 %2619, 1
	store i32 %2620, i32* %3
	br label %2583

2621:
	%2622 = load i32, i32* %2
	store i32 %2622, i32* %87
	store i32 0, i32* %2
	store i32 0, i32* %3
	%2623 = load i32, i32* %85
	store i32 %2623, i32* %4
	%2624 = load i32, i32* %86
	store i32 %2624, i32* %5
	br label %2625

2625:
	%2626 = load i32, i32* %3
	%2627 = icmp slt i32 %2626, 16
	br i1 %2627, label %2628, label %2650

2628:
	%2629 = load i32, i32* %4
	%2630 = srem i32 %2629, 2
	%2631 = icmp ne i32 %2630, 0
	br i1 %2631, label %2632, label %2643

2632:
	%2633 = load i32, i32* %5
	%2634 = srem i32 %2633, 2
	%2635 = icmp ne i32 %2634, 0
	br i1 %2635, label %2636, label %2643

2636:
	%2637 = load i32, i32* %2
	%2638 = load i32, i32* %3
	%2639 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %2638
	%2640 = load i32, i32* %2639
	%2641 = mul i32 1, %2640
	%2642 = add i32 %2637, %2641
	store i32 %2642, i32* %2
	br label %2643

2643:
	%2644 = load i32, i32* %4
	%2645 = sdiv i32 %2644, 2
	store i32 %2645, i32* %4
	%2646 = load i32, i32* %5
	%2647 = sdiv i32 %2646, 2
	store i32 %2647, i32* %5
	%2648 = load i32, i32* %3
	%2649 = add i32 %2648, 1
	store i32 %2649, i32* %3
	br label %2625

2650:
	%2651 = load i32, i32* %2
	store i32 %2651, i32* %86
	%2652 = icmp sgt i32 1, 15
	br i1 %2652, label %2653, label %2654

2653:
	store i32 0, i32* %2
	br label %2683

2654:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%2655 = load i32, i32* %86
	%2656 = mul i32 %2655, 2
	store i32 %2656, i32* %4
	store i32 65535, i32* %5
	br label %2657

2657:
	%2658 = load i32, i32* %3
	%2659 = icmp slt i32 %2658, 16
	br i1 %2659, label %2660, label %2682

2660:
	%2661 = load i32, i32* %4
	%2662 = srem i32 %2661, 2
	%2663 = icmp ne i32 %2662, 0
	br i1 %2663, label %2664, label %2675

2664:
	%2665 = load i32, i32* %5
	%2666 = srem i32 %2665, 2
	%2667 = icmp ne i32 %2666, 0
	br i1 %2667, label %2668, label %2675

2668:
	%2669 = load i32, i32* %2
	%2670 = load i32, i32* %3
	%2671 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %2670
	%2672 = load i32, i32* %2671
	%2673 = mul i32 1, %2672
	%2674 = add i32 %2669, %2673
	store i32 %2674, i32* %2
	br label %2675

2675:
	%2676 = load i32, i32* %4
	%2677 = sdiv i32 %2676, 2
	store i32 %2677, i32* %4
	%2678 = load i32, i32* %5
	%2679 = sdiv i32 %2678, 2
	store i32 %2679, i32* %5
	%2680 = load i32, i32* %3
	%2681 = add i32 %2680, 1
	store i32 %2681, i32* %3
	br label %2657

2682:
	br label %2683

2683:
	%2684 = load i32, i32* %2
	store i32 %2684, i32* %86
	%2685 = load i32, i32* %87
	store i32 %2685, i32* %85
	br label %2577

2686:
	%2687 = load i32, i32* %85
	store i32 %2687, i32* %2
	%2688 = load i32, i32* %2
	store i32 %2688, i32* %84
	br label %2689

2689:
	%2690 = load i32, i32* %82
	store i32 %2690, i32* %88
	%2691 = load i32, i32* %82
	store i32 %2691, i32* %89
	br label %2692

2692:
	%2693 = load i32, i32* %89
	%2694 = icmp ne i32 %2693, 0
	br i1 %2694, label %2695, label %2801

2695:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%2696 = load i32, i32* %88
	store i32 %2696, i32* %4
	%2697 = load i32, i32* %89
	store i32 %2697, i32* %5
	br label %2698

2698:
	%2699 = load i32, i32* %3
	%2700 = icmp slt i32 %2699, 16
	br i1 %2700, label %2701, label %2736

2701:
	%2702 = load i32, i32* %4
	%2703 = srem i32 %2702, 2
	%2704 = icmp ne i32 %2703, 0
	br i1 %2704, label %2705, label %2717

2705:
	%2706 = load i32, i32* %5
	%2707 = srem i32 %2706, 2
	%2708 = icmp eq i32 %2707, 0
	br i1 %2708, label %2709, label %2716

2709:
	%2710 = load i32, i32* %2
	%2711 = load i32, i32* %3
	%2712 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %2711
	%2713 = load i32, i32* %2712
	%2714 = mul i32 1, %2713
	%2715 = add i32 %2710, %2714
	store i32 %2715, i32* %2
	br label %2716

2716:
	br label %2729

2717:
	%2718 = load i32, i32* %5
	%2719 = srem i32 %2718, 2
	%2720 = icmp ne i32 %2719, 0
	br i1 %2720, label %2721, label %2728

2721:
	%2722 = load i32, i32* %2
	%2723 = load i32, i32* %3
	%2724 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %2723
	%2725 = load i32, i32* %2724
	%2726 = mul i32 1, %2725
	%2727 = add i32 %2722, %2726
	store i32 %2727, i32* %2
	br label %2728

2728:
	br label %2729

2729:
	%2730 = load i32, i32* %4
	%2731 = sdiv i32 %2730, 2
	store i32 %2731, i32* %4
	%2732 = load i32, i32* %5
	%2733 = sdiv i32 %2732, 2
	store i32 %2733, i32* %5
	%2734 = load i32, i32* %3
	%2735 = add i32 %2734, 1
	store i32 %2735, i32* %3
	br label %2698

2736:
	%2737 = load i32, i32* %2
	store i32 %2737, i32* %90
	store i32 0, i32* %2
	store i32 0, i32* %3
	%2738 = load i32, i32* %88
	store i32 %2738, i32* %4
	%2739 = load i32, i32* %89
	store i32 %2739, i32* %5
	br label %2740

2740:
	%2741 = load i32, i32* %3
	%2742 = icmp slt i32 %2741, 16
	br i1 %2742, label %2743, label %2765

2743:
	%2744 = load i32, i32* %4
	%2745 = srem i32 %2744, 2
	%2746 = icmp ne i32 %2745, 0
	br i1 %2746, label %2747, label %2758

2747:
	%2748 = load i32, i32* %5
	%2749 = srem i32 %2748, 2
	%2750 = icmp ne i32 %2749, 0
	br i1 %2750, label %2751, label %2758

2751:
	%2752 = load i32, i32* %2
	%2753 = load i32, i32* %3
	%2754 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %2753
	%2755 = load i32, i32* %2754
	%2756 = mul i32 1, %2755
	%2757 = add i32 %2752, %2756
	store i32 %2757, i32* %2
	br label %2758

2758:
	%2759 = load i32, i32* %4
	%2760 = sdiv i32 %2759, 2
	store i32 %2760, i32* %4
	%2761 = load i32, i32* %5
	%2762 = sdiv i32 %2761, 2
	store i32 %2762, i32* %5
	%2763 = load i32, i32* %3
	%2764 = add i32 %2763, 1
	store i32 %2764, i32* %3
	br label %2740

2765:
	%2766 = load i32, i32* %2
	store i32 %2766, i32* %89
	%2767 = icmp sgt i32 1, 15
	br i1 %2767, label %2768, label %2769

2768:
	store i32 0, i32* %2
	br label %2798

2769:
	store i32 0, i32* %2
	store i32 0, i32* %3
	%2770 = load i32, i32* %89
	%2771 = mul i32 %2770, 2
	store i32 %2771, i32* %4
	store i32 65535, i32* %5
	br label %2772

2772:
	%2773 = load i32, i32* %3
	%2774 = icmp slt i32 %2773, 16
	br i1 %2774, label %2775, label %2797

2775:
	%2776 = load i32, i32* %4
	%2777 = srem i32 %2776, 2
	%2778 = icmp ne i32 %2777, 0
	br i1 %2778, label %2779, label %2790

2779:
	%2780 = load i32, i32* %5
	%2781 = srem i32 %2780, 2
	%2782 = icmp ne i32 %2781, 0
	br i1 %2782, label %2783, label %2790

2783:
	%2784 = load i32, i32* %2
	%2785 = load i32, i32* %3
	%2786 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %2785
	%2787 = load i32, i32* %2786
	%2788 = mul i32 1, %2787
	%2789 = add i32 %2784, %2788
	store i32 %2789, i32* %2
	br label %2790

2790:
	%2791 = load i32, i32* %4
	%2792 = sdiv i32 %2791, 2
	store i32 %2792, i32* %4
	%2793 = load i32, i32* %5
	%2794 = sdiv i32 %2793, 2
	store i32 %2794, i32* %5
	%2795 = load i32, i32* %3
	%2796 = add i32 %2795, 1
	store i32 %2796, i32* %3
	br label %2772

2797:
	br label %2798

2798:
	%2799 = load i32, i32* %2
	store i32 %2799, i32* %89
	%2800 = load i32, i32* %90
	store i32 %2800, i32* %88
	br label %2692

2801:
	%2802 = load i32, i32* %88
	store i32 %2802, i32* %2
	%2803 = load i32, i32* %2
	store i32 %2803, i32* %82
	%2804 = load i32, i32* %83
	store i32 %2804, i32* %4
	store i32 1, i32* %5
	%2805 = load i32, i32* %5
	%2806 = icmp sge i32 %2805, 15
	br i1 %2806, label %2807, label %2813

2807:
	%2808 = load i32, i32* %4
	%2809 = icmp slt i32 %2808, 0
	br i1 %2809, label %2810, label %2811

2810:
	store i32 65535, i32* %2
	br label %2812

2811:
	store i32 0, i32* %2
	br label %2812

2812:
	br label %2843

2813:
	%2814 = load i32, i32* %5
	%2815 = icmp sgt i32 %2814, 0
	br i1 %2815, label %2816, label %2840

2816:
	%2817 = load i32, i32* %4
	%2818 = icmp sgt i32 %2817, 32767
	br i1 %2818, label %2819, label %2833

2819:
	%2820 = load i32, i32* %4
	%2821 = load i32, i32* %5
	%2822 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %2821
	%2823 = load i32, i32* %2822
	%2824 = sdiv i32 %2820, %2823
	store i32 %2824, i32* %4
	%2825 = load i32, i32* %4
	%2826 = add i32 %2825, 65536
	%2827 = load i32, i32* %5
	%2828 = sub i32 15, %2827
	%2829 = add i32 %2828, 1
	%2830 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %2829
	%2831 = load i32, i32* %2830
	%2832 = sub i32 %2826, %2831
	store i32 %2832, i32* %2
	br label %2839

2833:
	%2834 = load i32, i32* %4
	%2835 = load i32, i32* %5
	%2836 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %2835
	%2837 = load i32, i32* %2836
	%2838 = sdiv i32 %2834, %2837
	store i32 %2838, i32* %2
	br label %2839

2839:
	br label %2842

2840:
	%2841 = load i32, i32* %4
	store i32 %2841, i32* %2
	br label %2842

2842:
	br label %2843

2843:
	%2844 = load i32, i32* %2
	store i32 %2844, i32* %83
	br label %2541

2845:
	%2846 = load i32, i32* %84
	store i32 %2846, i32* %2
	%2847 = load i32, i32* %2
	store i32 %2847, i32* %70
	%2848 = load i32, i32* %71
	store i32 %2848, i32* %4
	store i32 1, i32* %5
	%2849 = load i32, i32* %5
	%2850 = icmp sge i32 %2849, 15
	br i1 %2850, label %2851, label %2857

2851:
	%2852 = load i32, i32* %4
	%2853 = icmp slt i32 %2852, 0
	br i1 %2853, label %2854, label %2855

2854:
	store i32 65535, i32* %2
	br label %2856

2855:
	store i32 0, i32* %2
	br label %2856

2856:
	br label %2887

2857:
	%2858 = load i32, i32* %5
	%2859 = icmp sgt i32 %2858, 0
	br i1 %2859, label %2860, label %2884

2860:
	%2861 = load i32, i32* %4
	%2862 = icmp sgt i32 %2861, 32767
	br i1 %2862, label %2863, label %2877

2863:
	%2864 = load i32, i32* %4
	%2865 = load i32, i32* %5
	%2866 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %2865
	%2867 = load i32, i32* %2866
	%2868 = sdiv i32 %2864, %2867
	store i32 %2868, i32* %4
	%2869 = load i32, i32* %4
	%2870 = add i32 %2869, 65536
	%2871 = load i32, i32* %5
	%2872 = sub i32 15, %2871
	%2873 = add i32 %2872, 1
	%2874 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %2873
	%2875 = load i32, i32* %2874
	%2876 = sub i32 %2870, %2875
	store i32 %2876, i32* %2
	br label %2883

2877:
	%2878 = load i32, i32* %4
	%2879 = load i32, i32* %5
	%2880 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %2879
	%2881 = load i32, i32* %2880
	%2882 = sdiv i32 %2878, %2881
	store i32 %2882, i32* %2
	br label %2883

2883:
	br label %2886

2884:
	%2885 = load i32, i32* %4
	store i32 %2885, i32* %2
	br label %2886

2886:
	br label %2887

2887:
	%2888 = load i32, i32* %2
	store i32 %2888, i32* %71
	br label %2195

2889:
	%2890 = load i32, i32* %72
	store i32 %2890, i32* %2
	%2891 = load i32, i32* %6
	%2892 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %2891
	%2893 = load i32, i32* %2892
	%2894 = load i32, i32* %2
	%2895 = icmp ne i32 %2893, %2894
	br i1 %2895, label %2896, label %2897

2896:
	store i32 1, i32* %1
	br label %2901

2897:
	%2898 = load i32, i32* %6
	%2899 = add i32 %2898, 1
	store i32 %2899, i32* %6
	br label %2190

2900:
	store i32 0, i32* %1
	br label %2901

2901:
	%2902 = load i32, i32* %1
	ret i32 %2902

}

define dso_local i32 @main() {
0:
	%1 = alloca i32
	%2 = call i32 @long_func()
	store i32 %2, i32* %1
	br label %3

3:
	%4 = load i32, i32* %1
	ret i32 %4

}

