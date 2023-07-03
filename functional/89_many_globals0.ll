@a0 = dso_local global i32 0
@a1 = dso_local global i32 0
@a2 = dso_local global i32 0
@a3 = dso_local global i32 0
@a4 = dso_local global i32 0
@a5 = dso_local global i32 0
@a6 = dso_local global i32 0
@a7 = dso_local global i32 0
@a8 = dso_local global i32 0
@a9 = dso_local global i32 0
@a10 = dso_local global i32 0
@a11 = dso_local global i32 0
@a12 = dso_local global i32 0
@a13 = dso_local global i32 0
@a14 = dso_local global i32 0
@a15 = dso_local global i32 0
@a16 = dso_local global i32 0
@a17 = dso_local global i32 0
@a18 = dso_local global i32 0
@a19 = dso_local global i32 0
@a20 = dso_local global i32 0
@a21 = dso_local global i32 0
@a22 = dso_local global i32 0
@a23 = dso_local global i32 0
@a24 = dso_local global i32 0
@a25 = dso_local global i32 0
@a26 = dso_local global i32 0
@a27 = dso_local global i32 0
@a28 = dso_local global i32 0
@a29 = dso_local global i32 0
@a30 = dso_local global i32 0
@a31 = dso_local global i32 0
@a32 = dso_local global i32 0
@a33 = dso_local global i32 0
@a34 = dso_local global i32 0
@a35 = dso_local global i32 0
@a36 = dso_local global i32 0
@a37 = dso_local global i32 0
@a38 = dso_local global i32 0
@a39 = dso_local global i32 0

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

define dso_local i32 @testParam8(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) {
8:
	%9 = alloca i32
	%10 = alloca i32
	%11 = alloca i32
	%12 = alloca i32
	%13 = alloca i32
	%14 = alloca i32
	%15 = alloca i32
	%16 = alloca i32
	%17 = alloca i32
	store i32 %0, i32* %10
	store i32 %1, i32* %11
	store i32 %2, i32* %12
	store i32 %3, i32* %13
	store i32 %4, i32* %14
	store i32 %5, i32* %15
	store i32 %6, i32* %16
	store i32 %7, i32* %17
	%18 = load i32, i32* %10
	%19 = load i32, i32* %11
	%20 = add i32 %18, %19
	%21 = load i32, i32* %12
	%22 = add i32 %20, %21
	%23 = load i32, i32* %13
	%24 = add i32 %22, %23
	%25 = load i32, i32* %14
	%26 = add i32 %24, %25
	%27 = load i32, i32* %15
	%28 = add i32 %26, %27
	%29 = load i32, i32* %16
	%30 = add i32 %28, %29
	%31 = load i32, i32* %17
	%32 = add i32 %30, %31
	store i32 %32, i32* %9
	br label %33

33:
	%34 = load i32, i32* %9
	ret i32 %34

}

define dso_local i32 @testParam16(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15) {
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
	%34 = load i32, i32* %18
	%35 = load i32, i32* %19
	%36 = add i32 %34, %35
	%37 = load i32, i32* %20
	%38 = add i32 %36, %37
	%39 = load i32, i32* %21
	%40 = sub i32 %38, %39
	%41 = load i32, i32* %22
	%42 = sub i32 %40, %41
	%43 = load i32, i32* %23
	%44 = sub i32 %42, %43
	%45 = load i32, i32* %24
	%46 = sub i32 %44, %45
	%47 = load i32, i32* %25
	%48 = sub i32 %46, %47
	%49 = load i32, i32* %26
	%50 = add i32 %48, %49
	%51 = load i32, i32* %27
	%52 = add i32 %50, %51
	%53 = load i32, i32* %28
	%54 = add i32 %52, %53
	%55 = load i32, i32* %29
	%56 = add i32 %54, %55
	%57 = load i32, i32* %30
	%58 = add i32 %56, %57
	%59 = load i32, i32* %31
	%60 = add i32 %58, %59
	%61 = load i32, i32* %32
	%62 = add i32 %60, %61
	%63 = load i32, i32* %33
	%64 = add i32 %62, %63
	store i32 %64, i32* %17
	br label %65

65:
	%66 = load i32, i32* %17
	ret i32 %66

}

define dso_local i32 @testParam32(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31) {
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
	%67 = load i32, i32* %35
	%68 = add i32 %66, %67
	%69 = load i32, i32* %36
	%70 = add i32 %68, %69
	%71 = load i32, i32* %37
	%72 = add i32 %70, %71
	%73 = load i32, i32* %38
	%74 = add i32 %72, %73
	%75 = load i32, i32* %39
	%76 = add i32 %74, %75
	%77 = load i32, i32* %40
	%78 = add i32 %76, %77
	%79 = load i32, i32* %41
	%80 = add i32 %78, %79
	%81 = load i32, i32* %42
	%82 = add i32 %80, %81
	%83 = load i32, i32* %43
	%84 = add i32 %82, %83
	%85 = load i32, i32* %44
	%86 = add i32 %84, %85
	%87 = load i32, i32* %45
	%88 = add i32 %86, %87
	%89 = load i32, i32* %46
	%90 = add i32 %88, %89
	%91 = load i32, i32* %47
	%92 = add i32 %90, %91
	%93 = load i32, i32* %48
	%94 = add i32 %92, %93
	%95 = load i32, i32* %49
	%96 = add i32 %94, %95
	%97 = load i32, i32* %50
	%98 = add i32 %96, %97
	%99 = load i32, i32* %51
	%100 = add i32 %98, %99
	%101 = load i32, i32* %52
	%102 = sub i32 %100, %101
	%103 = load i32, i32* %53
	%104 = sub i32 %102, %103
	%105 = load i32, i32* %54
	%106 = sub i32 %104, %105
	%107 = load i32, i32* %55
	%108 = sub i32 %106, %107
	%109 = load i32, i32* %56
	%110 = sub i32 %108, %109
	%111 = load i32, i32* %57
	%112 = add i32 %110, %111
	%113 = load i32, i32* %58
	%114 = add i32 %112, %113
	%115 = load i32, i32* %59
	%116 = add i32 %114, %115
	%117 = load i32, i32* %60
	%118 = add i32 %116, %117
	%119 = load i32, i32* %61
	%120 = add i32 %118, %119
	%121 = load i32, i32* %62
	%122 = add i32 %120, %121
	%123 = load i32, i32* %63
	%124 = add i32 %122, %123
	%125 = load i32, i32* %64
	%126 = add i32 %124, %125
	%127 = load i32, i32* %65
	%128 = add i32 %126, %127
	store i32 %128, i32* %33
	br label %129

129:
	%130 = load i32, i32* %33
	ret i32 %130

}

define dso_local i32 @main() {
0:
	%1 = alloca i32
	store i32 0, i32* @a0
	store i32 1, i32* @a1
	store i32 2, i32* @a2
	store i32 3, i32* @a3
	store i32 4, i32* @a4
	store i32 5, i32* @a5
	store i32 6, i32* @a6
	store i32 7, i32* @a7
	store i32 8, i32* @a8
	store i32 9, i32* @a9
	store i32 0, i32* @a10
	store i32 1, i32* @a11
	store i32 2, i32* @a12
	store i32 3, i32* @a13
	store i32 4, i32* @a14
	store i32 5, i32* @a15
	store i32 6, i32* @a16
	store i32 7, i32* @a17
	store i32 8, i32* @a18
	store i32 9, i32* @a19
	store i32 0, i32* @a20
	store i32 1, i32* @a21
	store i32 2, i32* @a22
	store i32 3, i32* @a23
	store i32 4, i32* @a24
	store i32 5, i32* @a25
	store i32 6, i32* @a26
	store i32 7, i32* @a27
	store i32 8, i32* @a28
	store i32 9, i32* @a29
	store i32 0, i32* @a30
	store i32 1, i32* @a31
	store i32 4, i32* @a32
	store i32 5, i32* @a33
	store i32 6, i32* @a34
	store i32 7, i32* @a35
	store i32 8, i32* @a36
	store i32 9, i32* @a37
	store i32 0, i32* @a38
	store i32 1, i32* @a39
	%2 = load i32, i32* @a0
	%3 = load i32, i32* @a1
	%4 = load i32, i32* @a2
	%5 = load i32, i32* @a3
	%6 = load i32, i32* @a4
	%7 = load i32, i32* @a5
	%8 = load i32, i32* @a6
	%9 = load i32, i32* @a7
	%10 = call i32 @testParam8(i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9)
	store i32 %10, i32* @a0
	%11 = load i32, i32* @a0
	call void @putint(i32 %11)
	%12 = load i32, i32* @a32
	%13 = load i32, i32* @a33
	%14 = load i32, i32* @a34
	%15 = load i32, i32* @a35
	%16 = load i32, i32* @a36
	%17 = load i32, i32* @a37
	%18 = load i32, i32* @a38
	%19 = load i32, i32* @a39
	%20 = load i32, i32* @a8
	%21 = load i32, i32* @a9
	%22 = load i32, i32* @a10
	%23 = load i32, i32* @a11
	%24 = load i32, i32* @a12
	%25 = load i32, i32* @a13
	%26 = load i32, i32* @a14
	%27 = load i32, i32* @a15
	%28 = call i32 @testParam16(i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27)
	store i32 %28, i32* @a0
	%29 = load i32, i32* @a0
	call void @putint(i32 %29)
	%30 = load i32, i32* @a0
	%31 = load i32, i32* @a1
	%32 = load i32, i32* @a2
	%33 = load i32, i32* @a3
	%34 = load i32, i32* @a4
	%35 = load i32, i32* @a5
	%36 = load i32, i32* @a6
	%37 = load i32, i32* @a7
	%38 = load i32, i32* @a8
	%39 = load i32, i32* @a9
	%40 = load i32, i32* @a10
	%41 = load i32, i32* @a11
	%42 = load i32, i32* @a12
	%43 = load i32, i32* @a13
	%44 = load i32, i32* @a14
	%45 = load i32, i32* @a15
	%46 = load i32, i32* @a16
	%47 = load i32, i32* @a17
	%48 = load i32, i32* @a18
	%49 = load i32, i32* @a19
	%50 = load i32, i32* @a20
	%51 = load i32, i32* @a21
	%52 = load i32, i32* @a22
	%53 = load i32, i32* @a23
	%54 = load i32, i32* @a24
	%55 = load i32, i32* @a25
	%56 = load i32, i32* @a26
	%57 = load i32, i32* @a27
	%58 = load i32, i32* @a28
	%59 = load i32, i32* @a29
	%60 = load i32, i32* @a30
	%61 = load i32, i32* @a31
	%62 = call i32 @testParam32(i32 %30, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61)
	store i32 %62, i32* @a0
	%63 = load i32, i32* @a0
	call void @putint(i32 %63)
	store i32 0, i32* %1
	br label %64

64:
	%65 = load i32, i32* %1
	ret i32 %65

}

