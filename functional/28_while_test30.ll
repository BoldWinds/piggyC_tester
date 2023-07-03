@g = dso_local global i32 0
@h = dso_local global i32 0
@f = dso_local global i32 0
@e = dso_local global i32 0

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

define dso_local i32 @EightWhile() {
0:
	%1 = alloca i32
	%2 = alloca i32
	%3 = alloca i32
	%4 = alloca i32
	%5 = alloca i32
	store i32 5, i32* %2
	store i32 6, i32* %3
	store i32 7, i32* %4
	store i32 10, i32* %5
	br label %6

6:
	%7 = load i32, i32* %2
	%8 = icmp slt i32 %7, 20
	br i1 %8, label %9, label %75

9:
	%10 = load i32, i32* %2
	%11 = add i32 %10, 3
	store i32 %11, i32* %2
	br label %12

12:
	%13 = load i32, i32* %3
	%14 = icmp slt i32 %13, 10
	br i1 %14, label %15, label %72

15:
	%16 = load i32, i32* %3
	%17 = add i32 %16, 1
	store i32 %17, i32* %3
	br label %18

18:
	%19 = load i32, i32* %4
	%20 = icmp eq i32 %19, 7
	br i1 %20, label %21, label %69

21:
	%22 = load i32, i32* %4
	%23 = sub i32 %22, 1
	store i32 %23, i32* %4
	br label %24

24:
	%25 = load i32, i32* %5
	%26 = icmp slt i32 %25, 20
	br i1 %26, label %27, label %66

27:
	%28 = load i32, i32* %5
	%29 = add i32 %28, 3
	store i32 %29, i32* %5
	br label %30

30:
	%31 = load i32, i32* @e
	%32 = icmp sgt i32 %31, 1
	br i1 %32, label %33, label %63

33:
	%34 = load i32, i32* @e
	%35 = sub i32 %34, 1
	store i32 %35, i32* @e
	br label %36

36:
	%37 = load i32, i32* @f
	%38 = icmp sgt i32 %37, 2
	br i1 %38, label %39, label %60

39:
	%40 = load i32, i32* @f
	%41 = sub i32 %40, 2
	store i32 %41, i32* @f
	br label %42

42:
	%43 = load i32, i32* @g
	%44 = icmp slt i32 %43, 3
	br i1 %44, label %45, label %57

45:
	%46 = load i32, i32* @g
	%47 = add i32 %46, 10
	store i32 %47, i32* @g
	br label %48

48:
	%49 = load i32, i32* @h
	%50 = icmp slt i32 %49, 10
	br i1 %50, label %51, label %54

51:
	%52 = load i32, i32* @h
	%53 = add i32 %52, 8
	store i32 %53, i32* @h
	br label %48

54:
	%55 = load i32, i32* @h
	%56 = sub i32 %55, 1
	store i32 %56, i32* @h
	br label %42

57:
	%58 = load i32, i32* @g
	%59 = sub i32 %58, 8
	store i32 %59, i32* @g
	br label %36

60:
	%61 = load i32, i32* @f
	%62 = add i32 %61, 1
	store i32 %62, i32* @f
	br label %30

63:
	%64 = load i32, i32* @e
	%65 = add i32 %64, 1
	store i32 %65, i32* @e
	br label %24

66:
	%67 = load i32, i32* %5
	%68 = sub i32 %67, 1
	store i32 %68, i32* %5
	br label %18

69:
	%70 = load i32, i32* %4
	%71 = add i32 %70, 1
	store i32 %71, i32* %4
	br label %12

72:
	%73 = load i32, i32* %3
	%74 = sub i32 %73, 2
	store i32 %74, i32* %3
	br label %6

75:
	%76 = load i32, i32* %2
	%77 = load i32, i32* %3
	%78 = load i32, i32* %5
	%79 = add i32 %77, %78
	%80 = add i32 %76, %79
	%81 = load i32, i32* %4
	%82 = add i32 %80, %81
	%83 = load i32, i32* @e
	%84 = load i32, i32* %5
	%85 = add i32 %83, %84
	%86 = load i32, i32* @g
	%87 = sub i32 %85, %86
	%88 = load i32, i32* @h
	%89 = add i32 %87, %88
	%90 = sub i32 %82, %89
	store i32 %90, i32* %1
	br label %91

91:
	%92 = load i32, i32* %1
	ret i32 %92

}

define dso_local i32 @main() {
0:
	%1 = alloca i32
	store i32 1, i32* @g
	store i32 2, i32* @h
	store i32 4, i32* @e
	store i32 6, i32* @f
	%2 = call i32 @EightWhile()
	store i32 %2, i32* %1
	br label %3

3:
	%4 = load i32, i32* %1
	ret i32 %4

}

