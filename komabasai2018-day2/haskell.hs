g x=[t|t<-[0..32],x!!t=='1',x!!(t+5)=='1',x!!(t+12)=='1',x!!(t+17)=='1']!!0
f x|i<-g x=(replicate i '0')++"1"++(replicate (49-i) '0')
main=interact$f