@g = dso_local global i32 0

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

define dso_local i32 @func(i32 %0) {
1:
	%2 = alloca i32
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = load i32, i32* @g
	%5 = load i32, i32* %3
	%6 = add i32 %4, %5
	store i32 %6, i32* @g
	%7 = load i32, i32* @g
	call void @putint(i32 %7)
	%8 = load i32, i32* @g
	store i32 %8, i32* %2
	br label %9

9:
	%10 = load i32, i32* %2
	ret i32 %10

}

define dso_local i32 @main() {
0:
	%1 = alloca i32
	%2 = alloca i32
	%3 = call i32 @getint()
	store i32 %3, i32* %2
	%4 = load i32, i32* %2
	%5 = icmp sgt i32 %4, 10
	br i1 %5, label %6, label %11

6:
	%7 = load i32, i32* %2
	%8 = call i32 @func(i32 %7)
	%9 = icmp ne i32 %8, 0
	br i1 %9, label %10, label %11

10:
	store i32 1, i32* %2
	br label %12

11:
	store i32 0, i32* %2
	br label %12

12:
	%13 = call i32 @getint()
	store i32 %13, i32* %2
	%14 = load i32, i32* %2
	%15 = icmp sgt i32 %14, 11
	br i1 %15, label %16, label %21

16:
	%17 = load i32, i32* %2
	%18 = call i32 @func(i32 %17)
	%19 = icmp ne i32 %18, 0
	br i1 %19, label %20, label %21

20:
	store i32 1, i32* %2
	br label %22

21:
	store i32 0, i32* %2
	br label %22

22:
	%23 = call i32 @getint()
	store i32 %23, i32* %2
	%24 = load i32, i32* %2
	%25 = icmp sle i32 %24, 99
	br i1 %25, label %30, label %26

26:
	%27 = load i32, i32* %2
	%28 = call i32 @func(i32 %27)
	%29 = icmp ne i32 %28, 0
	br i1 %29, label %30, label %31

30:
	store i32 1, i32* %2
	br label %32

31:
	store i32 0, i32* %2
	br label %32

32:
	%33 = call i32 @getint()
	store i32 %33, i32* %2
	%34 = load i32, i32* %2
	%35 = icmp sle i32 %34, 100
	br i1 %35, label %40, label %36

36:
	%37 = load i32, i32* %2
	%38 = call i32 @func(i32 %37)
	%39 = icmp ne i32 %38, 0
	br i1 %39, label %40, label %41

40:
	store i32 1, i32* %2
	br label %42

41:
	store i32 0, i32* %2
	br label %42

42:
	%43 = call i32 @func(i32 99)
	%44 = icmp ne i32 %43, 0
	%45 = xor i1 %44, true
	br i1 %45, label %46, label %50

46:
	%47 = call i32 @func(i32 100)
	%48 = icmp ne i32 %47, 0
	br i1 %48, label %49, label %50

49:
	store i32 1, i32* %2
	br label %51

50:
	store i32 0, i32* %2
	br label %51

51:
	store i32 0, i32* %1
	br label %52

52:
	%53 = load i32, i32* %1
	ret i32 %53

}

