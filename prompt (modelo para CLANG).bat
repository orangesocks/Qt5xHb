rem
rem Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5
rem
rem Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
rem
rem Prompt de comando para utiliza��o do Qt5xHb com CLANG/MSYS.
rem

rem Cria um PATH reduzido. Embora opcional, evita conflitos com outras
rem ferramentas de programa��o instaladas no ambiente de desenvolvimento.
set PATH=%SYSTEMROOT%;%SYSTEMROOT%\system32

rem Pasta da instala��o do Qt Framework (use mingw32 ou mingw64).
set QTDIR=C:\msys64\mingw32

rem Pasta da instala��o do Harbour.
set HBDIR=C:\harbour

rem Pasta da instala��o do compilador C/C++.
set CPPDIR=%QTDIR%

rem Configura a vari�vel PATH, conforme as vari�veis definidas acima.
set PATH=%QTDIR%\bin;%HBDIR%\bin;%CPPDIR%\bin;%PATH%

rem Pasta include do Qt5xHb.
set QT5XHB_INC_DIR=include

rem Pasta lib do Qt5xHb.
rem Exemplo: C:\qt5xhb\lib\qt540\opengl\mingw\32\windows\harbour\320dev
set QT5XHB_LIB_DIR=

rem Define o compilador C++ (clang ou clang64)
set HB_COMPILER=clang

%ComSpec%

rem Limpa as vari�veis criadas.
set QTDIR=
set HBDIR=
set CPPDIR=
set QT5XHB_INC_DIR=
set QT5XHB_LIB_DIR=
set HB_COMPILER=

pause
