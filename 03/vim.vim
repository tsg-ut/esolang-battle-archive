:for i in range(51)
let l=getline(i)
call setline(i,!(float2nr(sqrt(1+64*(l[0]*16+l[1]*8+l[2]*4+l[3]*2+l[4])+l[5]*32+l[6]*16+l[7]*8)*99)%99))
endfor
:wq
