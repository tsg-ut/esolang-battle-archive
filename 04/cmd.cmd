set /p line=
set /a j=%line:~0,2%
set /a k=%line:~3,2%
set /a l=%line:~6,2%
set /a a=%line:~9,2% - %j%
set /a b=%line:~12,2% - %k%
set /a c=%line:~15,2% - %l%
set /a d=%line:~18,2% - %j%
set /a e=%line:~21,2% - %k%
set /a f=%line:~24,2% - %l%
set /a g=%line:~27,2% - %j%
set /a h=%line:~30,2% - %k%
set /a i=%line:~33,2% - %l%
set /a v=(%a%*%e%*%i%+%b%*%f%*%g%+%c%*%d%*%h%-%a%*%h%*%f%-%b%*%i%*%d%-%c%*%g%*%e%)/6

echo %v%