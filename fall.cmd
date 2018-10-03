@if defined TRACEON (@echo on) else (@echo off)
set "TRACE=if defined DEBUG echo"
call fpath.cmd
call flib.cmd
call finc.cmd
