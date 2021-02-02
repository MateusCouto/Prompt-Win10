@echo off
cls

echo "Desabilitar Proteção de Tela cada 5min"
powercfg.exe -change -monitor-timeout-ac 0
powercfg.exe -change -disk-timeout-ac 0
powercfg.exe -change -standby-timeout-ac 0
powercfg.exe -change -hibernate-timeout-ac 0


PAUSE
