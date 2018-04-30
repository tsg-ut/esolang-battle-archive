set/pq=
for /f "tokens=1-12 delims=%q:~8,1% " %%a in ("%q%") do (
set/aa=%%d-%%a
set/ab=%%e-%%b
set/ac=%%f-%%c
set/ad=%%g-%%a
set/ae=%%h-%%b
set/af=%%i-%%c
set/ag=%%j-%%a
set/ah=%%k-%%b
set/ai=%%l-%%c)
set/av=(a*e*i+b*f*g+c*d*h-a*h*f-b*i*d-c*g*e)/6
echo %v%