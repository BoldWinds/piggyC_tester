
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

define dso_local void @reverse(i32 %0) {
1:
	%2 = alloca i32
	%3 = alloca i32
	store i32 %0, i32* %2
	%4 = load i32, i32* %2
	%5 = icmp sle i32 %4, 1
	br i1 %5, label %6, label %9

6:
	%7 = call i32 @getint()
	store i32 %7, i32* %3
	%8 = load i32, i32* %3
	call void @putint(i32 %8)
	br label %14

9:
	%10 = call i32 @getint()
	store i32 %10, i32* %3
	%11 = load i32, i32* %2
	%12 = sub i32 %11, 1
	call void @reverse(i32 %12)
	%13 = load i32, i32* %3
	call void @putint(i32 %13)
	br label %14

14:
	br label %15

15:
	ret void

}

define dso_local i32 @main() {
0:
	%1 = alloca i32
	%2 = alloca i32
	store i32 200, i32* %2
	%3 = load i32, i32* %2
	call void @reverse(i32 %3)
	store i32 0, i32* %1
	br label %4

4:
	%5 = load i32, i32* %1
	ret i32 %5

}

