@TOKEN_NUM = dso_local constant i32 0
@TOKEN_OTHER = dso_local constant i32 1
@last_char = dso_local global i32 32
@num = dso_local global i32 0
@other = dso_local global i32 0
@cur_token = dso_local global i32 0

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

define dso_local i32 @next_char() {
0:
	%1 = alloca i32
	%2 = call i32 @getch()
	store i32 %2, i32* @last_char
	%3 = load i32, i32* @last_char
	store i32 %3, i32* %1
	br label %4

4:
	%5 = load i32, i32* %1
	ret i32 %5

}

define dso_local i32 @is_space(i32 %0) {
1:
	%2 = alloca i32
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = load i32, i32* %3
	%5 = icmp eq i32 %4, 32
	br i1 %5, label %9, label %6

6:
	%7 = load i32, i32* %3
	%8 = icmp eq i32 %7, 10
	br i1 %8, label %9, label %10

9:
	store i32 1, i32* %2
	br label %12

10:
	store i32 0, i32* %2
	br label %12

11:
	br label %12

12:
	%13 = load i32, i32* %2
	ret i32 %13

}

define dso_local i32 @is_num(i32 %0) {
1:
	%2 = alloca i32
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = load i32, i32* %3
	%5 = icmp sge i32 %4, 48
	br i1 %5, label %6, label %10

6:
	%7 = load i32, i32* %3
	%8 = icmp sle i32 %7, 57
	br i1 %8, label %9, label %10

9:
	store i32 1, i32* %2
	br label %12

10:
	store i32 0, i32* %2
	br label %12

11:
	br label %12

12:
	%13 = load i32, i32* %2
	ret i32 %13

}

define dso_local i32 @next_token() {
0:
	%1 = alloca i32
	br label %2

2:
	%3 = load i32, i32* @last_char
	%4 = call i32 @is_space(i32 %3)
	%5 = icmp ne i32 %4, 0
	br i1 %5, label %6, label %8

6:
	%7 = call i32 @next_char()
	br label %2

8:
	%9 = load i32, i32* @last_char
	%10 = call i32 @is_num(i32 %9)
	%11 = icmp ne i32 %10, 0
	br i1 %11, label %12, label %26

12:
	%13 = load i32, i32* @last_char
	%14 = sub i32 %13, 48
	store i32 %14, i32* @num
	br label %15

15:
	%16 = call i32 @next_char()
	%17 = call i32 @is_num(i32 %16)
	%18 = icmp ne i32 %17, 0
	br i1 %18, label %19, label %25

19:
	%20 = load i32, i32* @num
	%21 = mul i32 %20, 10
	%22 = load i32, i32* @last_char
	%23 = add i32 %21, %22
	%24 = sub i32 %23, 48
	store i32 %24, i32* @num
	br label %15

25:
	store i32 0, i32* @cur_token
	br label %29

26:
	%27 = load i32, i32* @last_char
	store i32 %27, i32* @other
	%28 = call i32 @next_char()
	store i32 1, i32* @cur_token
	br label %29

29:
	%30 = load i32, i32* @cur_token
	store i32 %30, i32* %1
	br label %31

31:
	%32 = load i32, i32* %1
	ret i32 %32

}

define dso_local i32 @panic() {
0:
	%1 = alloca i32
	call void @putch(i32 112)
	call void @putch(i32 97)
	call void @putch(i32 110)
	call void @putch(i32 105)
	call void @putch(i32 99)
	call void @putch(i32 33)
	call void @putch(i32 10)
	store i32 -1, i32* %1
	br label %2

2:
	%3 = load i32, i32* %1
	ret i32 %3

}

define dso_local i32 @get_op_prec(i32 %0) {
1:
	%2 = alloca i32
	%3 = alloca i32
	store i32 %0, i32* %3
	%4 = load i32, i32* %3
	%5 = icmp eq i32 %4, 43
	br i1 %5, label %9, label %6

6:
	%7 = load i32, i32* %3
	%8 = icmp eq i32 %7, 45
	br i1 %8, label %9, label %10

9:
	store i32 10, i32* %2
	br label %21

10:
	%11 = load i32, i32* %3
	%12 = icmp eq i32 %11, 42
	br i1 %12, label %19, label %13

13:
	%14 = load i32, i32* %3
	%15 = icmp eq i32 %14, 47
	br i1 %15, label %19, label %16

16:
	%17 = load i32, i32* %3
	%18 = icmp eq i32 %17, 37
	br i1 %18, label %19, label %20

19:
	store i32 20, i32* %2
	br label %21

20:
	store i32 0, i32* %2
	br label %21

21:
	%22 = load i32, i32* %2
	ret i32 %22

}

define dso_local void @stack_push(i32* %0, i32 %1) {
2:
	%3 = alloca i32*
	%4 = alloca i32
	store i32* %0, i32** %3
	store i32 %1, i32* %4
	%5 = load i32*, i32** %3
	%6 = getelementptr i32, i32* %5, i32 0
	%7 = load i32, i32* %6
	%8 = add i32 %7, 1
	%9 = load i32*, i32** %3
	%10 = getelementptr i32, i32* %9, i32 0
	store i32 %8, i32* %10
	%11 = load i32, i32* %4
	%12 = load i32*, i32** %3
	%13 = getelementptr i32, i32* %12, i32 0
	%14 = load i32, i32* %13
	%15 = load i32*, i32** %3
	%16 = getelementptr i32, i32* %15, i32 %14
	store i32 %11, i32* %16
	br label %17

17:
	ret void

}

define dso_local i32 @stack_pop(i32* %0) {
1:
	%2 = alloca i32
	%3 = alloca i32*
	%4 = alloca i32
	store i32* %0, i32** %3
	%5 = load i32*, i32** %3
	%6 = getelementptr i32, i32* %5, i32 0
	%7 = load i32, i32* %6
	%8 = load i32*, i32** %3
	%9 = getelementptr i32, i32* %8, i32 %7
	%10 = load i32, i32* %9
	store i32 %10, i32* %4
	%11 = load i32*, i32** %3
	%12 = getelementptr i32, i32* %11, i32 0
	%13 = load i32, i32* %12
	%14 = sub i32 %13, 1
	%15 = load i32*, i32** %3
	%16 = getelementptr i32, i32* %15, i32 0
	store i32 %14, i32* %16
	%17 = load i32, i32* %4
	store i32 %17, i32* %2
	br label %18

18:
	%19 = load i32, i32* %2
	ret i32 %19

}

define dso_local i32 @stack_peek(i32* %0) {
1:
	%2 = alloca i32
	%3 = alloca i32*
	store i32* %0, i32** %3
	%4 = load i32*, i32** %3
	%5 = getelementptr i32, i32* %4, i32 0
	%6 = load i32, i32* %5
	%7 = load i32*, i32** %3
	%8 = getelementptr i32, i32* %7, i32 %6
	%9 = load i32, i32* %8
	store i32 %9, i32* %2
	br label %10

10:
	%11 = load i32, i32* %2
	ret i32 %11

}

define dso_local i32 @stack_size(i32* %0) {
1:
	%2 = alloca i32
	%3 = alloca i32*
	store i32* %0, i32** %3
	%4 = load i32*, i32** %3
	%5 = getelementptr i32, i32* %4, i32 0
	%6 = load i32, i32* %5
	store i32 %6, i32* %2
	br label %7

7:
	%8 = load i32, i32* %2
	ret i32 %8

}

define dso_local i32 @eval_op(i32 %0, i32 %1, i32 %2) {
3:
	%4 = alloca i32
	%5 = alloca i32
	%6 = alloca i32
	%7 = alloca i32
	store i32 %0, i32* %5
	store i32 %1, i32* %6
	store i32 %2, i32* %7
	%8 = load i32, i32* %5
	%9 = icmp eq i32 %8, 43
	br i1 %9, label %10, label %14

10:
	%11 = load i32, i32* %6
	%12 = load i32, i32* %7
	%13 = add i32 %11, %12
	store i32 %13, i32* %4
	br label %43

14:
	%15 = load i32, i32* %5
	%16 = icmp eq i32 %15, 45
	br i1 %16, label %17, label %21

17:
	%18 = load i32, i32* %6
	%19 = load i32, i32* %7
	%20 = sub i32 %18, %19
	store i32 %20, i32* %4
	br label %43

21:
	%22 = load i32, i32* %5
	%23 = icmp eq i32 %22, 42
	br i1 %23, label %24, label %28

24:
	%25 = load i32, i32* %6
	%26 = load i32, i32* %7
	%27 = mul i32 %25, %26
	store i32 %27, i32* %4
	br label %43

28:
	%29 = load i32, i32* %5
	%30 = icmp eq i32 %29, 47
	br i1 %30, label %31, label %35

31:
	%32 = load i32, i32* %6
	%33 = load i32, i32* %7
	%34 = sdiv i32 %32, %33
	store i32 %34, i32* %4
	br label %43

35:
	%36 = load i32, i32* %5
	%37 = icmp eq i32 %36, 37
	br i1 %37, label %38, label %42

38:
	%39 = load i32, i32* %6
	%40 = load i32, i32* %7
	%41 = srem i32 %39, %40
	store i32 %41, i32* %4
	br label %43

42:
	store i32 0, i32* %4
	br label %43

43:
	%44 = load i32, i32* %4
	ret i32 %44

}

define dso_local i32 @eval() {
0:
	%1 = alloca i32
	%2 = alloca [256 x i32]
	%3 = alloca [256 x i32]
	%4 = alloca i32
	%5 = alloca i32
	%6 = alloca i32
	%7 = alloca i32
	%8 = alloca i32
	%9 = alloca i32
	%10 = alloca i32
	%11 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 0
	store i32 0, i32* %11
	%12 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 1
	store i32 0, i32* %12
	%13 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 2
	store i32 0, i32* %13
	%14 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 3
	store i32 0, i32* %14
	%15 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 4
	store i32 0, i32* %15
	%16 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 5
	store i32 0, i32* %16
	%17 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 6
	store i32 0, i32* %17
	%18 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 7
	store i32 0, i32* %18
	%19 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 8
	store i32 0, i32* %19
	%20 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 9
	store i32 0, i32* %20
	%21 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 10
	store i32 0, i32* %21
	%22 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 11
	store i32 0, i32* %22
	%23 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 12
	store i32 0, i32* %23
	%24 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 13
	store i32 0, i32* %24
	%25 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 14
	store i32 0, i32* %25
	%26 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 15
	store i32 0, i32* %26
	%27 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 16
	store i32 0, i32* %27
	%28 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 17
	store i32 0, i32* %28
	%29 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 18
	store i32 0, i32* %29
	%30 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 19
	store i32 0, i32* %30
	%31 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 20
	store i32 0, i32* %31
	%32 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 21
	store i32 0, i32* %32
	%33 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 22
	store i32 0, i32* %33
	%34 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 23
	store i32 0, i32* %34
	%35 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 24
	store i32 0, i32* %35
	%36 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 25
	store i32 0, i32* %36
	%37 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 26
	store i32 0, i32* %37
	%38 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 27
	store i32 0, i32* %38
	%39 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 28
	store i32 0, i32* %39
	%40 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 29
	store i32 0, i32* %40
	%41 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 30
	store i32 0, i32* %41
	%42 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 31
	store i32 0, i32* %42
	%43 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 32
	store i32 0, i32* %43
	%44 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 33
	store i32 0, i32* %44
	%45 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 34
	store i32 0, i32* %45
	%46 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 35
	store i32 0, i32* %46
	%47 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 36
	store i32 0, i32* %47
	%48 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 37
	store i32 0, i32* %48
	%49 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 38
	store i32 0, i32* %49
	%50 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 39
	store i32 0, i32* %50
	%51 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 40
	store i32 0, i32* %51
	%52 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 41
	store i32 0, i32* %52
	%53 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 42
	store i32 0, i32* %53
	%54 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 43
	store i32 0, i32* %54
	%55 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 44
	store i32 0, i32* %55
	%56 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 45
	store i32 0, i32* %56
	%57 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 46
	store i32 0, i32* %57
	%58 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 47
	store i32 0, i32* %58
	%59 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 48
	store i32 0, i32* %59
	%60 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 49
	store i32 0, i32* %60
	%61 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 50
	store i32 0, i32* %61
	%62 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 51
	store i32 0, i32* %62
	%63 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 52
	store i32 0, i32* %63
	%64 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 53
	store i32 0, i32* %64
	%65 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 54
	store i32 0, i32* %65
	%66 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 55
	store i32 0, i32* %66
	%67 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 56
	store i32 0, i32* %67
	%68 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 57
	store i32 0, i32* %68
	%69 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 58
	store i32 0, i32* %69
	%70 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 59
	store i32 0, i32* %70
	%71 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 60
	store i32 0, i32* %71
	%72 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 61
	store i32 0, i32* %72
	%73 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 62
	store i32 0, i32* %73
	%74 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 63
	store i32 0, i32* %74
	%75 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 64
	store i32 0, i32* %75
	%76 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 65
	store i32 0, i32* %76
	%77 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 66
	store i32 0, i32* %77
	%78 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 67
	store i32 0, i32* %78
	%79 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 68
	store i32 0, i32* %79
	%80 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 69
	store i32 0, i32* %80
	%81 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 70
	store i32 0, i32* %81
	%82 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 71
	store i32 0, i32* %82
	%83 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 72
	store i32 0, i32* %83
	%84 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 73
	store i32 0, i32* %84
	%85 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 74
	store i32 0, i32* %85
	%86 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 75
	store i32 0, i32* %86
	%87 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 76
	store i32 0, i32* %87
	%88 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 77
	store i32 0, i32* %88
	%89 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 78
	store i32 0, i32* %89
	%90 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 79
	store i32 0, i32* %90
	%91 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 80
	store i32 0, i32* %91
	%92 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 81
	store i32 0, i32* %92
	%93 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 82
	store i32 0, i32* %93
	%94 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 83
	store i32 0, i32* %94
	%95 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 84
	store i32 0, i32* %95
	%96 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 85
	store i32 0, i32* %96
	%97 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 86
	store i32 0, i32* %97
	%98 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 87
	store i32 0, i32* %98
	%99 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 88
	store i32 0, i32* %99
	%100 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 89
	store i32 0, i32* %100
	%101 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 90
	store i32 0, i32* %101
	%102 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 91
	store i32 0, i32* %102
	%103 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 92
	store i32 0, i32* %103
	%104 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 93
	store i32 0, i32* %104
	%105 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 94
	store i32 0, i32* %105
	%106 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 95
	store i32 0, i32* %106
	%107 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 96
	store i32 0, i32* %107
	%108 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 97
	store i32 0, i32* %108
	%109 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 98
	store i32 0, i32* %109
	%110 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 99
	store i32 0, i32* %110
	%111 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 100
	store i32 0, i32* %111
	%112 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 101
	store i32 0, i32* %112
	%113 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 102
	store i32 0, i32* %113
	%114 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 103
	store i32 0, i32* %114
	%115 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 104
	store i32 0, i32* %115
	%116 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 105
	store i32 0, i32* %116
	%117 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 106
	store i32 0, i32* %117
	%118 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 107
	store i32 0, i32* %118
	%119 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 108
	store i32 0, i32* %119
	%120 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 109
	store i32 0, i32* %120
	%121 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 110
	store i32 0, i32* %121
	%122 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 111
	store i32 0, i32* %122
	%123 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 112
	store i32 0, i32* %123
	%124 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 113
	store i32 0, i32* %124
	%125 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 114
	store i32 0, i32* %125
	%126 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 115
	store i32 0, i32* %126
	%127 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 116
	store i32 0, i32* %127
	%128 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 117
	store i32 0, i32* %128
	%129 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 118
	store i32 0, i32* %129
	%130 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 119
	store i32 0, i32* %130
	%131 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 120
	store i32 0, i32* %131
	%132 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 121
	store i32 0, i32* %132
	%133 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 122
	store i32 0, i32* %133
	%134 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 123
	store i32 0, i32* %134
	%135 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 124
	store i32 0, i32* %135
	%136 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 125
	store i32 0, i32* %136
	%137 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 126
	store i32 0, i32* %137
	%138 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 127
	store i32 0, i32* %138
	%139 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 128
	store i32 0, i32* %139
	%140 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 129
	store i32 0, i32* %140
	%141 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 130
	store i32 0, i32* %141
	%142 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 131
	store i32 0, i32* %142
	%143 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 132
	store i32 0, i32* %143
	%144 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 133
	store i32 0, i32* %144
	%145 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 134
	store i32 0, i32* %145
	%146 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 135
	store i32 0, i32* %146
	%147 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 136
	store i32 0, i32* %147
	%148 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 137
	store i32 0, i32* %148
	%149 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 138
	store i32 0, i32* %149
	%150 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 139
	store i32 0, i32* %150
	%151 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 140
	store i32 0, i32* %151
	%152 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 141
	store i32 0, i32* %152
	%153 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 142
	store i32 0, i32* %153
	%154 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 143
	store i32 0, i32* %154
	%155 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 144
	store i32 0, i32* %155
	%156 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 145
	store i32 0, i32* %156
	%157 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 146
	store i32 0, i32* %157
	%158 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 147
	store i32 0, i32* %158
	%159 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 148
	store i32 0, i32* %159
	%160 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 149
	store i32 0, i32* %160
	%161 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 150
	store i32 0, i32* %161
	%162 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 151
	store i32 0, i32* %162
	%163 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 152
	store i32 0, i32* %163
	%164 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 153
	store i32 0, i32* %164
	%165 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 154
	store i32 0, i32* %165
	%166 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 155
	store i32 0, i32* %166
	%167 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 156
	store i32 0, i32* %167
	%168 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 157
	store i32 0, i32* %168
	%169 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 158
	store i32 0, i32* %169
	%170 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 159
	store i32 0, i32* %170
	%171 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 160
	store i32 0, i32* %171
	%172 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 161
	store i32 0, i32* %172
	%173 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 162
	store i32 0, i32* %173
	%174 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 163
	store i32 0, i32* %174
	%175 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 164
	store i32 0, i32* %175
	%176 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 165
	store i32 0, i32* %176
	%177 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 166
	store i32 0, i32* %177
	%178 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 167
	store i32 0, i32* %178
	%179 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 168
	store i32 0, i32* %179
	%180 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 169
	store i32 0, i32* %180
	%181 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 170
	store i32 0, i32* %181
	%182 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 171
	store i32 0, i32* %182
	%183 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 172
	store i32 0, i32* %183
	%184 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 173
	store i32 0, i32* %184
	%185 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 174
	store i32 0, i32* %185
	%186 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 175
	store i32 0, i32* %186
	%187 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 176
	store i32 0, i32* %187
	%188 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 177
	store i32 0, i32* %188
	%189 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 178
	store i32 0, i32* %189
	%190 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 179
	store i32 0, i32* %190
	%191 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 180
	store i32 0, i32* %191
	%192 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 181
	store i32 0, i32* %192
	%193 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 182
	store i32 0, i32* %193
	%194 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 183
	store i32 0, i32* %194
	%195 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 184
	store i32 0, i32* %195
	%196 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 185
	store i32 0, i32* %196
	%197 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 186
	store i32 0, i32* %197
	%198 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 187
	store i32 0, i32* %198
	%199 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 188
	store i32 0, i32* %199
	%200 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 189
	store i32 0, i32* %200
	%201 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 190
	store i32 0, i32* %201
	%202 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 191
	store i32 0, i32* %202
	%203 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 192
	store i32 0, i32* %203
	%204 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 193
	store i32 0, i32* %204
	%205 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 194
	store i32 0, i32* %205
	%206 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 195
	store i32 0, i32* %206
	%207 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 196
	store i32 0, i32* %207
	%208 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 197
	store i32 0, i32* %208
	%209 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 198
	store i32 0, i32* %209
	%210 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 199
	store i32 0, i32* %210
	%211 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 200
	store i32 0, i32* %211
	%212 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 201
	store i32 0, i32* %212
	%213 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 202
	store i32 0, i32* %213
	%214 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 203
	store i32 0, i32* %214
	%215 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 204
	store i32 0, i32* %215
	%216 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 205
	store i32 0, i32* %216
	%217 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 206
	store i32 0, i32* %217
	%218 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 207
	store i32 0, i32* %218
	%219 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 208
	store i32 0, i32* %219
	%220 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 209
	store i32 0, i32* %220
	%221 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 210
	store i32 0, i32* %221
	%222 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 211
	store i32 0, i32* %222
	%223 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 212
	store i32 0, i32* %223
	%224 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 213
	store i32 0, i32* %224
	%225 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 214
	store i32 0, i32* %225
	%226 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 215
	store i32 0, i32* %226
	%227 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 216
	store i32 0, i32* %227
	%228 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 217
	store i32 0, i32* %228
	%229 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 218
	store i32 0, i32* %229
	%230 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 219
	store i32 0, i32* %230
	%231 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 220
	store i32 0, i32* %231
	%232 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 221
	store i32 0, i32* %232
	%233 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 222
	store i32 0, i32* %233
	%234 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 223
	store i32 0, i32* %234
	%235 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 224
	store i32 0, i32* %235
	%236 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 225
	store i32 0, i32* %236
	%237 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 226
	store i32 0, i32* %237
	%238 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 227
	store i32 0, i32* %238
	%239 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 228
	store i32 0, i32* %239
	%240 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 229
	store i32 0, i32* %240
	%241 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 230
	store i32 0, i32* %241
	%242 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 231
	store i32 0, i32* %242
	%243 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 232
	store i32 0, i32* %243
	%244 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 233
	store i32 0, i32* %244
	%245 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 234
	store i32 0, i32* %245
	%246 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 235
	store i32 0, i32* %246
	%247 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 236
	store i32 0, i32* %247
	%248 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 237
	store i32 0, i32* %248
	%249 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 238
	store i32 0, i32* %249
	%250 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 239
	store i32 0, i32* %250
	%251 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 240
	store i32 0, i32* %251
	%252 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 241
	store i32 0, i32* %252
	%253 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 242
	store i32 0, i32* %253
	%254 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 243
	store i32 0, i32* %254
	%255 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 244
	store i32 0, i32* %255
	%256 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 245
	store i32 0, i32* %256
	%257 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 246
	store i32 0, i32* %257
	%258 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 247
	store i32 0, i32* %258
	%259 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 248
	store i32 0, i32* %259
	%260 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 249
	store i32 0, i32* %260
	%261 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 250
	store i32 0, i32* %261
	%262 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 251
	store i32 0, i32* %262
	%263 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 252
	store i32 0, i32* %263
	%264 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 253
	store i32 0, i32* %264
	%265 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 254
	store i32 0, i32* %265
	%266 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 255
	store i32 0, i32* %266
	%267 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 0
	store i32 0, i32* %267
	%268 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 1
	store i32 0, i32* %268
	%269 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 2
	store i32 0, i32* %269
	%270 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 3
	store i32 0, i32* %270
	%271 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 4
	store i32 0, i32* %271
	%272 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 5
	store i32 0, i32* %272
	%273 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 6
	store i32 0, i32* %273
	%274 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 7
	store i32 0, i32* %274
	%275 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 8
	store i32 0, i32* %275
	%276 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 9
	store i32 0, i32* %276
	%277 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 10
	store i32 0, i32* %277
	%278 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 11
	store i32 0, i32* %278
	%279 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 12
	store i32 0, i32* %279
	%280 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 13
	store i32 0, i32* %280
	%281 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 14
	store i32 0, i32* %281
	%282 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 15
	store i32 0, i32* %282
	%283 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 16
	store i32 0, i32* %283
	%284 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 17
	store i32 0, i32* %284
	%285 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 18
	store i32 0, i32* %285
	%286 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 19
	store i32 0, i32* %286
	%287 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 20
	store i32 0, i32* %287
	%288 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 21
	store i32 0, i32* %288
	%289 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 22
	store i32 0, i32* %289
	%290 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 23
	store i32 0, i32* %290
	%291 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 24
	store i32 0, i32* %291
	%292 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 25
	store i32 0, i32* %292
	%293 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 26
	store i32 0, i32* %293
	%294 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 27
	store i32 0, i32* %294
	%295 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 28
	store i32 0, i32* %295
	%296 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 29
	store i32 0, i32* %296
	%297 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 30
	store i32 0, i32* %297
	%298 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 31
	store i32 0, i32* %298
	%299 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 32
	store i32 0, i32* %299
	%300 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 33
	store i32 0, i32* %300
	%301 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 34
	store i32 0, i32* %301
	%302 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 35
	store i32 0, i32* %302
	%303 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 36
	store i32 0, i32* %303
	%304 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 37
	store i32 0, i32* %304
	%305 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 38
	store i32 0, i32* %305
	%306 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 39
	store i32 0, i32* %306
	%307 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 40
	store i32 0, i32* %307
	%308 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 41
	store i32 0, i32* %308
	%309 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 42
	store i32 0, i32* %309
	%310 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 43
	store i32 0, i32* %310
	%311 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 44
	store i32 0, i32* %311
	%312 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 45
	store i32 0, i32* %312
	%313 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 46
	store i32 0, i32* %313
	%314 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 47
	store i32 0, i32* %314
	%315 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 48
	store i32 0, i32* %315
	%316 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 49
	store i32 0, i32* %316
	%317 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 50
	store i32 0, i32* %317
	%318 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 51
	store i32 0, i32* %318
	%319 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 52
	store i32 0, i32* %319
	%320 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 53
	store i32 0, i32* %320
	%321 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 54
	store i32 0, i32* %321
	%322 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 55
	store i32 0, i32* %322
	%323 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 56
	store i32 0, i32* %323
	%324 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 57
	store i32 0, i32* %324
	%325 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 58
	store i32 0, i32* %325
	%326 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 59
	store i32 0, i32* %326
	%327 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 60
	store i32 0, i32* %327
	%328 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 61
	store i32 0, i32* %328
	%329 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 62
	store i32 0, i32* %329
	%330 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 63
	store i32 0, i32* %330
	%331 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 64
	store i32 0, i32* %331
	%332 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 65
	store i32 0, i32* %332
	%333 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 66
	store i32 0, i32* %333
	%334 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 67
	store i32 0, i32* %334
	%335 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 68
	store i32 0, i32* %335
	%336 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 69
	store i32 0, i32* %336
	%337 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 70
	store i32 0, i32* %337
	%338 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 71
	store i32 0, i32* %338
	%339 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 72
	store i32 0, i32* %339
	%340 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 73
	store i32 0, i32* %340
	%341 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 74
	store i32 0, i32* %341
	%342 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 75
	store i32 0, i32* %342
	%343 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 76
	store i32 0, i32* %343
	%344 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 77
	store i32 0, i32* %344
	%345 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 78
	store i32 0, i32* %345
	%346 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 79
	store i32 0, i32* %346
	%347 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 80
	store i32 0, i32* %347
	%348 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 81
	store i32 0, i32* %348
	%349 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 82
	store i32 0, i32* %349
	%350 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 83
	store i32 0, i32* %350
	%351 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 84
	store i32 0, i32* %351
	%352 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 85
	store i32 0, i32* %352
	%353 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 86
	store i32 0, i32* %353
	%354 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 87
	store i32 0, i32* %354
	%355 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 88
	store i32 0, i32* %355
	%356 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 89
	store i32 0, i32* %356
	%357 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 90
	store i32 0, i32* %357
	%358 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 91
	store i32 0, i32* %358
	%359 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 92
	store i32 0, i32* %359
	%360 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 93
	store i32 0, i32* %360
	%361 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 94
	store i32 0, i32* %361
	%362 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 95
	store i32 0, i32* %362
	%363 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 96
	store i32 0, i32* %363
	%364 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 97
	store i32 0, i32* %364
	%365 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 98
	store i32 0, i32* %365
	%366 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 99
	store i32 0, i32* %366
	%367 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 100
	store i32 0, i32* %367
	%368 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 101
	store i32 0, i32* %368
	%369 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 102
	store i32 0, i32* %369
	%370 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 103
	store i32 0, i32* %370
	%371 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 104
	store i32 0, i32* %371
	%372 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 105
	store i32 0, i32* %372
	%373 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 106
	store i32 0, i32* %373
	%374 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 107
	store i32 0, i32* %374
	%375 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 108
	store i32 0, i32* %375
	%376 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 109
	store i32 0, i32* %376
	%377 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 110
	store i32 0, i32* %377
	%378 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 111
	store i32 0, i32* %378
	%379 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 112
	store i32 0, i32* %379
	%380 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 113
	store i32 0, i32* %380
	%381 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 114
	store i32 0, i32* %381
	%382 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 115
	store i32 0, i32* %382
	%383 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 116
	store i32 0, i32* %383
	%384 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 117
	store i32 0, i32* %384
	%385 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 118
	store i32 0, i32* %385
	%386 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 119
	store i32 0, i32* %386
	%387 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 120
	store i32 0, i32* %387
	%388 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 121
	store i32 0, i32* %388
	%389 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 122
	store i32 0, i32* %389
	%390 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 123
	store i32 0, i32* %390
	%391 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 124
	store i32 0, i32* %391
	%392 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 125
	store i32 0, i32* %392
	%393 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 126
	store i32 0, i32* %393
	%394 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 127
	store i32 0, i32* %394
	%395 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 128
	store i32 0, i32* %395
	%396 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 129
	store i32 0, i32* %396
	%397 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 130
	store i32 0, i32* %397
	%398 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 131
	store i32 0, i32* %398
	%399 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 132
	store i32 0, i32* %399
	%400 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 133
	store i32 0, i32* %400
	%401 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 134
	store i32 0, i32* %401
	%402 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 135
	store i32 0, i32* %402
	%403 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 136
	store i32 0, i32* %403
	%404 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 137
	store i32 0, i32* %404
	%405 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 138
	store i32 0, i32* %405
	%406 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 139
	store i32 0, i32* %406
	%407 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 140
	store i32 0, i32* %407
	%408 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 141
	store i32 0, i32* %408
	%409 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 142
	store i32 0, i32* %409
	%410 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 143
	store i32 0, i32* %410
	%411 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 144
	store i32 0, i32* %411
	%412 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 145
	store i32 0, i32* %412
	%413 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 146
	store i32 0, i32* %413
	%414 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 147
	store i32 0, i32* %414
	%415 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 148
	store i32 0, i32* %415
	%416 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 149
	store i32 0, i32* %416
	%417 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 150
	store i32 0, i32* %417
	%418 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 151
	store i32 0, i32* %418
	%419 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 152
	store i32 0, i32* %419
	%420 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 153
	store i32 0, i32* %420
	%421 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 154
	store i32 0, i32* %421
	%422 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 155
	store i32 0, i32* %422
	%423 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 156
	store i32 0, i32* %423
	%424 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 157
	store i32 0, i32* %424
	%425 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 158
	store i32 0, i32* %425
	%426 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 159
	store i32 0, i32* %426
	%427 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 160
	store i32 0, i32* %427
	%428 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 161
	store i32 0, i32* %428
	%429 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 162
	store i32 0, i32* %429
	%430 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 163
	store i32 0, i32* %430
	%431 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 164
	store i32 0, i32* %431
	%432 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 165
	store i32 0, i32* %432
	%433 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 166
	store i32 0, i32* %433
	%434 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 167
	store i32 0, i32* %434
	%435 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 168
	store i32 0, i32* %435
	%436 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 169
	store i32 0, i32* %436
	%437 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 170
	store i32 0, i32* %437
	%438 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 171
	store i32 0, i32* %438
	%439 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 172
	store i32 0, i32* %439
	%440 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 173
	store i32 0, i32* %440
	%441 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 174
	store i32 0, i32* %441
	%442 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 175
	store i32 0, i32* %442
	%443 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 176
	store i32 0, i32* %443
	%444 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 177
	store i32 0, i32* %444
	%445 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 178
	store i32 0, i32* %445
	%446 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 179
	store i32 0, i32* %446
	%447 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 180
	store i32 0, i32* %447
	%448 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 181
	store i32 0, i32* %448
	%449 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 182
	store i32 0, i32* %449
	%450 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 183
	store i32 0, i32* %450
	%451 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 184
	store i32 0, i32* %451
	%452 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 185
	store i32 0, i32* %452
	%453 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 186
	store i32 0, i32* %453
	%454 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 187
	store i32 0, i32* %454
	%455 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 188
	store i32 0, i32* %455
	%456 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 189
	store i32 0, i32* %456
	%457 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 190
	store i32 0, i32* %457
	%458 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 191
	store i32 0, i32* %458
	%459 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 192
	store i32 0, i32* %459
	%460 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 193
	store i32 0, i32* %460
	%461 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 194
	store i32 0, i32* %461
	%462 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 195
	store i32 0, i32* %462
	%463 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 196
	store i32 0, i32* %463
	%464 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 197
	store i32 0, i32* %464
	%465 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 198
	store i32 0, i32* %465
	%466 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 199
	store i32 0, i32* %466
	%467 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 200
	store i32 0, i32* %467
	%468 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 201
	store i32 0, i32* %468
	%469 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 202
	store i32 0, i32* %469
	%470 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 203
	store i32 0, i32* %470
	%471 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 204
	store i32 0, i32* %471
	%472 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 205
	store i32 0, i32* %472
	%473 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 206
	store i32 0, i32* %473
	%474 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 207
	store i32 0, i32* %474
	%475 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 208
	store i32 0, i32* %475
	%476 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 209
	store i32 0, i32* %476
	%477 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 210
	store i32 0, i32* %477
	%478 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 211
	store i32 0, i32* %478
	%479 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 212
	store i32 0, i32* %479
	%480 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 213
	store i32 0, i32* %480
	%481 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 214
	store i32 0, i32* %481
	%482 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 215
	store i32 0, i32* %482
	%483 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 216
	store i32 0, i32* %483
	%484 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 217
	store i32 0, i32* %484
	%485 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 218
	store i32 0, i32* %485
	%486 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 219
	store i32 0, i32* %486
	%487 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 220
	store i32 0, i32* %487
	%488 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 221
	store i32 0, i32* %488
	%489 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 222
	store i32 0, i32* %489
	%490 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 223
	store i32 0, i32* %490
	%491 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 224
	store i32 0, i32* %491
	%492 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 225
	store i32 0, i32* %492
	%493 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 226
	store i32 0, i32* %493
	%494 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 227
	store i32 0, i32* %494
	%495 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 228
	store i32 0, i32* %495
	%496 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 229
	store i32 0, i32* %496
	%497 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 230
	store i32 0, i32* %497
	%498 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 231
	store i32 0, i32* %498
	%499 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 232
	store i32 0, i32* %499
	%500 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 233
	store i32 0, i32* %500
	%501 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 234
	store i32 0, i32* %501
	%502 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 235
	store i32 0, i32* %502
	%503 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 236
	store i32 0, i32* %503
	%504 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 237
	store i32 0, i32* %504
	%505 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 238
	store i32 0, i32* %505
	%506 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 239
	store i32 0, i32* %506
	%507 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 240
	store i32 0, i32* %507
	%508 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 241
	store i32 0, i32* %508
	%509 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 242
	store i32 0, i32* %509
	%510 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 243
	store i32 0, i32* %510
	%511 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 244
	store i32 0, i32* %511
	%512 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 245
	store i32 0, i32* %512
	%513 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 246
	store i32 0, i32* %513
	%514 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 247
	store i32 0, i32* %514
	%515 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 248
	store i32 0, i32* %515
	%516 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 249
	store i32 0, i32* %516
	%517 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 250
	store i32 0, i32* %517
	%518 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 251
	store i32 0, i32* %518
	%519 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 252
	store i32 0, i32* %519
	%520 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 253
	store i32 0, i32* %520
	%521 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 254
	store i32 0, i32* %521
	%522 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 255
	store i32 0, i32* %522
	%523 = load i32, i32* @cur_token
	%524 = icmp ne i32 %523, 0
	br i1 %524, label %525, label %527

525:
	%526 = call i32 @panic()
	store i32 %526, i32* %1
	br label %598

527:
	%528 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 0
	%529 = load i32, i32* @num
	call void @stack_push(i32* %528, i32 %529)
	%530 = call i32 @next_token()
	br label %531

531:
	%532 = load i32, i32* @cur_token
	%533 = icmp eq i32 %532, 1
	br i1 %533, label %534, label %577

534:
	%535 = load i32, i32* @other
	store i32 %535, i32* %4
	%536 = load i32, i32* %4
	%537 = call i32 @get_op_prec(i32 %536)
	%538 = icmp ne i32 %537, 0
	%539 = xor i1 %538, true
	br i1 %539, label %540, label %541

540:
	br label %577

541:
	%542 = call i32 @next_token()
	br label %543

543:
	%544 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 0
	%545 = call i32 @stack_size(i32* %544)
	%546 = icmp ne i32 %545, 0
	br i1 %546, label %547, label %566

547:
	%548 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 0
	%549 = call i32 @stack_peek(i32* %548)
	%550 = call i32 @get_op_prec(i32 %549)
	%551 = load i32, i32* %4
	%552 = call i32 @get_op_prec(i32 %551)
	%553 = icmp sge i32 %550, %552
	br i1 %553, label %554, label %566

554:
	%555 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 0
	%556 = call i32 @stack_pop(i32* %555)
	store i32 %556, i32* %5
	%557 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 0
	%558 = call i32 @stack_pop(i32* %557)
	store i32 %558, i32* %6
	%559 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 0
	%560 = call i32 @stack_pop(i32* %559)
	store i32 %560, i32* %7
	%561 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 0
	%562 = load i32, i32* %5
	%563 = load i32, i32* %7
	%564 = load i32, i32* %6
	%565 = call i32 @eval_op(i32 %562, i32 %563, i32 %564)
	call void @stack_push(i32* %561, i32 %565)
	br label %543

566:
	%567 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 0
	%568 = load i32, i32* %4
	call void @stack_push(i32* %567, i32 %568)
	%569 = load i32, i32* @cur_token
	%570 = icmp ne i32 %569, 0
	br i1 %570, label %571, label %573

571:
	%572 = call i32 @panic()
	store i32 %572, i32* %1
	br label %598

573:
	%574 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 0
	%575 = load i32, i32* @num
	call void @stack_push(i32* %574, i32 %575)
	%576 = call i32 @next_token()
	br label %531

577:
	%578 = call i32 @next_token()
	br label %579

579:
	%580 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 0
	%581 = call i32 @stack_size(i32* %580)
	%582 = icmp ne i32 %581, 0
	br i1 %582, label %583, label %595

583:
	%584 = getelementptr [256 x i32], [256 x i32]* %3, i32 0, i32 0
	%585 = call i32 @stack_pop(i32* %584)
	store i32 %585, i32* %8
	%586 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 0
	%587 = call i32 @stack_pop(i32* %586)
	store i32 %587, i32* %9
	%588 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 0
	%589 = call i32 @stack_pop(i32* %588)
	store i32 %589, i32* %10
	%590 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 0
	%591 = load i32, i32* %8
	%592 = load i32, i32* %10
	%593 = load i32, i32* %9
	%594 = call i32 @eval_op(i32 %591, i32 %592, i32 %593)
	call void @stack_push(i32* %590, i32 %594)
	br label %579

595:
	%596 = getelementptr [256 x i32], [256 x i32]* %2, i32 0, i32 0
	%597 = call i32 @stack_peek(i32* %596)
	store i32 %597, i32* %1
	br label %598

598:
	%599 = load i32, i32* %1
	ret i32 %599

}

define dso_local i32 @main() {
0:
	%1 = alloca i32
	%2 = alloca i32
	%3 = call i32 @getint()
	store i32 %3, i32* %2
	%4 = call i32 @getch()
	%5 = call i32 @next_token()
	br label %6

6:
	%7 = load i32, i32* %2
	%8 = icmp ne i32 %7, 0
	br i1 %8, label %9, label %13

9:
	%10 = call i32 @eval()
	call void @putint(i32 %10)
	call void @putch(i32 10)
	%11 = load i32, i32* %2
	%12 = sub i32 %11, 1
	store i32 %12, i32* %2
	br label %6

13:
	store i32 0, i32* %1
	br label %14

14:
	%15 = load i32, i32* %1
	ret i32 %15

}

