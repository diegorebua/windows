# ==============================================================================
# Script de Otimizacao de Windows 11 para Jogos (Foco em FPS e Baixa Latencia)
# Autor: Diego
# ==============================================================================

Write-Host "Iniciando otimizacoes para jogos..." -ForegroundColor Cyan

# 1. Ativa o plano de Energia: Alto Desempenho
Write-Host "Configurando Plano de Energia para Alto Desempenho..." -ForegroundColor Yellow
powercfg /setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c

# 2. Ativa o Agendamento de GPU Acelerado por Hardware (HAGS)
Write-Host "Ativando HAGS (Hardware-Accelerated GPU Scheduling)..." -ForegroundColor Yellow
New-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" -Name "HwSchMode" -PropertyType "DWord" -Value 2 -Force | Out-Null

# 3. Desativa o VBS e Isolamento de Nucleo (Memory Integrity)
Write-Host "Desativando VBS e Integridade de Memoria..." -ForegroundColor Yellow
Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\DeviceGuard" -Name "EnableVirtualizationBasedSecurity" -Value 0
Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" -Name "Enabled" -Value 0

# 4. Desativa a Aceleracao de Mouse do Windows (Melhora precisao na mira)
Write-Host "Desativando Aceleracao do Mouse..." -ForegroundColor Yellow
Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "MouseSpeed" -Value "0"

# 5. Desativa Gravacao em Segundo Plano (Game DVR)
Write-Host "Desativando Game DVR (Gravacao em segundo plano)..." -ForegroundColor Yellow
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\GameDVR" -Name "AppCaptureEnabled" -Value 0 -ErrorAction SilentlyContinue
Set-ItemProperty -Path "HKCU:\System\GameConfigStore" -Name "GameDVR_Enabled" -Value 0 -ErrorAction SilentlyContinue

Write-Host ""
Write-Host "==============================================================================" -ForegroundColor Green
Write-Host "Otimizacoes aplicadas com sucesso! REINICIE O COMPUTADOR para fazer efeito." -ForegroundColor Green
Write-Host "==============================================================================" -ForegroundColor Green
Pause
