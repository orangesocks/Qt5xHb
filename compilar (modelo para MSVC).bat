rem
rem Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5
rem
rem Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
rem
rem Batch para compila��o (Windows/MSVC)
rem

rem
rem Utilize este .bat como modelo para compilar as bibliotecas para Windows
rem usando MSVC, fazendo uma c�pia e ajustando os par�metros.
rem

rem Cria um PATH reduzido. Embora opcional, evita conflitos com outras
rem ferramentas de programa��o instaladas no ambiente de desenvolvimento.
set PATH=%SYSTEMROOT%;%SYSTEMROOT%\system32

rem Pasta da instala��o do Qt Framework.
set QTDIR=C:\Qt\Qt5.4.0\5.4\msvc2010_opengl

rem Pasta da instala��o do Harbour.
set HBDIR=C:\Harbour

rem Configura para compila��o com o Visual C++.
rem Altere para %ProgramFiles% caso seu Windows seja 32-bit.
call "%ProgramFiles(x86)%\Microsoft Visual Studio 10.0\Common7\Tools\vsvars32.bat"

rem Configura a vari�vel PATH, conforme as vari�veis definidas acima.
set PATH=%QTDIR%\bin;%HBDIR%\bin;%PATH%

rem Define se � Harbour ou xHarbour (harbour ou xharbour)
set HBCOMP=harbour

rem Define a vers�o do Harbour/xHarbour (320dev, 340dev, ...)
set HBVER=320dev

rem Define a vers�o do Qt (qt540, qt541, ...)
set QTVERSION=qt540

rem Define se � 32-bit ou 64-bit (32 ou 64)
set QT32OR64=32

rem Define se � Angle, OpenGL ou Dynamic (angle, opengl ou dynamic)
set QTANGLEOROPENGL=opengl

rem Define o compilador C++ (msvc2010, msvc2012, msvc2013 ou msvc2015)
set QTCOMP=msvc2010

rem Define a plataforma (windows)
set QTPLATFORM=windows

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
mingw32-make -f makefile_msvc 1>%QTVERSION%_%QTANGLEOROPENGL%_%QTCOMP%_%QT32OR64%_%QTPLATFORM%_%HBCOMP%_%HBVER%-1.log 2>%QTVERSION%_%QTANGLEOROPENGL%_%QTCOMP%_%QT32OR64%_%QTPLATFORM%_%HBCOMP%_%HBVER%-2.log

rem Limpa as vari�veis criadas.
set QTDIR=
set HBDIR=
set CPPDIR=
set HBCOMP=
set HBVER=
set QTVERSION=
set QT32OR64=
set QTANGLEOROPENGL=
set QTCOMP=
set QTPLATFORM=

pause
