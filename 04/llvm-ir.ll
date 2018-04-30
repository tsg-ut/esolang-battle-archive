@S=global[25x i8]c"%d%d%d%d%d%d%d%d%d%d%d%d\00",align 1
@j=global i32 0,align 4
@k=global i32 0,align 4
@l=global i32 0,align 4
@a=global i32 0,align 4
@b=global i32 0,align 4
@c=global i32 0,align 4
@d=global i32 0,align 4
@e=global i32 0,align 4
@f=global i32 0,align 4
@g=global i32 0,align 4
@h=global i32 0,align 4
@i=global i32 0,align 4
@T=global[3x i8]c"%d\00",align 1
define i32@main(){%1=tail call i32(i8*,...)@scanf(i8*getelementptr inbounds([25x i8],[25x i8]*@S,i64 0,i64 0),i32*@j,i32*@k,i32*@l,i32*@a,i32*@b,i32*@c,i32*@d,i32*@e,i32*@f,i32*@g,i32*@h,i32*@i)
%2=load i32,i32*@j,align 4
%3=load i32,i32*@a,align 4
%4=sub nsw i32 %3,%2
store i32 %4,i32*@a,align 4
%5=load i32,i32*@k,align 4
%6=load i32,i32*@b,align 4
%7=sub nsw i32 %6,%5
store i32 %7,i32*@b,align 4
%8=load i32,i32*@l,align 4
%9=load i32,i32*@c,align 4
%10=sub nsw i32 %9,%8
store i32 %10,i32*@c,align 4
%11=load i32,i32*@d,align 4
%12=sub nsw i32 %11,%2
store i32 %12,i32*@d,align 4
%13=load i32,i32*@e,align 4
%14=sub nsw i32 %13,%5
store i32 %14,i32*@e,align 4
%15=load i32,i32*@f,align 4
%16=sub nsw i32 %15,%8
store i32 %16,i32*@f,align 4
%17=load i32,i32*@g,align 4
%18=sub nsw i32 %17,%2
store i32 %18,i32*@g,align 4
%19=load i32,i32*@h,align 4
%20=sub nsw i32 %19,%5
store i32 %20,i32*@h,align 4
%21=load i32,i32*@i,align 4
%22=sub nsw i32 %21,%8
store i32 %22,i32*@i,align 4
%23=mul i32 %4,%22
%24=mul i32 %23,%14
%25=mul i32 %18,%16
%26=mul i32 %20,%12
%27=mul i32 %16,%4
%28=mul i32 %27,%20
%29=mul i32 %12,%22
%30=mul i32 %18,%14
%31=sub i32 %26,%30
%32=mul i32 %31,%10
%33=sub i32 %25,%29
%34=mul i32 %33,%7
%35=sub i32 %24,%28
%36=add i32 %35,%32
%37=add i32 %36,%34
%38=sdiv i32 %37,6
%39=tail call i32(i8*,...)@printf(i8*getelementptr inbounds([3x i8],[3x i8]*@T,i64 0,i64 0),i32 %38)
ret i32 0}declare i32@scanf(i8*,...)declare i32@printf(i8*,...)