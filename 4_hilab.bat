@echo off

echo [InternetShortcut] > "%userprofile%\Desktop\Hilab.url"
echo URL=https://login.hilab.com.br/ >> "%userprofile%\Desktop\Hilab.url"
echo IconFile=C:\WINDOWS\system32\SHELL32.dll >> "%userprofile%\Desktop\Hilab.url"
echo IconIndex=20 >> "%userprofile%\Desktop\Hilab.url"

cscript api.vbs "Atalho adicionado com Sucesso."
