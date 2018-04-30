set/pq=
for /f "tokens=1-12 delims=%q:~8,1% " %%a in ("%q%") do set/aa=%%d-%%a,b=%%e-%%b,c=%%f-%%c,d=%%g-%%a,e=%%h-%%b,f=%%i-%%c,g=%%j-%%a,h=%%k-%%b,i=%%l-%%c,v=(a*e*i+b*f*g+c*d*h-a*h*f-b*i*d-c*g*e)/6
echo %v%