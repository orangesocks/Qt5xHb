rem
rem Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5
rem
rem Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
rem
rem Batch para Android
rem

rem Cria um PATH reduzido. Embora opcional, evita conflitos com outras
rem ferramentas de programa��o instaladas no ambiente de desenvolvimento.
set PATH=%SYSTEMROOT%;%SYSTEMROOT%\system32

rem Define a plataforma.
set QTPLATFORM=android_armv7

rem Pasta da instala��o do Qt Framework, para a plataforma acima.
set QTDIR=C:\Qt\5.9.2\android_armv7

rem Pasta da instala��o do Harbour.
set HBDIR=C:\Harbour

rem Pasta da instala��o do compilador C/C++.
rem set CPPDIR=C:\Qt\Tools\mingw492_32

rem --- configura��o do NDK ---

rem Pasta da instala��o do Android NDK.
set NDKDIR=C:\Android-ndk-r15

rem Defini��o do toolchain.
set NDKTOOLCHAIN=arm-linux-androideabi-4.9

rem Defini��o do prefixo do toolchain.
set NDKTOOLCHAINPREFIX=arm-linux-androideabi

rem Defini��o da vers�o do GCC.
set NDKGCCVER=4.9

rem Defini��o da vers�o da arquitetura.
set NDKGCCARCH=armeabi

rem Defini��o da API do Android.
set NDKAPIVER=19

rem Defini��o da arquitetura.
set NDKAPIARCH=arm

rem ---

rem Configura a vari�vel PATH, conforme as vari�veis definidas acima.
rem set PATH=%QTDIR%\bin;%HBDIR%\bin;%CPPDIR%\bin;%PATH%

rem Define se � Harbour ou xHarbour (harbour ou xharbour).
set HBCOMP=harbour

rem Define a vers�o do Harbour/xHarbour.
set HBVER=320dev

rem Define a vers�o do Qt (qt530, qt531 ou qt532).
set QTVERSION=qt592

rem Define se � 32-bit ou 64-bit (32 ou 64).
set QT32OR64=32

rem Define se � Angle, OpenGL ou Dynamic (angle, opengl ou dynamic).
set QTANGLEOROPENGL=dynamic

rem Define se � MinGW ou MSVC (mingw, msvc2010, msvc2012 ou msvc2013).
set QTCOMP=mingw

rem Cria a pasta para as bibliotecas, caso n�o exista.
if not exist lib mkdir lib
if not exist lib\%QTVERSION% mkdir lib\%QTVERSION%
if not exist lib\%QTVERSION%\%QTANGLEOROPENGL% mkdir lib\%QTVERSION%\%QTANGLEOROPENGL%
if not exist lib\%QTVERSION%\%QTANGLEOROPENGL%\%QTCOMP% mkdir lib\%QTVERSION%\%QTANGLEOROPENGL%\%QTCOMP%
if not exist lib\%QTVERSION%\%QTANGLEOROPENGL%\%QTCOMP%\%QT32OR64% mkdir lib\%QTVERSION%\%QTANGLEOROPENGL%\%QTCOMP%\%QT32OR64%
if not exist lib\%QTVERSION%\%QTANGLEOROPENGL%\%QTCOMP%\%QT32OR64%\%QTPLATFORM% mkdir lib\%QTVERSION%\%QTANGLEOROPENGL%\%QTCOMP%\%QT32OR64%\%QTPLATFORM%
if not exist lib\%QTVERSION%\%QTANGLEOROPENGL%\%QTCOMP%\%QT32OR64%\%QTPLATFORM%\%HBCOMP% mkdir lib\%QTVERSION%\%QTANGLEOROPENGL%\%QTCOMP%\%QT32OR64%\%QTPLATFORM%\%HBCOMP%
if not exist lib\%QTVERSION%\%QTANGLEOROPENGL%\%QTCOMP%\%QT32OR64%\%QTPLATFORM%\%HBCOMP%\%HBVER% mkdir lib\%QTVERSION%\%QTANGLEOROPENGL%\%QTCOMP%\%QT32OR64%\%QTPLATFORM%\%HBCOMP%\%HBVER%

rem Cria a pasta para os objetos, caso n�o exista.
if not exist obj mkdir obj
if not exist obj\%QTVERSION% mkdir obj\%QTVERSION%
if not exist obj\%QTVERSION%\%QTANGLEOROPENGL% mkdir obj\%QTVERSION%\%QTANGLEOROPENGL%
if not exist obj\%QTVERSION%\%QTANGLEOROPENGL%\%QTCOMP% mkdir obj\%QTVERSION%\%QTANGLEOROPENGL%\%QTCOMP%
if not exist obj\%QTVERSION%\%QTANGLEOROPENGL%\%QTCOMP%\%QT32OR64% mkdir obj\%QTVERSION%\%QTANGLEOROPENGL%\%QTCOMP%\%QT32OR64%
if not exist obj\%QTVERSION%\%QTANGLEOROPENGL%\%QTCOMP%\%QT32OR64%\%QTPLATFORM% mkdir obj\%QTVERSION%\%QTANGLEOROPENGL%\%QTCOMP%\%QT32OR64%\%QTPLATFORM%
if not exist obj\%QTVERSION%\%QTANGLEOROPENGL%\%QTCOMP%\%QT32OR64%\%QTPLATFORM%\%HBCOMP% mkdir obj\%QTVERSION%\%QTANGLEOROPENGL%\%QTCOMP%\%QT32OR64%\%QTPLATFORM%\%HBCOMP%
if not exist obj\%QTVERSION%\%QTANGLEOROPENGL%\%QTCOMP%\%QT32OR64%\%QTPLATFORM%\%HBCOMP%\%HBVER% mkdir obj\%QTVERSION%\%QTANGLEOROPENGL%\%QTCOMP%\%QT32OR64%\%QTPLATFORM%\%HBCOMP%\%HBVER%

rem Compila as bibliotecas.
mingw32-make.exe -f makefile_android 1>%QTVERSION%_%QTANGLEOROPENGL%_%QTCOMP%_%QT32OR64%_%QTPLATFORM%_%HBCOMP%_%HBVER%-1.log 2>%QTVERSION%_%QTANGLEOROPENGL%_%QTCOMP%_%QT32OR64%_%QTPLATFORM%_%HBCOMP%_%HBVER%-2.log

rem Limpa as vari�veis criadas.
set QTDIR=
set HBDIR=
set CPPDIR=
set QTVERSION=
set QTANGLEOROPENGL=
set QTCOMP=
set QT32OR64=
set QTPLATFORM=
set HBCOMP=
set HBVER=

pause
