%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQAxWidget::exception ( int code, const QString & source, const QString & desc, const QString & help )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "exception(int,QString,QString,QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcode = hb_itemPutNI( NULL, code );
    PHB_ITEM psource = hb_itemPutC( NULL, QSTRINGTOSTRING(source) );
    PHB_ITEM pdesc = hb_itemPutC( NULL, QSTRINGTOSTRING(desc) );
    PHB_ITEM phelp = hb_itemPutC( NULL, QSTRINGTOSTRING(help) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 5, psender, pcode, psource, pdesc, phelp );
    hb_itemRelease( psender );
    hb_itemRelease( pcode );
    hb_itemRelease( psource );
    hb_itemRelease( pdesc );
    hb_itemRelease( phelp );
  }
}

void SlotsQAxWidget::propertyChanged ( const QString & name )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "propertyChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pname = hb_itemPutC( NULL, QSTRINGTOSTRING(name) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pname );
    hb_itemRelease( psender );
    hb_itemRelease( pname );
  }
}

void SlotsQAxWidget::signal ( const QString & name, int argc, void * argv )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "signal(QString,int,void *)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pname = hb_itemPutC( NULL, QSTRINGTOSTRING(name) );
    PHB_ITEM pargc = hb_itemPutNI( NULL, argc );
    PHB_ITEM pargv = hb_itemPutPtr( NULL, (void *) argv );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, pname, pargc, pargv );
    hb_itemRelease( psender );
    hb_itemRelease( pname );
    hb_itemRelease( pargc );
    hb_itemRelease( pargv );
  }
}

$signalMethod=|exception(int,QString,QString,QString)
$signalMethod=|propertyChanged(QString)
$signalMethod=|signal(QString,int,void *)

$endSlotsClass
