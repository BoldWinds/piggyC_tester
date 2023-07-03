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
	%35 = call i32 @getint()
	store i32 %35, i32* %32
	br label %36

36:
	%37 = load i32, i32* %32
	%38 = icmp eq i32 %37, 5
	br i1 %38, label %39, label %42

39:
	%40 = load i32, i32* %32
	%41 = add i32 %40, 1
	store i32 %41, i32* %32
	br label %36

42:
	store i32 0, i32* %2
	%43 = load i32, i32* %2
	%44 = add i32 %43, 1
	store i32 %44, i32* %3
	%45 = load i32, i32* %3
	%46 = add i32 %45, 1
	store i32 %46, i32* %4
	%47 = load i32, i32* %4
	%48 = add i32 %47, 1
	store i32 %48, i32* %5
	%49 = load i32, i32* %5
	%50 = add i32 %49, 1
	store i32 %50, i32* %6
	%51 = load i32, i32* %6
	%52 = add i32 %51, 1
	store i32 %52, i32* %7
	%53 = load i32, i32* %7
	%54 = add i32 %53, 1
	store i32 %54, i32* %8
	%55 = load i32, i32* %8
	%56 = add i32 %55, 1
	store i32 %56, i32* %9
	%57 = load i32, i32* %9
	%58 = add i32 %57, 1
	store i32 %58, i32* %10
	%59 = load i32, i32* %10
	%60 = add i32 %59, 1
	store i32 %60, i32* %11
	%61 = load i32, i32* %11
	%62 = add i32 %61, 1
	store i32 %62, i32* %12
	%63 = load i32, i32* %12
	%64 = add i32 %63, 1
	store i32 %64, i32* %13
	%65 = load i32, i32* %13
	%66 = add i32 %65, 1
	store i32 %66, i32* %14
	%67 = load i32, i32* %14
	%68 = add i32 %67, 1
	store i32 %68, i32* %15
	%69 = load i32, i32* %15
	%70 = add i32 %69, 1
	store i32 %70, i32* %16
	%71 = load i32, i32* %16
	%72 = add i32 %71, 1
	store i32 %72, i32* %17
	%73 = load i32, i32* %17
	%74 = add i32 %73, 1
	store i32 %74, i32* %18
	%75 = load i32, i32* %18
	%76 = add i32 %75, 1
	store i32 %76, i32* %19
	%77 = load i32, i32* %19
	%78 = add i32 %77, 1
	store i32 %78, i32* %20
	%79 = load i32, i32* %20
	%80 = add i32 %79, 1
	store i32 %80, i32* %21
	%81 = load i32, i32* %21
	%82 = add i32 %81, 1
	store i32 %82, i32* %22
	%83 = load i32, i32* %22
	%84 = add i32 %83, 1
	store i32 %84, i32* %23
	%85 = load i32, i32* %23
	%86 = add i32 %85, 1
	store i32 %86, i32* %24
	%87 = load i32, i32* %24
	%88 = add i32 %87, 1
	store i32 %88, i32* %25
	%89 = load i32, i32* %25
	%90 = add i32 %89, 1
	store i32 %90, i32* %26
	%91 = load i32, i32* %26
	%92 = add i32 %91, 1
	store i32 %92, i32* %27
	%93 = load i32, i32* %27
	%94 = add i32 %93, 1
	store i32 %94, i32* %28
	%95 = load i32, i32* %28
	%96 = add i32 %95, 1
	store i32 %96, i32* %29
	%97 = load i32, i32* %29
	%98 = add i32 %97, 1
	store i32 %98, i32* %30
	%99 = load i32, i32* %30
	%100 = add i32 %99, 1
	store i32 %100, i32* %31
	%101 = load i32, i32* %2
	call void @putint(i32 %101)
	%102 = load i32, i32* %3
	call void @putint(i32 %102)
	%103 = load i32, i32* %4
	call void @putint(i32 %103)
	%104 = load i32, i32* %5
	call void @putint(i32 %104)
	%105 = load i32, i32* %6
	call void @putint(i32 %105)
	%106 = load i32, i32* %7
	call void @putint(i32 %106)
	%107 = load i32, i32* %8
	call void @putint(i32 %107)
	%108 = load i32, i32* %9
	call void @putint(i32 %108)
	%109 = load i32, i32* %10
	call void @putint(i32 %109)
	%110 = load i32, i32* %11
	call void @putint(i32 %110)
	%111 = load i32, i32* %12
	call void @putint(i32 %111)
	%112 = load i32, i32* %13
	call void @putint(i32 %112)
	%113 = load i32, i32* %14
	call void @putint(i32 %113)
	%114 = load i32, i32* %15
	call void @putint(i32 %114)
	%115 = load i32, i32* %16
	call void @putint(i32 %115)
	%116 = load i32, i32* %17
	call void @putint(i32 %116)
	%117 = load i32, i32* %18
	call void @putint(i32 %117)
	%118 = load i32, i32* %19
	call void @putint(i32 %118)
	%119 = load i32, i32* %20
	call void @putint(i32 %119)
	%120 = load i32, i32* %21
	call void @putint(i32 %120)
	%121 = load i32, i32* %22
	call void @putint(i32 %121)
	%122 = load i32, i32* %23
	call void @putint(i32 %122)
	%123 = load i32, i32* %24
	call void @putint(i32 %123)
	%124 = load i32, i32* %25
	call void @putint(i32 %124)
	%125 = load i32, i32* %26
	call void @putint(i32 %125)
	%126 = load i32, i32* %27
	call void @putint(i32 %126)
	%127 = load i32, i32* %28
	call void @putint(i32 %127)
	%128 = load i32, i32* %29
	call void @putint(i32 %128)
	%129 = load i32, i32* %30
	call void @putint(i32 %129)
	%130 = load i32, i32* %31
	call void @putint(i32 %130)
	store i32 10, i32* %34
	%131 = load i32, i32* %34
	call void @putch(i32 %131)
	%132 = load i32, i32* %32
	call void @putint(i32 %132)
	%133 = load i32, i32* %34
	call void @putch(i32 %133)
	%134 = load i32, i32* %27
	store i32 %134, i32* %1
	br label %135

135:
	%136 = load i32, i32* %1
	ret i32 %136

}

