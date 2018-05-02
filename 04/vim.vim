VGJ:let l=map(split(getline(1),' '),'str2nr')
:for i in range(9)
let l[i+3]-=l[i%3]
endfor
ggVGc=(l[11]*(l[7]*l[3]-l[4]*l[6])-l[10]*(l[3]*l[8]-l[5]*l[6])+l[9]*(l[4]*l[8]-l[7]*l[5]))/6
ZZ