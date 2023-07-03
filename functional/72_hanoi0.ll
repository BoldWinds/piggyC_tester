
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

define dso_local void @move(i32 %0, i32 %1) {
2:
	%3 = alloca i32
	%4 = alloca i32
	store i32 %0, i32* %3
	store i32 %1, i32* %4
	%5 = load i32, i32* %3
	call void @putint(i32 %5)
	call void @putch(i32 32)
	%6 = load i32, i32* %4
	call void @putint(i32 %6)
	call void @putch(i32 44)
	call void @putch(i32 32)
	br label %7

7:
	ret void

}

define dso_local void @hanoi(i32 %0, i32 %1, i32 %2, i32 %3) {
4:
	%5 = alloca i32
	%6 = alloca i32
	%7 = alloca i32
	%8 = alloca i32
	store i32 %0, i32* %5
	store i32 %1, i32* %6
	store i32 %2, i32* %7
	store i32 %3, i32* %8
	%9 = load i32, i32* %5
	%10 = icmp eq i32 %9, 1
	br i1 %10, label %11, label %14

11:
	%12 = load i32, i32* %6
	%13 = load i32, i32* %8
	call void @move(i32 %12, i32 %13)
	br label %27

14:
	%15 = load i32, i32* %5
	%16 = sub i32 %15, 1
	%17 = load i32, i32* %6
	%18 = load i32, i32* %8
	%19 = load i32, i32* %7
	call void @hanoi(i32 %16, i32 %17, i32 %18, i32 %19)
	%20 = load i32, i32* %6
	%21 = load i32, i32* %8
	call void @move(i32 %20, i32 %21)
	%22 = load i32, i32* %5
	%23 = sub i32 %22, 1
	%24 = load i32, i32* %7
	%25 = load i32, i32* %6
	%26 = load i32, i32* %8
	call void @hanoi(i32 %23, i32 %24, i32 %25, i32 %26)
	br label %27

27:
	br label %28

28:
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
	call void @hanoi(i32 %8, i32 1, i32 2, i32 3)
	call void @putch(i32 10)
	%9 = load i32, i32* %2
	%10 = sub i32 %9, 1
	store i32 %10, i32* %2
	br label %4

11:
	store i32 0, i32* %1
	br label %12

12:
	%13 = load i32, i32* %1
	ret i32 %13

}

