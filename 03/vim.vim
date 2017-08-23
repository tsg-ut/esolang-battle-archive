:for i in range(51)
call setline(i,!(float2nr(sqrt("0b".getline(i)."001"+0)*99)%99))
endfor
ZZ