@ECHO OFF

CD /D %~DP0

IFEXIST %SystemDrive%\GRLDR ATTRIB -S -H %SystemDrive%\GRLDR*
COPY /Y GRLDR %SystemDrive%\
COPY /Y GRLDR.MBR %SystemDrive%\
ATTRIB +S +H %SystemDrive%\*

CD /D %SystemRoot%\System32

BCDEDIT /create /d "Grub Loader" /application bootsector>BCD.TMP
FOR,/f,"tokens=2 delims={",%%i,In (BCD.TMP) DO SET VID=%%i
FOR,/f,"tokens=1 delims=}",%%i,In ("%VID%") DO SET EID={%%i}
DEL BCD.TMP
REM ECHO %EID%

BCDEDIT /set %EID% device boot>NUL
BCDEDIT /set %EID% path \GRLDR.MBR>NUL
BCDEDIT /displayorder %EID% /addlast>NUL
BCDEDIT /timeout 3

BCDEDIT
PAUSE
