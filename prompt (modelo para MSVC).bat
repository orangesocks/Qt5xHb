rem
rem Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5
rem
rem Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
rem
rem Prompt de comando para utiliza��o do Qt5xHb com MSVC.
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

rem Pasta include do Qt5xHb.
set QT5XHB_INC_DIR=C:\qt5xhb\include

rem Pasta lib do Qt5xHb.
rem Exemplo: C:\qt5xhb\lib\qt540\opengl\msvc2010\32\windows\harbour\320dev
set QT5XHB_LIB_DIR=

%ComSpec%

rem Limpa as vari�veis criadas.
set QTDIR=
set HBDIR=
set CPPDIR=
set QT5XHB_INC_DIR=
set QT5XHB_LIB_DIR=

pause
