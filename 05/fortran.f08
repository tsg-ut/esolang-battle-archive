1 format(a)
character(51)t,l
read 1,t
2 print 1,t
read 1,l
if(llt(t,l))t(len_trim(l):len_trim(t))=repeat("@",99)
goto 2
end