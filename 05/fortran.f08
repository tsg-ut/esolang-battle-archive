character(51)t,l
read'(a)',t
2 print'(a)',t
read'(a)',l
if(llt(t,l))t(len_trim(l):len_trim(t))=repeat("@",99)
goto 2
end