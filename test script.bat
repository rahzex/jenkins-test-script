@echo off
echo.
echo.
cd C:\Users\SubhajitPal
echo Creating and entring folder tempDownload under C:\Users\SubhajitPal
mkdir tempDownload
cd tempDownload
echo.
echo Downloading Zip File... 
echo.
curl https://ftp.mozilla.org/pub/firefox/nightly/latest-mozilla-central/firefox-82.0a1.en-US.linux-i686.crashreporter-symbols.zip --output firefox.tar.gz
echo.
dir | findstr "fire"
echo Completed!
echo.
echo Extracting Zip File...
tar -xf firefox.tar.gz
echo.
echo Completed!
echo.
echo Listing Dir to show files
dir
echo.
echo After 60 secs folder tempDownload will be deleted...
timeout /t 60 /nobreak
cd C:\Users\SubhajitPal
RD /S /Q tempDownload
echo.
echo All Files Deleted.