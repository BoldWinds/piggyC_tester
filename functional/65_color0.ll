@maxn = dso_local constant i32 18
@mod = dso_local constant i32 1000000007
@dp = dso_local global [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]] zeroinitializer
@list = dso_local global [200 x i32] zeroinitializer
@cns = dso_local global [20 x i32] zeroinitializer

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

define dso_local i32 @equal(i32 %0, i32 %1) {
2:
	%3 = alloca i32
	%4 = alloca i32
	%5 = alloca i32
	store i32 %0, i32* %4
	store i32 %1, i32* %5
	%6 = load i32, i32* %4
	%7 = load i32, i32* %5
	%8 = icmp eq i32 %6, %7
	br i1 %8, label %9, label %10

9:
	store i32 1, i32* %3
	br label %11

10:
	store i32 0, i32* %3
	br label %11

11:
	%12 = load i32, i32* %3
	ret i32 %12

}

define dso_local i32 @dfs(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) {
6:
	%7 = alloca i32
	%8 = alloca i32
	%9 = alloca i32
	%10 = alloca i32
	%11 = alloca i32
	%12 = alloca i32
	%13 = alloca i32
	%14 = alloca i32
	store i32 %0, i32* %8
	store i32 %1, i32* %9
	store i32 %2, i32* %10
	store i32 %3, i32* %11
	store i32 %4, i32* %12
	store i32 %5, i32* %13
	%15 = load i32, i32* %8
	%16 = load i32, i32* %9
	%17 = load i32, i32* %10
	%18 = load i32, i32* %11
	%19 = load i32, i32* %12
	%20 = load i32, i32* %13
	%21 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i32 0, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20
	%22 = load i32, i32* %21
	%23 = icmp ne i32 %22, -1
	br i1 %23, label %24, label %33

24:
	%25 = load i32, i32* %8
	%26 = load i32, i32* %9
	%27 = load i32, i32* %10
	%28 = load i32, i32* %11
	%29 = load i32, i32* %12
	%30 = load i32, i32* %13
	%31 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i32 0, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30
	%32 = load i32, i32* %31
	store i32 %32, i32* %7
	br label %159

33:
	%34 = load i32, i32* %8
	%35 = load i32, i32* %9
	%36 = add i32 %34, %35
	%37 = load i32, i32* %10
	%38 = add i32 %36, %37
	%39 = load i32, i32* %11
	%40 = add i32 %38, %39
	%41 = load i32, i32* %12
	%42 = add i32 %40, %41
	%43 = icmp eq i32 %42, 0
	br i1 %43, label %44, label %45

44:
	store i32 1, i32* %7
	br label %159

45:
	store i32 0, i32* %14
	%46 = load i32, i32* %8
	%47 = icmp ne i32 %46, 0
	br i1 %47, label %48, label %64

48:
	%49 = load i32, i32* %14
	%50 = load i32, i32* %8
	%51 = load i32, i32* %13
	%52 = call i32 @equal(i32 %51, i32 2)
	%53 = sub i32 %50, %52
	%54 = load i32, i32* %8
	%55 = sub i32 %54, 1
	%56 = load i32, i32* %9
	%57 = load i32, i32* %10
	%58 = load i32, i32* %11
	%59 = load i32, i32* %12
	%60 = call i32 @dfs(i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 1)
	%61 = mul i32 %53, %60
	%62 = add i32 %49, %61
	%63 = srem i32 %62, 1000000007
	store i32 %63, i32* %14
	br label %64

64:
	%65 = load i32, i32* %9
	%66 = icmp ne i32 %65, 0
	br i1 %66, label %67, label %84

67:
	%68 = load i32, i32* %14
	%69 = load i32, i32* %9
	%70 = load i32, i32* %13
	%71 = call i32 @equal(i32 %70, i32 3)
	%72 = sub i32 %69, %71
	%73 = load i32, i32* %8
	%74 = add i32 %73, 1
	%75 = load i32, i32* %9
	%76 = sub i32 %75, 1
	%77 = load i32, i32* %10
	%78 = load i32, i32* %11
	%79 = load i32, i32* %12
	%80 = call i32 @dfs(i32 %74, i32 %76, i32 %77, i32 %78, i32 %79, i32 2)
	%81 = mul i32 %72, %80
	%82 = add i32 %68, %81
	%83 = srem i32 %82, 1000000007
	store i32 %83, i32* %14
	br label %84

84:
	%85 = load i32, i32* %10
	%86 = icmp ne i32 %85, 0
	br i1 %86, label %87, label %104

87:
	%88 = load i32, i32* %14
	%89 = load i32, i32* %10
	%90 = load i32, i32* %13
	%91 = call i32 @equal(i32 %90, i32 4)
	%92 = sub i32 %89, %91
	%93 = load i32, i32* %8
	%94 = load i32, i32* %9
	%95 = add i32 %94, 1
	%96 = load i32, i32* %10
	%97 = sub i32 %96, 1
	%98 = load i32, i32* %11
	%99 = load i32, i32* %12
	%100 = call i32 @dfs(i32 %93, i32 %95, i32 %97, i32 %98, i32 %99, i32 3)
	%101 = mul i32 %92, %100
	%102 = add i32 %88, %101
	%103 = srem i32 %102, 1000000007
	store i32 %103, i32* %14
	br label %104

104:
	%105 = load i32, i32* %11
	%106 = icmp ne i32 %105, 0
	br i1 %106, label %107, label %124

107:
	%108 = load i32, i32* %14
	%109 = load i32, i32* %11
	%110 = load i32, i32* %13
	%111 = call i32 @equal(i32 %110, i32 5)
	%112 = sub i32 %109, %111
	%113 = load i32, i32* %8
	%114 = load i32, i32* %9
	%115 = load i32, i32* %10
	%116 = add i32 %115, 1
	%117 = load i32, i32* %11
	%118 = sub i32 %117, 1
	%119 = load i32, i32* %12
	%120 = call i32 @dfs(i32 %113, i32 %114, i32 %116, i32 %118, i32 %119, i32 4)
	%121 = mul i32 %112, %120
	%122 = add i32 %108, %121
	%123 = srem i32 %122, 1000000007
	store i32 %123, i32* %14
	br label %124

124:
	%125 = load i32, i32* %12
	%126 = icmp ne i32 %125, 0
	br i1 %126, label %127, label %141

127:
	%128 = load i32, i32* %14
	%129 = load i32, i32* %12
	%130 = load i32, i32* %8
	%131 = load i32, i32* %9
	%132 = load i32, i32* %10
	%133 = load i32, i32* %11
	%134 = add i32 %133, 1
	%135 = load i32, i32* %12
	%136 = sub i32 %135, 1
	%137 = call i32 @dfs(i32 %130, i32 %131, i32 %132, i32 %134, i32 %136, i32 5)
	%138 = mul i32 %129, %137
	%139 = add i32 %128, %138
	%140 = srem i32 %139, 1000000007
	store i32 %140, i32* %14
	br label %141

141:
	%142 = load i32, i32* %14
	%143 = srem i32 %142, 1000000007
	%144 = load i32, i32* %8
	%145 = load i32, i32* %9
	%146 = load i32, i32* %10
	%147 = load i32, i32* %11
	%148 = load i32, i32* %12
	%149 = load i32, i32* %13
	%150 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i32 0, i32 %144, i32 %145, i32 %146, i32 %147, i32 %148, i32 %149
	store i32 %143, i32* %150
	%151 = load i32, i32* %8
	%152 = load i32, i32* %9
	%153 = load i32, i32* %10
	%154 = load i32, i32* %11
	%155 = load i32, i32* %12
	%156 = load i32, i32* %13
	%157 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i32 0, i32 %151, i32 %152, i32 %153, i32 %154, i32 %155, i32 %156
	%158 = load i32, i32* %157
	store i32 %158, i32* %7
	br label %159

159:
	%160 = load i32, i32* %7
	ret i32 %160

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
	%10 = call i32 @getint()
	store i32 %10, i32* %2
	store i32 0, i32* %3
	br label %11

11:
	%12 = load i32, i32* %3
	%13 = icmp slt i32 %12, 18
	br i1 %13, label %14, label %59

14:
	store i32 0, i32* %4
	br label %15

15:
	%16 = load i32, i32* %4
	%17 = icmp slt i32 %16, 18
	br i1 %17, label %18, label %56

18:
	store i32 0, i32* %5
	br label %19

19:
	%20 = load i32, i32* %5
	%21 = icmp slt i32 %20, 18
	br i1 %21, label %22, label %53

22:
	store i32 0, i32* %6
	br label %23

23:
	%24 = load i32, i32* %6
	%25 = icmp slt i32 %24, 18
	br i1 %25, label %26, label %50

26:
	store i32 0, i32* %7
	br label %27

27:
	%28 = load i32, i32* %7
	%29 = icmp slt i32 %28, 18
	br i1 %29, label %30, label %47

30:
	store i32 0, i32* %8
	br label %31

31:
	%32 = load i32, i32* %8
	%33 = icmp slt i32 %32, 7
	br i1 %33, label %34, label %44

34:
	%35 = load i32, i32* %3
	%36 = load i32, i32* %4
	%37 = load i32, i32* %5
	%38 = load i32, i32* %6
	%39 = load i32, i32* %7
	%40 = load i32, i32* %8
	%41 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i32 0, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40
	store i32 -1, i32* %41
	%42 = load i32, i32* %8
	%43 = add i32 %42, 1
	store i32 %43, i32* %8
	br label %31

44:
	%45 = load i32, i32* %7
	%46 = add i32 %45, 1
	store i32 %46, i32* %7
	br label %27

47:
	%48 = load i32, i32* %6
	%49 = add i32 %48, 1
	store i32 %49, i32* %6
	br label %23

50:
	%51 = load i32, i32* %5
	%52 = add i32 %51, 1
	store i32 %52, i32* %5
	br label %19

53:
	%54 = load i32, i32* %4
	%55 = add i32 %54, 1
	store i32 %55, i32* %4
	br label %15

56:
	%57 = load i32, i32* %3
	%58 = add i32 %57, 1
	store i32 %58, i32* %3
	br label %11

59:
	store i32 0, i32* %3
	br label %60

60:
	%61 = load i32, i32* %3
	%62 = load i32, i32* %2
	%63 = icmp slt i32 %61, %62
	br i1 %63, label %64, label %80

64:
	%65 = call i32 @getint()
	%66 = load i32, i32* %3
	%67 = getelementptr [200 x i32], [200 x i32]* @list, i32 0, i32 %66
	store i32 %65, i32* %67
	%68 = load i32, i32* %3
	%69 = getelementptr [200 x i32], [200 x i32]* @list, i32 0, i32 %68
	%70 = load i32, i32* %69
	%71 = getelementptr [20 x i32], [20 x i32]* @cns, i32 0, i32 %70
	%72 = load i32, i32* %71
	%73 = add i32 %72, 1
	%74 = load i32, i32* %3
	%75 = getelementptr [200 x i32], [200 x i32]* @list, i32 0, i32 %74
	%76 = load i32, i32* %75
	%77 = getelementptr [20 x i32], [20 x i32]* @cns, i32 0, i32 %76
	store i32 %73, i32* %77
	%78 = load i32, i32* %3
	%79 = add i32 %78, 1
	store i32 %79, i32* %3
	br label %60

80:
	%81 = getelementptr [20 x i32], [20 x i32]* @cns, i32 0, i32 1
	%82 = load i32, i32* %81
	%83 = getelementptr [20 x i32], [20 x i32]* @cns, i32 0, i32 2
	%84 = load i32, i32* %83
	%85 = getelementptr [20 x i32], [20 x i32]* @cns, i32 0, i32 3
	%86 = load i32, i32* %85
	%87 = getelementptr [20 x i32], [20 x i32]* @cns, i32 0, i32 4
	%88 = load i32, i32* %87
	%89 = getelementptr [20 x i32], [20 x i32]* @cns, i32 0, i32 5
	%90 = load i32, i32* %89
	%91 = call i32 @dfs(i32 %82, i32 %84, i32 %86, i32 %88, i32 %90, i32 0)
	store i32 %91, i32* %9
	%92 = load i32, i32* %9
	call void @putint(i32 %92)
	%93 = load i32, i32* %9
	store i32 %93, i32* %1
	br label %94

94:
	%95 = load i32, i32* %1
	ret i32 %95

}

