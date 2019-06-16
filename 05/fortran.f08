program x
character(len=50)::s
read(*,'(a)')s
print('(a)'),s
j=index(s,'T')
k=0
do while(k.eq.0)
read(*, '(a)')s
s(j:j)='R'
k=index(s,'K')
if(k.gt.0)then
forall(i=k:j)s(i:i)='R'
end if
print('(a)'),s
end do
end program x