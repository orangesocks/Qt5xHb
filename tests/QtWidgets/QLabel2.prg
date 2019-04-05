/*

  Qt5xHb Project - Test Program

  Copyright (C) 2019 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/Qt5xHb

*/

#include "qt5xhb.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oLabel

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640,480)

   oLabel := QLabel():new("Teste com a classe <font color=red><b>QLabel</b></font>",oWindow)
   oLabel:move(20,20)
   oLabel:setTooltip("Eu sou um QLabel")

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN
