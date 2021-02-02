@echo off
cls

net stop wuauserv
net stop bits
net stop dosvc

cscript api.vbs "Pausar a Atualização do Windows Update"
