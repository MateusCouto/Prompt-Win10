@echo off
cls

echo "Pausar a Atualização do Windows Update"
net stop wuauserv
net stop bits
net stop dosvc


PAUSE
