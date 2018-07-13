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

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oButton

   oApp := QApplication():new()

   oWindow := QWidget():new():setWindowTitle("Teste"):resize(640,480)

   oButton := QPushButton():new("Inclus�o",oWindow):move(20,20)
   ? oButton:onClicked({||dialogo(oWindow)})

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

STATIC FUNCTION dialogo (oParent)

   LOCAL oDialog
   LOCAL oCBValidator1
   LOCAL oLabel1
   LOCAL oLineEdit1
   LOCAL oCBValidator2
   LOCAL oLabel2
   LOCAL oLineEdit2
   LOCAL oButtonIncluir
   LOCAL oButtonCancelar
   LOCAL nRet

   oDialog := QDialog():new(oParent):setWindowTitle("Inclus�o"):resize(320,240)

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
   oLabel1 := QLabel():new("Campo 1",oDialog):move(20,20):resize(60,30)
   oLineEdit1 := QLineEdit():new(oDialog):move(100,20):setValidator(oCBValidator1)

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
   oLabel2 := QLabel():new("Campo 2",oDialog):move(20,60):resize(60,30)
   oLineEdit2 := QLineEdit():new(oDialog):move(100,60):setValidator(oCBValidator2)

   oButtonIncluir := QPushButton():new("Incluir",oDialog):move(20,240-40)
   oButtonCancelar := QPushButton():new("Cancelar",oDialog):move(120,240-40)

   ? oButtonIncluir:onClicked({||iif(oLineEdit1:hasAcceptableInput().and.oLineEdit2:hasAcceptableInput(),oDialog:accept(),qout("campos incorretos"))})
   ? oButtonCancelar:onClicked({||oDialog:reject()})

   nRet := oDialog:exec()

   IF nRet == QDialog_Accepted
      ? "inclusao aceita"
   ELSEIF nRet == QDialog_Rejected
      ? "inclusao cancelada"
   ENDIF

   ? oButtonIncluir:onClicked()
   ? oButtonCancelar:onClicked()

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
