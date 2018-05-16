%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClass

   METHOD delete
   METHOD deleteText
   METHOD insertText
   METHOD replaceText

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual void deleteText(int startOffset, int endOffset) = 0
$virtualMethod=|void|deleteText|int,int

$prototype=virtual void insertText(int offset, const QString &text) = 0
$virtualMethod=|void|insertText|int,const QString &

$prototype=virtual void replaceText(int startOffset, int endOffset, const QString &text) = 0
$virtualMethod=|void|replaceText|int,int,const QString &

$extraMethods

#pragma ENDDUMP
