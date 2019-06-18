set/pq=
set s=%q:~0,50%
set str=%q%
set len=0

set tl=1
set ss=%q%
:LOOPP
if not "%ss:~0,1%"=="T" (
 set /a tl=%tl%+1
 set ss=%ss:~1%
 goto :LOOPP
)

:LOOP
if not "%str:~0,1%"=="K" (
    set str=%str:~1%
    set /a len=%len%+1
    goto :LOOP
)
set/a x=%len% / 51
set/a y=%len% - %x% * 51
:LOOP2
if not %x% == 0 (
 set/a x=%x%-1
 echo %s%
 goto :LOOP2
)
set i=0
:LOOP3
if not %i% == %y% (
 set /p X= <NUL
 set /a i=%i%+1
 goto :LOOP3
)

:LOOP4
if not %i% == %tl% (
 set /p X=_<NUL
 set /a i=%i%+1
 goto :LOOP4
)