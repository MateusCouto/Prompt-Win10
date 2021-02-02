@echo off
cls

powercfg.exe -change -monitor-timeout-ac 0
powercfg.exe -change -disk-timeout-ac 0
powercfg.exe -change -standby-timeout-ac 0
powercfg.exe -change -hibernate-timeout-ac 0

cscript api.vbs "Desabilitar Proteção de Tela cada 5min"
