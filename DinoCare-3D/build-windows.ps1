$ErrorActionPreference = 'Stop'
Set-Location $PSScriptRoot
if (-not (Get-Command node -ErrorAction SilentlyContinue)) { Write-Host 'Instale o Node.js LTS em https://nodejs.org/'; Read-Host; exit 1 }
if (-not (Test-Path 'index.html')) { Write-Host 'index.html nao encontrado'; Read-Host; exit 1 }
New-Item -ItemType Directory -Force vendor | Out-Null
if (-not (Test-Path 'vendor/three.module.js')) { Invoke-WebRequest 'https://cdn.jsdelivr.net/npm/three@0.161.0/build/three.module.js' -OutFile 'vendor/three.module.js' }
npm install
npm run build:win
Get-ChildItem build
Read-Host 'Pressione ENTER para sair'
