/*

  Qt5xHb Project - Example Program

  Copyright (C) 2019 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/Qt5xHb

  Users Groups:
  https://groups.google.com/forum/?hl=pt-BR#!forum/qtxhb    [ENGLISH]
  https://groups.google.com/forum/?hl=pt-BR#!forum/qtxhb-br [PORTUGUESE]

*/

#include "qt5xhb.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oLineEdit1
   LOCAL oLineEdit2
   LOCAL oPushButtonCopy
   LOCAL oPushButtonPaste
   LOCAL oClipboard

   oApp := QApplication():new()

   oWindow := QWidget():new():setWindowTitle("Exemplo de uso do objeto QClipboard"):resize(640,480)

   oLineEdit1 := QLineEdit():new(oWindow):move(20,20):setText("teste")

   oPushButtonCopy := QPushButton():new("Copiar",oWindow):move(20,120)

   oLineEdit2 := QLineEdit():new(oWindow):move(20,220)

   oPushButtonPaste := QPushButton():new("Colar",oWindow):move(20,320)

   // Obt�m o objeto QClipboard.
   oClipboard := oApp:clipboard()

   // Quando clicado, copia o texto do QLineEdit1 para o clipboard.
   // O texto � copiado para o clipboard atrav�s do m�todo 'setText'.
   oPushButtonCopy:onClicked({||oClipboard:setText(oLineEdit1:text())})

   // Quando clicado, copia o texto do clipboard para o QLineEdit2.
   // O texto � copiado do clipboard atrav�s do m�todo 'text'.
   oPushButtonPaste:onClicked({||oLineEdit2:setText(oClipboard:text())})

   // avisa se o dados no clipboard foram modificados
   oClipboard:onDataChanged({||qout("os dados no clipboard foram alterados"),qout("conteudo atual="+oClipboard:text())})

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN
