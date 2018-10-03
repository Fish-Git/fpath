@if defined TRACEON (@echo on) else (@echo off)

REM Parses semi-colon delimited variable (e.g. PATH, LIB, INCLUDE, etc...)

setlocal enabledelayedexpansion

set "TRACE=if defined DEBUG echo"
set @=%~1

if not defined @ (
  echo Format:  %~nx0  {varname}  [varvalue]
  echo   E.g.   %~nx0  PATH       "%%PATH%%"
  goto :exit
)

echo.
echo %@%=
echo.

REM delayed expansion used here
set _=!%@%!

:for_loop
for /f "delims=; tokens=1*" %%i in ("%_%") do (
  echo   %%i
  if "%%j" == "" goto :exit
  set _=%%j
  goto :for_loop
)

:exit

endlocal
goto :EOF
