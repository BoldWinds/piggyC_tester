
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
	store i32 56, i32* %2
	store i32 4, i32* %3
	%4 = load i32, i32* %2
	%5 = sub i32 %4, -4
	%6 = load i32, i32* %3
	%7 = add i32 %5, %6
	store i32 %7, i32* %2
	%8 = load i32, i32* %2
	%9 = icmp ne i32 %8, 0
	%10 = xor i1 %9, true
	%11 = xor i1 %10, true
	%12 = xor i1 %11, true
	%13 = zext i1 %12 to i32
	%14 = sub i32 0, %13
	%15 = icmp ne i32 %14, 0
	br i1 %15, label %16, label %17

16:
	store i32 -1, i32* %2
	br label %20

17:
	%18 = load i32, i32* %3
	%19 = add i32 0, %18
	store i32 %19, i32* %2
	br label %20

20:
	%21 = load i32, i32* %2
	call void @putint(i32 %21)
	store i32 0, i32* %1
	br label %22

22:
	%23 = load i32, i32* %1
	ret i32 %23

}

