%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QFontComboBoxSlots.h"

static SlotsQFontComboBox * s = NULL;

SlotsQFontComboBox::SlotsQFontComboBox(QObject *parent) : QObject(parent)
{
}

SlotsQFontComboBox::~SlotsQFontComboBox()
{
}

void SlotsQFontComboBox::currentFontChanged ( const QFont & font )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentFontChanged(QFont)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pfont = hb_itemPutPtr( NULL, (QFont *) &font );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pfont );
    hb_itemRelease( psender );
    hb_itemRelease( pfont );
  }
}

HB_FUNC( QFONTCOMBOBOX_ONCURRENTFONTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQFontComboBox(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "currentFontChanged(QFont)", "currentFontChanged(QFont)" ) );
}