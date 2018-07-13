/*

  Qt5xHb Project - Test Program

  Copyright (C) 2018 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/Qt5xHb

*/

#include "qt5xhb.ch"

#define TOTAL_DE_SOCKETS 100

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oWindow
   LOCAl aSockets
   LOCAL oButtonCreate
   LOCAL oButtonOpen
   LOCAL oButtonClose
   LOCAL oButtonSend
   LOCAL oLineEdit
   LOCAL n

   oApp := QApplication():new()

   aSockets := array(TOTAL_DE_SOCKETS)

   // widgets

   oWindow := QWidget():new():resize(640,480)
   oButtonCreate := QPushButton():new("Create",oWindow):move(20,20)
   oButtonOpen := QPushButton():new("Open",oWindow):move(20,120):setEnabled(.F.)
   oButtonClose := QPushButton():new("Close",oWindow):move(20,220):setEnabled(.F.)
   oButtonSend := QPushButton():new("Send",oWindow):move(20,320):setEnabled(.F.)
   oLineEdit := QLineEdit():new("digite a mensagem aqui",oWindow):move(20,420):resize(220,30)

   // sinais

   oButtonCreate:onClicked( {||
      FOR n := 1 TO TOTAL_DE_SOCKETS
         aSockets[n] := QWebSocket():new()
         aSockets[n]:setProperty("socketIndex", QVariant():new(n))
         aSockets[n]:onTextMessageReceived( {|oSender,cText|qout("["+oSender:property("socketIndex"):toString()+"] textMessageReceived="+cText)} )
         ? "socket "+alltrim(str(n))+" criado"
      NEXT n
      oButtonCreate:setEnabled(.F.)
      oButtonOpen:setEnabled(.T.)
      } )

   oButtonOpen:onClicked( {||
      FOR n := 1 TO TOTAL_DE_SOCKETS
         aSockets[n]:open(QUrl():new("ws://127.0.0.1:1234"))
         ? "socket "+alltrim(str(n))+" aberto"
      NEXT n
      oButtonOpen:setEnabled(.F.)
      oButtonClose:setEnabled(.T.)
      oButtonSend:setEnabled(.T.)
      } )

   oButtonClose:onClicked( {||
      FOR n := 1 TO TOTAL_DE_SOCKETS
         aSockets[n]:close()
         ? "socket "+alltrim(str(n))+" fechado"
      NEXT n
      oButtonOpen:setEnabled(.T.)
      oButtonClose:setEnabled(.F.)
      oButtonSend:setEnabled(.F.)
      } )

   oButtonSend:onClicked( {||
      FOR n := 1 TO TOTAL_DE_SOCKETS
         aSockets[n]:sendTextMessage("mensagem do socket #"+aSockets[n]:property("socketIndex"):toString()+": "+oLineEdit:text())
      NEXT n
      } )

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   FOR n := 1 TO TOTAL_DE_SOCKETS
      IF hb_isObject( aSockets[n] )
         aSockets[n]:delete()
      ENDIF
   NEXT n

   oApp:delete()

RETURN
