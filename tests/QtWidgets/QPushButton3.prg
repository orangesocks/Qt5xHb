/*

  Qt5xHb Project - Test Program

  Copyright (C) 2018 Marcos Antonio Gambeta

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

   LOCAL oApp
   LOCAL oWindow
   LOCAL oButton1
   LOCAL oButton2
   LOCAL oButton3

   oApp := QApplication():new()

   oWindow := QWidget():new():resize(320,240)

   oButton1 := QPushButton():new("PushButton 1",oWindow):move(20,20)
   ? oButton1:onClicked({|w|qout("clicked-1")})
   ? oButton1:onPressed({|w|qout("pressed-1")})
   ? oButton1:onReleased({|w|qout("released-1")})

   oButton2 := QPushButton():new("PushButton 2",oWindow):move(20,70)
   ? oButton2:onClicked({|w|qout("clicked-2")})
   ? oButton2:onPressed({|w|qout("pressed-2")})
   ? oButton2:onReleased({|w|qout("released-2")})

   oButton3 := QPushButton():new("PushButton 3",oWindow):move(20,120)
   ? oButton3:onClicked({|w|qout("clicked-3")})
   ? oButton3:onPressed({|w|qout("pressed-3")})
   ? oButton3:onReleased({|w|qout("released-3")})

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN
