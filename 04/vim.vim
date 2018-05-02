VGJ:let l=map(split(getline(1),' '),'str2nr')
:for i in range(9)
let l[i]-=l[9+i%3]
endfor
cc=(l[8]*(l[1]*l[3]-l[4]*l[0])-l[7]*(l[2]*l[3]-l[0]*l[5])+l[6]*(l[4]*l[2]-l[1]*l[5]))/6
ZZ