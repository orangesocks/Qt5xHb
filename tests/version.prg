/*

  Qt5xHb Project - Test Program

  Copyright (C) 2021 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt5xhb

*/

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

PROCEDURE Main ()

   CLS

   ? qt5xhb_version()

   ?

   ? qt4xhb_version() // apenas para compatibilidade com o Qt4xHb

   ?

   WAIT

RETURN
