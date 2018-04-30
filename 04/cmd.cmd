set /P s=
set /a a=%s:~0,2%
set /a b=%s:~3,2%
set /a c=%s:~6,2%
set /a d=%s:~9,2%
set /a e=%s:~12,2%
set /a f=%s:~15,2%
set /a g=%s:~18,2%-a
set /a h=%s:~21,2%-b
set /a i=%s:~24,2%-c
set /a j=%s:~27,2%-a
set /a k=%s:~30,2%-b
set /a l=%s:~33,2%-c
set /a w=(e-b)*(i*j-g*l)
set /a x=(f-c)*(g*k-h*j)
set /a y=(d-a)*(h*l-i*k)
set /a z=(w+x+y)/6
echo %z%