declare i32@scanf(i8*,...)declare i32@printf(i8*,...)@z=global i32 12@.str=constant [3 x i8] c"%d\00"@a=global [12 x i32] zeroinitializer@q=global i32 0@s=global i32 0define i32@main(i32) #0 {%2=alloca i32%3=alloca i32store i32 0,i32*%2store i32%0,i32*%3br label%4%5=load i32,i32*@z%6=add nsw i32%5,-1store i32%6,i32*@z%7=icmp ne i32%5,0br i1%7,label%8,label%74%9=load i32,i32*@z%10=sext i32%9 to i64%11=getelementptr i32,i32*getelementptr([12 x i32],[12 x i32]*@a,i32 0,i32 0),i64%10%12=call i32(i8*,...)@scanf(i8*getelementptr([3 x i8],[3 x i8]*@.str,i32 0,i32 0),i32*%11)br label%13%14=load i32,i32*@z%15=icmp slt i32%14,9br i1%15,label%16,label%29%17=load i32,i32*@z%18=srem i32%17,3%19=add nsw i32 9,%18%20=sext i32%19 to i64%21=getelementptr[12 x i32],[12 x i32]*@a,i64 0,i64%20%22=load i32,i32*%21%23=load i32,i32*@z%24=sext i32%23 to i64%25=getelementptr[12 x i32],[12 x i32]*@a,i64 0,i64%24%26=load i32,i32*%25%27=sub nsw i32%26,%22store i32%27,i32*%25%28=icmp ne i32%27,0br label%29%30=phi i1[false,%13],[%28,%16]%31=zext i1%30 to i32%32=load i32,i32*@z%33=icmp slt i32%32,3br i1%33,label%34,label%71%35=load i32,i32*@z%36=xor i32%35,-1%37=sub nsw i32 0,%36%38=srem i32%37,3%39=add nsw i32 3,%38store i32%39,i32*%3%40=sext i32%39 to i64%41=getelementptr[12 x i32],[12 x i32]*@a,i64 0,i64%40%42=load i32,i32*%41%43=load i32,i32*@z%44=add nsw i32%43,2%45=srem i32%44,3%46=add nsw i32 6,%45store i32%46,i32*@q%47=sext i32%46 to i64%48=getelementptr[12 x i32],[12 x i32]*@a,i64 0,i64%47%49=load i32,i32*%48%50=mul nsw i32%42,%49%51=load i32,i32*@q%52=sub nsw i32%51,3%53=sext i32%52 to i64%54=getelementptr[12 x i32],[12 x i32]*@a,i64 0,i64%53%55=load i32,i32*%54%56=load i32,i32*%3%57=add nsw i32%56,3%58=sext i32%57 to i64%59=getelementptr[12 x i32],[12 x i32]*@a,i64 0,i64%58%60=load i32,i32*%59%61=mul nsw i32%55,%60%62=sub nsw i32%50,%61%63=load i32,i32*@z%64=sext i32%63 to i64%65=getelementptr[12 x i32],[12 x i32]*@a,i64 0,i64%64%66=load i32,i32*%65%67=mul nsw i32%66,%62store i32%67,i32*%65%68=load i32,i32*@s%69=add nsw i32%68,%67store i32%69,i32*@s%70=icmp ne i32%69,0br label%71%72=phi i1[false,%29],[%70,%34]%73=zext i1%72 to i32br label%4%75=load i32,i32*@s%76=sdiv i32%75,6%77=call i32 (i8*,...)@printf(i8*getelementptr([3 x i8],[3 x i8]*@.str,i32 0,i32 0),i32%76)%78=load i32,i32*%2ret i32%78}