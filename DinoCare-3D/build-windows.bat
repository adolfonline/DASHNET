@echo off
setlocal
cd /d "%~dp0"
title DinoCare 3D - Gerar EXE
where node >nul 2>nul
if errorlevel 1 (echo Instale o Node.js LTS em https://nodejs.org/ & pause & exit /b 1)
if not exist index.html (echo index.html nao encontrado & pause & exit /b 1)
if not exist vendor mkdir vendor
if not exist vendor\three.module.js (
  echo Baixando Three.js...
  powershell -NoProfile -ExecutionPolicy Bypass -Command "Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/npm/three@0.161.0/build/three.module.js' -OutFile 'vendor\three.module.js'"
)
call npm install
if errorlevel 1 (pause & exit /b 1)
call npm run build:win
if errorlevel 1 (pause & exit /b 1)
echo.
echo Build concluido. Os arquivos estao na pasta build.
dir build
pause
