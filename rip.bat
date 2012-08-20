@echo off
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
For /f "tokens=1-2 delims=/:" %%a in ("%TIME%") do (set mytime=%%a%%b)

set rip_name=%mydate%_%mytime%
choice /T 3 /D N /M "Named"
IF errorlevel 2 goto beginRip
set /P rip_name=Name? 

:beginRip
mkdir "U:\Ripped\%rip_name%"
"C:\Program Files (x86)\MakeMKV\makemkvcon" mkv disc:0 all "U:\Ripped\%rip_name%"
@echo off
echo ***           DONE           ***
echo ***           DONE           ***
echo ***           DONE           ***
echo ***           DONE           ***
echo ***           DONE           ***
echo ***           DONE           ***
echo ***           DONE           ***
echo ***           DONE           ***
echo ***           DONE           ***
echo ***           DONE           ***
echo ***           DONE           ***
echo ***           DONE           ***
echo ***           DONE           ***
echo ***           DONE           ***
echo ***           DONE           ***
:: http://notworthrepeating.blogspot.com/2012/02/emailing-myself-from-batch-script.html
C:\blat\blat.exe -p gmailsmtp -to %BLAT_RIP_EMAIL_ADDRESS% -subject "rip done" -body "%rip_name%" -server 127.0.0.1:1099
pause