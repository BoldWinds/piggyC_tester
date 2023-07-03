
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

define dso_local i32 @defn() {
0:
	%1 = alloca i32
	store i32 4, i32* %1
	br label %2

2:
	%3 = load i32, i32* %1
	ret i32 %3

}

define dso_local i32 @main() {
0:
	%1 = alloca i32
	%2 = alloca i32
	%3 = call i32 @defn()
	store i32 %3, i32* %2
	%4 = load i32, i32* %2
	store i32 %4, i32* %1
	br label %5

5:
	%6 = load i32, i32* %1
	ret i32 %6

}

