@z=glob`dd`;$A+=int($_/6)*(@z[$_]-=@z[$_+3])*(@z[$s=++$_%3+3]*@z[$t=($s+1)%3]-@z[$s-3]*@z[$t+3])for(0..8);print$A/6