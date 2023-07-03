@ascii_0 = dso_local constant i32 48

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

define dso_local i32 @my_getint() {
0:
	%1 = alloca i32
	%2 = alloca i32
	%3 = alloca i32
	store i32 0, i32* %2
	br label %4

4:
	%5 = icmp ne i32 1, 0
	br i1 %5, label %6, label %17

6:
	%7 = call i32 @getch()
	%8 = sub i32 %7, 48
	store i32 %8, i32* %3
	%9 = load i32, i32* %3
	%10 = icmp slt i32 %9, 0
	br i1 %10, label %14, label %11

11:
	%12 = load i32, i32* %3
	%13 = icmp sgt i32 %12, 9
	br i1 %13, label %14, label %15

14:
	br label %4

15:
	br label %17

16:
	br label %4

17:
	%18 = load i32, i32* %3
	store i32 %18, i32* %2
	br label %19

19:
	%20 = icmp ne i32 1, 0
	br i1 %20, label %21, label %36

21:
	%22 = call i32 @getch()
	%23 = sub i32 %22, 48
	store i32 %23, i32* %3
	%24 = load i32, i32* %3
	%25 = icmp sge i32 %24, 0
	br i1 %25, label %26, label %34

26:
	%27 = load i32, i32* %3
	%28 = icmp sle i32 %27, 9
	br i1 %28, label %29, label %34

29:
	%30 = load i32, i32* %2
	%31 = mul i32 %30, 10
	%32 = load i32, i32* %3
	%33 = add i32 %31, %32
	store i32 %33, i32* %2
	br label %35

34:
	br label %36

35:
	br label %19

36:
	%37 = load i32, i32* %2
	store i32 %37, i32* %1
	br label %38

38:
	%39 = load i32, i32* %1
	ret i32 %39

}

define dso_local void @my_putint(i32 %0) {
1:
	%2 = alloca i32
	%3 = alloca [16 x i32]
	%4 = alloca i32
	store i32 %0, i32* %2
	store i32 0, i32* %4
	br label %5

5:
	%6 = load i32, i32* %2
	%7 = icmp sgt i32 %6, 0
	br i1 %7, label %8, label %18

8:
	%9 = load i32, i32* %2
	%10 = srem i32 %9, 10
	%11 = add i32 %10, 48
	%12 = load i32, i32* %4
	%13 = getelementptr [16 x i32], [16 x i32]* %3, i32 0, i32 %12
	store i32 %11, i32* %13
	%14 = load i32, i32* %2
	%15 = sdiv i32 %14, 10
	store i32 %15, i32* %2
	%16 = load i32, i32* %4
	%17 = add i32 %16, 1
	store i32 %17, i32* %4
	br label %5

18:
	br label %19

19:
	%20 = load i32, i32* %4
	%21 = icmp sgt i32 %20, 0
	br i1 %21, label %22, label %28

22:
	%23 = load i32, i32* %4
	%24 = sub i32 %23, 1
	store i32 %24, i32* %4
	%25 = load i32, i32* %4
	%26 = getelementptr [16 x i32], [16 x i32]* %3, i32 0, i32 %25
	%27 = load i32, i32* %26
	call void @putch(i32 %27)
	br label %19

28:
	br label %29

29:
	ret void

}

define dso_local i32 @main() {
0:
	%1 = alloca i32
	%2 = alloca i32
	%3 = alloca i32
	%4 = call i32 @my_getint()
	store i32 %4, i32* %2
	br label %5

5:
	%6 = load i32, i32* %2
	%7 = icmp sgt i32 %6, 0
	br i1 %7, label %8, label %13

8:
	%9 = call i32 @my_getint()
	store i32 %9, i32* %3
	%10 = load i32, i32* %3
	call void @my_putint(i32 %10)
	call void @putch(i32 10)
	%11 = load i32, i32* %2
	%12 = sub i32 %11, 1
	store i32 %12, i32* %2
	br label %5

13:
	store i32 0, i32* %1
	br label %14

14:
	%15 = load i32, i32* %1
	ret i32 %15

}

