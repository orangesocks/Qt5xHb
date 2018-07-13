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
   LOCAL oCheckBox

   oApp := QApplication():new()

   oWindow := QWidget():new()

   oCheckBox := QCheckBox():new("CheckBox",oWindow):move(20,20)
   ? oCheckBox:onClicked({||qout("clicked")})
   ? oCheckBox:onPressed({||qout("pressed")})
   ? oCheckBox:onReleased({||qout("released")})
   ? oCheckBox:onStateChanged({||qout("stateChanged="+alltrim(str(oCheckBox:checkState())))})

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN
