@echo off
title GodMode
mode 80,25
color 07

REM Author: Haitham Aouati
REM GitHub: github.com/haithamaouati

cls

net session >nul 2>&1
if %errorlevel% == 0 (
    goto main_menu
) else (
    echo This script must be run as an administrator.
    pause
    exit
)

:main_menu
cls
echo.
echo  ##########  ##########
echo  ##########  ##########
echo  ##########  ##########
echo  ##########  ##########
echo  ##########  ##########
echo.
echo  ##########  ##########
echo  ##########  ##########
echo  ##########  ##########
echo  ##########  ##########
echo  ##########  ##########
echo.
echo Main menu:
echo 1. God Mode
echo 2. Exit
echo.

set /p choice=Enter your choice: 

if "%choice%"=="1" goto godmode
if "%choice%"=="2" goto end

echo Invalid choice. Please try again.
goto main_menu

:godmode
set folderName="GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}"
mkdir %folderName%
pause
goto main_menu

:end
echo Are you sure you want to exit the script? (y/n)
set /p confirm=
if /i "%confirm%"=="y" exit
if /i "%confirm%"=="n" goto main_menu
goto end
