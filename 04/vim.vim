VGJ:let l=map(split(getline(1),'\_s'),'str2nr(v:val)')
:%d
:for i in range(9)
let l[i+3]-=l[i%3]
endfor
:call setline(1, (l[3]*l[7]*l[11]+l[6]*l[10]*l[5]+l[9]*l[4]*l[8]-l[5]*l[7]*l[9]-l[8]*l[10]*l[3]-l[11]*l[4]*l[6])/6)
ZZ