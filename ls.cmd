@echo off
setlocal EnableExtensions

if "%~1"=="" (
  dir /D
  exit /b %ERRORLEVEL%
)

if /I "%~1"=="-l" goto long
if /I "%~1"=="-a" goto all
if /I "%~1"=="-la" goto all
if /I "%~1"=="-al" goto all
if /I "%~1"=="--help" goto help
if /I "%~1"=="-h" goto help

dir /D %*
exit /b %ERRORLEVEL%

:long
shift
set "args="
:long_loop
if "%~1"=="" goto long_run
set args=%args% "%~1"
shift
goto long_loop
:long_run
if defined args (dir %args%) else (dir)
exit /b %ERRORLEVEL%

:all
shift
set "args="
:all_loop
if "%~1"=="" goto all_run
set args=%args% "%~1"
shift
goto all_loop
:all_run
if defined args (dir /A %args%) else (dir /A)
exit /b %ERRORLEVEL%

:help
echo ls.cmd - lightweight CMD wrapper around dir
echo.
echo Usage:
echo   ls              list current directory in wide format
echo   ls PATH         list PATH in wide format
echo   ls -l [PATH]    list details
echo   ls -a [PATH]    include hidden/system entries
echo   ls -la [PATH]   include hidden/system entries with details
echo.
echo Notes:
echo   This is not GNU ls. It maps common ls habits to Windows dir.
exit /b 0
