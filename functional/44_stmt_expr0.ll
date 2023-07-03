@k = dso_local global i32 0
@n = dso_local constant i32 10

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
	store i32 0, i32* %2
	store i32 1, i32* @k
	br label %3

3:
	%4 = load i32, i32* %2
	%5 = icmp sle i32 %4, 9
	br i1 %5, label %6, label %14

6:
	%7 = load i32, i32* %2
	%8 = add i32 %7, 1
	store i32 %8, i32* %2
	%9 = load i32, i32* @k
	%10 = add i32 %9, 1
	%11 = load i32, i32* @k
	%12 = load i32, i32* @k
	%13 = add i32 %11, %12
	store i32 %13, i32* @k
	br label %3

14:
	%15 = load i32, i32* @k
	call void @putint(i32 %15)
	%16 = load i32, i32* @k
	store i32 %16, i32* %1
	br label %17

17:
	%18 = load i32, i32* %1
	ret i32 %18

}

