/*

  Qt5xHb Project - Test Program

  Copyright (C) 2018 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/Qt5xHb

*/

/*
  ATEN��O: por causa de diferen�as entre Harbour e xHarbour, este exemplo
  cont�m linhas de programa��o espec�ficas, conforme o projeto utilizado.
*/

#include "qt5xhb.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oButton

   oApp := QApplication():new()

   oWindow := QWidget():new():setWindowTitle("Teste"):resize(640,480)

   oButton := QPushButton():new("Di�logo",oWindow):move(20,20)
   ? oButton:onClicked({||dialogo(oWindow)})

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

STATIC FUNCTION dialogo (oParent)

   LOCAL oDialog
   LOCAL oCBValidator1
   LOCAL oLineEdit1
   LOCAL oLabel1
   LOCAL oCBValidator2
   LOCAL oLineEdit2
   LOCAL oLabel2

   oDialog := QDialog():new(oParent):setWindowTitle("Di�logo"):resize(320,240)

   // aceita apenas letras e espa�os
   // acentos s�o removidos
   // as letras s�o convertidas para mai�sculo
   // campo n�o deve ser vazio
   #ifdef __XHARBOUR__
   oCBValidator1 := HCodeBlockValidator():new(<|cString,nPos|
      LOCAL nState
      cString := removeacentos(cString)
      cString := upper(cString)
      nState := iif(substr(cString,nPos,1)$"ABCDEFGHIJKLMNOPQRSTUVWXYZ ",QValidator_Acceptable,QValidator_Invalid)
      nState := iif(empty(cString),QValidator_Intermediate,nState)
      RETURN {cString,nPos,nState}
      >,oDialog)
   #else
   oCBValidator1 := HCodeBlockValidator():new({|cString,nPos|
      LOCAL nState
      cString := removeacentos(cString)
      cString := upper(cString)
      nState := iif(substr(cString,nPos,1)$"ABCDEFGHIJKLMNOPQRSTUVWXYZ ",QValidator_Acceptable,QValidator_Invalid)
      nState := iif(empty(cString),QValidator_Intermediate,nState)
      RETURN {cString,nPos,nState}
      },oDialog)
   #endif
   oLineEdit1 := QLineEdit():new(oDialog):move(10,10):setValidator(oCBValidator1)
   oLabel1 := QLabel():new(oDialog):move(200,10):resize(40,30)
   ? oLineEdit1:onFocusOutEvent({||oLabel1:setText(iif(oLineEdit1:hasAcceptableInput(),".T.",".F."))})

   // aceita apenas numeros
   // campo n�o deve ser vazio
   #ifdef __XHARBOUR__
   oCBValidator2 := HCodeBlockValidator():new(<|cString,nPos|
      LOCAL nState
      nState := iif(substr(cString,nPos,1)$"0123456789".or.nPos=0,QValidator_Acceptable,QValidator_Invalid)
      nState := iif(empty(cString),QValidator_Intermediate,nState)
      RETURN {cString,nPos,nState}
      >,oDialog)
   #else
   oCBValidator2 := HCodeBlockValidator():new({|cString,nPos|
      LOCAL nState
      nState := iif(substr(cString,nPos,1)$"0123456789".or.nPos=0,QValidator_Acceptable,QValidator_Invalid)
      nState := iif(empty(cString),QValidator_Intermediate,nState)
      RETURN {cString,nPos,nState}
      },oDialog)
   #endif
   oLineEdit2 := QLineEdit():new(oDialog):move(10,50):setValidator(oCBValidator2)
   oLabel2 := QLabel():new(oDialog):move(200,50):resize(40,30)
   ? oLineEdit2:onFocusOutEvent({||oLabel2:setText(iif(oLineEdit2:hasAcceptableInput(),".T.",".F."))})

   oDialog:exec()

   ? oLineEdit1:onFocusOutEvent()
   ? oLineEdit2:onFocusOutEvent()

   oDialog:delete()

RETURN NIL

STATIC FUNCTION RemoveAcentos (cTexto)

   // acento agudo
   cTexto := strtran(cTexto,"�","a")
   cTexto := strtran(cTexto,"�","e")
   cTexto := strtran(cTexto,"�","i")
   cTexto := strtran(cTexto,"�","o")
   cTexto := strtran(cTexto,"�","u")
   cTexto := strtran(cTexto,"�","A")
   cTexto := strtran(cTexto,"�","E")
   cTexto := strtran(cTexto,"�","I")
   cTexto := strtran(cTexto,"�","O")
   cTexto := strtran(cTexto,"�","U")
   // acento circunflexo
   cTexto := strtran(cTexto,"�","a")
   cTexto := strtran(cTexto,"�","e")
   cTexto := strtran(cTexto,"�","i")
   cTexto := strtran(cTexto,"�","o")
   cTexto := strtran(cTexto,"�","u")
   cTexto := strtran(cTexto,"�","A")
   cTexto := strtran(cTexto,"�","E")
   cTexto := strtran(cTexto,"�","I")
   cTexto := strtran(cTexto,"�","O")
   cTexto := strtran(cTexto,"�","U")
   // til
   cTexto := strtran(cTexto,"�","a")
   cTexto := strtran(cTexto,"�","o")
   cTexto := strtran(cTexto,"�","A")
   cTexto := strtran(cTexto,"�","O")
   // ce-cedilha
   cTexto := strtran(cTexto,"�","c")
   cTexto := strtran(cTexto,"�","C")
   // trema
   cTexto := strtran(cTexto,"�","u")
   cTexto := strtran(cTexto,"�","U")
   // crase
   cTexto := strtran(cTexto,"�","a")
   cTexto := strtran(cTexto,"�","e")
   cTexto := strtran(cTexto,"�","i")
   cTexto := strtran(cTexto,"�","o")
   cTexto := strtran(cTexto,"�","u")
   cTexto := strtran(cTexto,"�","A")
   cTexto := strtran(cTexto,"�","E")
   cTexto := strtran(cTexto,"�","I")
   cTexto := strtran(cTexto,"�","O")
   cTexto := strtran(cTexto,"�","U")

RETURN cTexto
