@z=glob`dd`;$A+=(@z[$_]-=@z[$_+3])*($_>5&&@z[++$_%3+3]*@z[++$_%3]-@z[$_%3+3]*@z[--$_%3])for 0..8;print$A/6