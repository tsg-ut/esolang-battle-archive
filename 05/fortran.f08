program x
character(len=50)::s,t
read(*,'(a)')s
print('(a)'),s
j=index(s,'T')
k=0
do while(k==0)
read(*, '(a)')t
k=index(t,'K')
if(k>0)forall(i=k:j)s(i:i)='R'
print('(a)'),s
end do
end program x
