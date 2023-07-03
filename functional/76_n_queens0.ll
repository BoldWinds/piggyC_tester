@ans = dso_local global [50 x i32] zeroinitializer
@sum = dso_local global i32 0
@n = dso_local global i32 0
@row = dso_local global [50 x i32] zeroinitializer
@line1 = dso_local global [50 x i32] zeroinitializer
@line2 = dso_local global [100 x i32] zeroinitializer

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

define dso_local void @printans() {
0:
	%1 = alloca i32
	%2 = load i32, i32* @sum
	%3 = add i32 %2, 1
	store i32 %3, i32* @sum
	store i32 1, i32* %1
	br label %4

4:
	%5 = load i32, i32* %1
	%6 = load i32, i32* @n
	%7 = icmp sle i32 %5, %6
	br i1 %7, label %8, label %20

8:
	%9 = load i32, i32* %1
	%10 = getelementptr [50 x i32], [50 x i32]* @ans, i32 0, i32 %9
	%11 = load i32, i32* %10
	call void @putint(i32 %11)
	%12 = load i32, i32* %1
	%13 = load i32, i32* @n
	%14 = icmp eq i32 %12, %13
	br i1 %14, label %15, label %16

15:
	call void @putch(i32 10)
	br label %21

16:
	call void @putch(i32 32)
	br label %17

17:
	%18 = load i32, i32* %1
	%19 = add i32 %18, 1
	store i32 %19, i32* %1
	br label %4

20:
	br label %21

21:
	ret void

}

define dso_local void @f(i32 %0) {
1:
	%2 = alloca i32
	%3 = alloca i32
	store i32 %0, i32* %2
	store i32 1, i32* %3
	br label %4

4:
	%5 = load i32, i32* %3
	%6 = load i32, i32* @n
	%7 = icmp sle i32 %5, %6
	br i1 %7, label %8, label %68

8:
	%9 = load i32, i32* %3
	%10 = getelementptr [50 x i32], [50 x i32]* @row, i32 0, i32 %9
	%11 = load i32, i32* %10
	%12 = icmp ne i32 %11, 1
	br i1 %12, label %13, label %65

13:
	%14 = load i32, i32* %2
	%15 = load i32, i32* %3
	%16 = add i32 %14, %15
	%17 = getelementptr [50 x i32], [50 x i32]* @line1, i32 0, i32 %16
	%18 = load i32, i32* %17
	%19 = icmp eq i32 %18, 0
	br i1 %19, label %20, label %65

20:
	%21 = load i32, i32* @n
	%22 = load i32, i32* %2
	%23 = add i32 %21, %22
	%24 = load i32, i32* %3
	%25 = sub i32 %23, %24
	%26 = getelementptr [100 x i32], [100 x i32]* @line2, i32 0, i32 %25
	%27 = load i32, i32* %26
	%28 = icmp ne i32 %27, 0
	%29 = xor i1 %28, true
	br i1 %29, label %30, label %65

30:
	%31 = load i32, i32* %3
	%32 = load i32, i32* %2
	%33 = getelementptr [50 x i32], [50 x i32]* @ans, i32 0, i32 %32
	store i32 %31, i32* %33
	%34 = load i32, i32* %2
	%35 = load i32, i32* @n
	%36 = icmp eq i32 %34, %35
	br i1 %36, label %37, label %38

37:
	call void @printans()
	br label %38

38:
	%39 = load i32, i32* %3
	%40 = getelementptr [50 x i32], [50 x i32]* @row, i32 0, i32 %39
	store i32 1, i32* %40
	%41 = load i32, i32* %2
	%42 = load i32, i32* %3
	%43 = add i32 %41, %42
	%44 = getelementptr [50 x i32], [50 x i32]* @line1, i32 0, i32 %43
	store i32 1, i32* %44
	%45 = load i32, i32* @n
	%46 = load i32, i32* %2
	%47 = add i32 %45, %46
	%48 = load i32, i32* %3
	%49 = sub i32 %47, %48
	%50 = getelementptr [100 x i32], [100 x i32]* @line2, i32 0, i32 %49
	store i32 1, i32* %50
	%51 = load i32, i32* %2
	%52 = add i32 %51, 1
	call void @f(i32 %52)
	%53 = load i32, i32* %3
	%54 = getelementptr [50 x i32], [50 x i32]* @row, i32 0, i32 %53
	store i32 0, i32* %54
	%55 = load i32, i32* %2
	%56 = load i32, i32* %3
	%57 = add i32 %55, %56
	%58 = getelementptr [50 x i32], [50 x i32]* @line1, i32 0, i32 %57
	store i32 0, i32* %58
	%59 = load i32, i32* @n
	%60 = load i32, i32* %2
	%61 = add i32 %59, %60
	%62 = load i32, i32* %3
	%63 = sub i32 %61, %62
	%64 = getelementptr [100 x i32], [100 x i32]* @line2, i32 0, i32 %63
	store i32 0, i32* %64
	br label %65

65:
	%66 = load i32, i32* %3
	%67 = add i32 %66, 1
	store i32 %67, i32* %3
	br label %4

68:
	br label %69

69:
	ret void

}

define dso_local i32 @main() {
0:
	%1 = alloca i32
	%2 = alloca i32
	%3 = call i32 @getint()
	store i32 %3, i32* %2
	br label %4

4:
	%5 = load i32, i32* %2
	%6 = icmp sgt i32 %5, 0
	br i1 %6, label %7, label %11

7:
	%8 = call i32 @getint()
	store i32 %8, i32* @n
	call void @f(i32 1)
	%9 = load i32, i32* %2
	%10 = sub i32 %9, 1
	store i32 %10, i32* %2
	br label %4

11:
	%12 = load i32, i32* @sum
	store i32 %12, i32* %1
	br label %13

13:
	%14 = load i32, i32* %1
	ret i32 %14

}

