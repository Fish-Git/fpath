@if defined TRACEON (@echo on) else (@echo off)
set "TRACE=if defined DEBUG echo"
call  fxxx.cmd  path  "%path%"
