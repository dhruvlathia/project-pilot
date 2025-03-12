@echo off
cls
:menu
:: Enable Virtual Terminal Processing for Colors
echo.
echo [93m============================[0m
echo [96m   Created by Dhruv Lathia [0m
echo [93m============================[0m
echo.
echo.
echo Hello Zade, Which Project?
echo --------------------------
echo 1. Add New

:: Read projects dynamically and display correctly
for /f "tokens=2,3 delims=," %%A in ('findstr /b "::PROJECT" "%~f0"') do (
    echo %%A. %%B
)

echo X. Exit

echo --------------------------

set /p choice="Select The Project: "

if "%choice%"=="1" (
    call :add_new_project
    goto :menu
) else if /i "%choice%"=="X" (
    echo Exiting...
    exit
)

:: Find the selected project and run it
for /f "tokens=2,3,4,5,6 delims=," %%A in ('findstr /b "::PROJECT" "%~f0"') do (
    if "%choice%"=="%%A" (
        call :run_project "%%B" "%%C" "%%D" "%%E"
    )
)
goto :menu

:: Function to run a project
:run_project
setlocal
cls
set /p next="Run or Build? (R/B): "
cd /d %~2
if /i "%next%"=="B" (
    cmd /c %~4
) else (
    cmd /c %~3
)
endlocal
goto :eof


:: Function to add a new project
:add_new_project
cls
set /p newName="Enter project name: "
set /p newPath="Enter project path: "
set /p newRun="Enter run command: "
set /p newBuild="Enter build command: "

:: Find the last project number
set lastNumber=1
for /f "tokens=2 delims=," %%A in ('findstr /b "::PROJECT" "%~f0"') do (
    set /a lastNumber=%%A+1
)

:: Append the new project at the correct location
(
    echo ::PROJECT,%lastNumber%,%newName%,%newPath%,%newRun%,%newBuild%
) >> "%~f0"

echo Project added successfully!
pause
goto :eof

:: Default Projects (Do not move this comment)
::PROJECT,2,Project Name,D:\path\path\myapp,ionic s --host=0.0.0.0 --disable-host-check,ionic build
