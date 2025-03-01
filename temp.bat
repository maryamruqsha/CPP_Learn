@echo off
echo Starting script...

REM Loop from 1 to 10
for /l %%i in (1,1,10) do (
    echo Creating folder day_%%i
    mkdir day_%%i
    if errorlevel 1 (
        echo Failed to create folder day_%%i
        pause
        exit /b
    )
    
    echo Writing main.cpp for day_%%i
    (
        echo // day %%i
    ) > "day_%%i\main.cpp"
    if errorlevel 1 (
        echo Failed to create main.cpp for day_%%i
        pause
        exit /b
    )
)

echo Folders and files created successfully!
pause