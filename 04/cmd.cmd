set/p q=
for /f "tokens=1-12 delims=%q:~8,1% " %%a in ("%q%") do (
set /a a=%%d-%%a
set /a b=%%e-%%b
set /a c=%%f-%%c
set /a d=%%g-%%a
set /a e=%%h-%%b
set /a f=%%i-%%c
set /a g=%%j-%%a
set /a h=%%k-%%b
set /a i=%%l-%%c)
set /a v=(a*e*i+b*f*g+c*d*h-a*h*f-b*i*d-c*g*e)/6
echo %v%