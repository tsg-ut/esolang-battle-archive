@s=constant [25 x i8] c"%d%d%d%d%d%d%d%d%d%d%d%d\00"@a=global i32 0@b=global i32 0@c=global i32 0@d=global i32 0@e=global i32 0@f=global i32 0@g=global i32 0@h=global i32 0@i=global i32 0@j=global i32 0@k=global i32 0@l=global i32 0@t=constant[3 x i8]c"%d\00"
define i8@main(){
call i32(i8*,...)@scanf(i8* getelementptr([25 x i8],[25 x i8]*@s,i64 0,i64 0),i32*@a,i32*@b,i32*@c,i32*@d,i32*@e,i32*@f,i32*@g,i32*@h,i32*@i,i32*@j,i32*@k,i32*@l)
load i32,i32*@a
load i32,i32*@d
sub i32%3,%2
load i32,i32*@b
load i32,i32*@e
sub i32%6,%5
load i32,i32*@c
load i32,i32*@f
sub i32%9,%8
load i32,i32*@g
sub i32%11,%2
load i32,i32*@h
sub i32%13,%5
load i32,i32*@i
sub i32%15,%8
load i32,i32*@j
sub i32%17,%2
load i32,i32*@k
sub i32%19,%5
load i32,i32*@l
sub i32%21,%8
mul i32%16,%7
mul i32%20,%10
mul i32%22,%14
mul i32%14,%10
mul i32%22,%7
mul i32%20,%16
sub i32%25,%28
mul i32%29,%4
sub i32%24,%27
mul i32%31,%12
sub i32%23,%26
mul i32%33,%18
add i32%34,%30
add i32%35,%32
sdiv i32%36,6
call i32(i8*,...)@printf(i8* getelementptr([3 x i8],[3 x i8]*@t,i64 0,i64 0),i32%37)
ret i8 0}
declare i32@scanf(i8*,...)
declare i32@printf(i8*,...)