@echo off
g++ -o travel Main.cpp FileOperations.h Location.h Route.h GraphFunctions.h
if %errorlevel% == 0 (
    echo Build successful!
) else (
    echo Build failed!
)