@T=private unnamed_addr constant[7x i8]c"%d%d%d\00",align 1
@A=global i32*bitcast([7x i8]*@T to i32*),align 8
@j=common global i32 0,align 4
@k=common global i32 0,align 4
@l=common global i32 0,align 4
@S=private unnamed_addr constant[3x i8]c"%d\00",align 1
define i32@main(){%1=alloca i32,align 4
%2=alloca i32,align 4
%3=alloca i32,align 4
%4=alloca i32,align 4
%5=alloca i32,align 4
%6=alloca i32,align 4
%7=alloca i32,align 4
%8=alloca i32,align 4
%9=alloca i32,align 4
%10=load i32*,i32**@A,align 8
%11=bitcast i32*%10 to i8*
%12=call i32(i8*,...)@scanf(i8*%11,i32*@j,i32*@k,i32*@l)%13=load i32*,i32**@A,align 8
%14=bitcast i32*%13 to i8*
%15=call i32(i8*,...)@scanf(i8*%14,i32*%1,i32*%2,i32*%3)%16=load i32,i32*@j,align 4
%17=load i32,i32*%1,align 4
%18=sub nsw i32 %17,%16
store i32 %18,i32*%1,align 4
%19=load i32,i32*@k,align 4
%20=load i32,i32*%2,align 4
%21=sub nsw i32 %20,%19
store i32 %21,i32*%2,align 4
%22=load i32,i32*@l,align 4
%23=load i32,i32*%3,align 4
%24=sub nsw i32 %23,%22
store i32 %24,i32*%3,align 4
%25=load i32*,i32**@A,align 8
%26=bitcast i32*%25 to i8*
%27=call i32(i8*,...)@scanf(i8*%26,i32*%4,i32*%5,i32*%6)%28=load i32,i32*@j,align 4
%29=load i32,i32*%4,align 4
%30=sub nsw i32 %29,%28
store i32 %30,i32*%4,align 4
%31=load i32,i32*@k,align 4
%32=load i32,i32*%5,align 4
%33=sub nsw i32 %32,%31
store i32 %33,i32*%5,align 4
%34=load i32,i32*@l,align 4
%35=load i32,i32*%6,align 4
%36=sub nsw i32 %35,%34
store i32 %36,i32*%6,align 4
%37=load i32*,i32**@A,align 8
%38=bitcast i32*%37 to i8*
%39=call i32(i8*,...)@scanf(i8*%38,i32*%7,i32*%8,i32*%9)%40=load i32,i32*@j,align 4
%41=load i32,i32*%7,align 4
%42=sub nsw i32 %41,%40
store i32 %42,i32*%7,align 4
%43=load i32,i32*@k,align 4
%44=load i32,i32*%8,align 4
%45=sub nsw i32 %44,%43
store i32 %45,i32*%8,align 4
%46=load i32,i32*@l,align 4
%47=load i32,i32*%9,align 4
%48=sub nsw i32 %47,%46
store i32 %48,i32*%9,align 4
%49=load i32,i32*%1,align 4
%50=load i32,i32*%5,align 4
%51=mul nsw i32 %49,%50
%52=load i32,i32*%9,align 4
%53=mul nsw i32 %51,%52
%54=load i32,i32*%2,align 4
%55=load i32,i32*%6,align 4
%56=mul nsw i32 %54,%55
%57=load i32,i32*%7,align 4
%58=mul nsw i32 %56,%57
%59=add nsw i32 %53,%58
%60=load i32,i32*%3,align 4
%61=load i32,i32*%4,align 4
%62=mul nsw i32 %60,%61
%63=load i32,i32*%8,align 4
%64=mul nsw i32 %62,%63
%65=add nsw i32 %59,%64
%66=load i32,i32*%1,align 4
%67=load i32,i32*%8,align 4
%68=mul nsw i32 %66,%67
%69=load i32,i32*%6,align 4
%70=mul nsw i32 %68,%69
%71=sub nsw i32 %65,%70
%72=load i32,i32*%2,align 4
%73=load i32,i32*%9,align 4
%74=mul nsw i32 %72,%73
%75=load i32,i32*%4,align 4
%76=mul nsw i32 %74,%75
%77=sub nsw i32 %71,%76
%78=load i32,i32*%3,align 4
%79=load i32,i32*%7,align 4
%80=mul nsw i32 %78,%79
%81=load i32,i32*%5,align 4
%82=mul nsw i32 %80,%81
%83=sub nsw i32 %77,%82
%84=sdiv i32 %83,6
%85=call i32(i8*,...)@printf(i8*getelementptr inbounds([3x i8],[3x i8]*@S,i32 0,i32 0),i32 %84)ret i32 0}declare i32 @scanf(i8*,...)declare i32 @printf(i8*,...)