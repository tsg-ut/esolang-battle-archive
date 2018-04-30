set /p q=
set j=%q:~0,2%
set k=%q:~3,2%
set l=%q:~6,2%
set /a a=%q:~9,2%-%j%
set /a b=%q:~12,2%-%k%
set /a c=%q:~15,2%-%l%
set /a d=%q:~18,2%-%j%
set /a e=%q:~21,2%-%k%
set /a f=%q:~24,2%-%l%
set /a g=%q:~27,2%-%j%
set /a h=%q:~30,2%-%k%
set /a i=%q:~33,2%-%l%
set /a v="(a*e*i+b*f*g+c*d*h-a*h*f-b*i*d-c*g*e)/6"
echo %v%