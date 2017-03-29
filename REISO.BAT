@ECHO OFF
CD /D %~DP0
IF EXIST REBOOT.ISO DEL REBOOT.ISO
MKISOFS -R -b GRLDR -no-emul-boot -boot-load-size 4 -V REBOOT -hide boot.catalog -hide-joliet boot.catalog -o REBOOT.ISO .
PAUSE
