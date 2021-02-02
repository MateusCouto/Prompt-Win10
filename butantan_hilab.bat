@echo off

echo [InternetShortcut] > "%userprofile%\Desktop\Hilab.url"
echo URL=https://login.hilab.com.br/ >> "%userprofile%\Desktop\Hilab.url"
echo IconFile=https://login.hilab.com.br/statics/icons/favicon.ico >> "%userprofile%\Desktop\Hilab.url"
echo IconIndex=0 >> "%userprofile%\Desktop\Hilab.url"

PAUSE