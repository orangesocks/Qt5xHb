/*

  Qt5xHb Project - Test Program

  Copyright (C) 2019 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/Qt5xHb

*/

#include "qt5xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

PROCEDURE Main ()

   lOCAL oApp
   LOCAL oWindow
   LOCAL oButton1
   LOCAL oButton2
   LOCAL oButton3

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:resize(320,240)

   oButton1 := QToolButton():new(oWindow)
   oButton1:move(20,20)
   ? oButton1:onClicked({||qout("clicked-1")})
   ? oButton1:onPressed({||qout("pressed-1")})
   ? oButton1:onReleased({||qout("released-1")})
   oButton1:setIcon(QIcon():new("../images/cut.png"))

   oButton2 := QToolButton():new(oWindow)
   oButton2:move(20,70)
   ? oButton2:onClicked({||qout("clicked-2")})
   ? oButton2:onPressed({||qout("pressed-2")})
   ? oButton2:onReleased({||qout("released-2")})
   oButton2:setIcon(QIcon():new("../images/copy.png"))

   oButton3 := QToolButton():new(oWindow)
   oButton3:move(20,120)
   ? oButton3:onClicked({||qout("clicked-3")})
   ? oButton3:onPressed({||qout("pressed-3")})
   ? oButton3:onReleased({||qout("released-3")})
   oButton3:setIcon(QIcon():new("../images/paste.png"))

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN
