@echo off
setlocal EnableExtensions
cd /d "%~dp0"
title Dimension City Builder - Gerar EXE
where node >nul 2>nul
if errorlevel 1 (echo Instale o Node.js LTS em https://nodejs.org/ & pause & exit /b 1)
if not exist index.html (echo index.html nao encontrado & pause & exit /b 1)
if not exist vendor mkdir vendor
if not exist vendor\three.module.js (
  echo Baixando Three.js local...
  powershell -NoProfile -ExecutionPolicy Bypass -Command "Invoke-WebRequest -UseBasicParsing -Uri 'https://cdn.jsdelivr.net/npm/three@0.161.0/build/three.module.js' -OutFile 'vendor\three.module.js'"
)
if not exist node_modules (call npm install)
if errorlevel 1 (echo Falha no npm install & pause & exit /b 1)
call npm run build:win
if errorlevel 1 (echo Falha no build & pause & exit /b 1)
echo.
echo Build concluido. Os arquivos estao na pasta build.
dir build
pause
