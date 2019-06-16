program x
character(len=50)::s
read(*,'(a)')s
print('(a)'),s
j=index(s,'T')
do while (.true.)
read(*, '(a)')s
s(j:j)='R'
k=index(s,'K')
if(k.gt.0)then
do i=1,k-1
write(*,'(a)',advance='no')' '
end do
do i=k,j
write(*,'(a)',advance='no')'R'
end do
do i=1,50
write(*,'(a)',advance='no')' '
end do
exit
else
print('(a)'),s
end if
end do
end program x