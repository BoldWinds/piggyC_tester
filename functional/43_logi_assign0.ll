@a = dso_local global i32 0
@b = dso_local global i32 0

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
	%3 = call i32 @getint()
	store i32 %3, i32* @a
	%4 = call i32 @getint()
	store i32 %4, i32* @b
	%5 = load i32, i32* @a
	%6 = load i32, i32* @b
	%7 = icmp eq i32 %5, %6
	br i1 %7, label %8, label %12

8:
	%9 = load i32, i32* @a
	%10 = icmp ne i32 %9, 3
	br i1 %10, label %11, label %12

11:
	store i32 1, i32* %2
	br label %13

12:
	store i32 0, i32* %2
	br label %13

13:
	%14 = load i32, i32* %2
	store i32 %14, i32* %1
	br label %15

15:
	%16 = load i32, i32* %1
	ret i32 %16

}

