%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQKeySequenceEdit::editingFinished()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "editingFinished()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
#endif
}

void SlotsQKeySequenceEdit::keySequenceChanged(const QKeySequence &keySequence)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "keySequenceChanged(QKeySequence)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pkeySequence = hb_itemPutPtr( NULL, (QKeySequence *) &keySequence );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pkeySequence );
    hb_itemRelease( psender );
    hb_itemRelease( pkeySequence );
  }
#endif
}

$signalMethod=5,2,0|editingFinished()
$signalMethod=5,2,0|keySequenceChanged(QKeySequence)

$endSlotsClass
