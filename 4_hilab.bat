@echo off

echo [InternetShortcut] > "%userprofile%\Desktop\Hilab.url"
echo URL=https://login.hilab.com.br/ >> "%userprofile%\Desktop\Hilab.url"
echo IconFile=C:\Prompt-Win10\favicon.ico >> "%userprofile%\Desktop\Hilab.url"
echo IconIndex=0 >> "%userprofile%\Desktop\Hilab.url"

cscript api.vbs "Atalho adicionado com Sucesso."
