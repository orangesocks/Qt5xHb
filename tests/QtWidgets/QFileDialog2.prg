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
   LOCAL oButton

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:resize(640,480)
   oWindow:show()

   oButton := QPushButton():new("Mostrar janela de di�logo",oWindow)
   oButton:move(20,20)
   oButton:show()
   ? oButton:onClicked({||dialog(oWindow)})

   oApp:exec()
   
   oWindow:delete()
   
   oApp:delete()

RETURN

STATIC FUNCTION dialog (oWindow)

   LOCAL oFileDialog

   oFileDialog := QFileDialog():new(oWindow)

   ? oFileDialog:onFileSelected({|oSender,cFile|qout(oSender:classname()),qout(cFile)})

   oFileDialog:exec()
   
   ? oFileDialog:onFileSelected()

   oFileDialog:delete()

RETURN NIL
