/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QWebPageSlots.h"

QWebPageSlots::QWebPageSlots( QObject *parent ) : QObject( parent )
{
}

QWebPageSlots::~QWebPageSlots()
{
}

void QWebPageSlots::applicationCacheQuotaExceeded( QWebSecurityOrigin * origin, quint64 defaultOriginQuota, quint64 totalSpaceNeeded )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "applicationCacheQuotaExceeded(QWebSecurityOrigin*,quint64,quint64)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBPAGE" );
    PHB_ITEM porigin = Qt5xHb::Signals_return_object( (void *) origin, "QWEBSECURITYORIGIN" );
    PHB_ITEM pdefaultOriginQuota = hb_itemPutNLL( NULL, defaultOriginQuota );
    PHB_ITEM ptotalSpaceNeeded = hb_itemPutNLL( NULL, totalSpaceNeeded );

    hb_vmEvalBlockV( cb, 4, psender, porigin, pdefaultOriginQuota, ptotalSpaceNeeded );

    hb_itemRelease( psender );
    hb_itemRelease( porigin );
    hb_itemRelease( pdefaultOriginQuota );
    hb_itemRelease( ptotalSpaceNeeded );
  }
}

void QWebPageSlots::contentsChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "contentsChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBPAGE" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QWebPageSlots::databaseQuotaExceeded( QWebFrame * frame, QString databaseName )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "databaseQuotaExceeded(QWebFrame*,QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBPAGE" );
    PHB_ITEM pframe = Qt5xHb::Signals_return_qobject( (QObject *) frame, "QWEBFRAME" );
    PHB_ITEM pdatabaseName = hb_itemPutC( NULL, (const char *) databaseName.toLatin1().data() );

    hb_vmEvalBlockV( cb, 3, psender, pframe, pdatabaseName );

    hb_itemRelease( psender );
    hb_itemRelease( pframe );
    hb_itemRelease( pdatabaseName );
  }
}

void QWebPageSlots::downloadRequested( const QNetworkRequest & request )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "downloadRequested(QNetworkRequest)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBPAGE" );
    PHB_ITEM prequest = Qt5xHb::Signals_return_object( (void *) &request, "QNETWORKREQUEST" );

    hb_vmEvalBlockV( cb, 2, psender, prequest );

    hb_itemRelease( psender );
    hb_itemRelease( prequest );
  }
}

void QWebPageSlots::featurePermissionRequestCanceled( QWebFrame * frame, QWebPage::Feature feature )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "featurePermissionRequestCanceled(QWebFrame*,QWebPage::Feature)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBPAGE" );
    PHB_ITEM pframe = Qt5xHb::Signals_return_qobject( (QObject *) frame, "QWEBFRAME" );
    PHB_ITEM pfeature = hb_itemPutNI( NULL, (int) feature );

    hb_vmEvalBlockV( cb, 3, psender, pframe, pfeature );

    hb_itemRelease( psender );
    hb_itemRelease( pframe );
    hb_itemRelease( pfeature );
  }
}

void QWebPageSlots::featurePermissionRequested( QWebFrame * frame, QWebPage::Feature feature )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "featurePermissionRequested(QWebFrame*,QWebPage::Feature)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBPAGE" );
    PHB_ITEM pframe = Qt5xHb::Signals_return_qobject( (QObject *) frame, "QWEBFRAME" );
    PHB_ITEM pfeature = hb_itemPutNI( NULL, (int) feature );

    hb_vmEvalBlockV( cb, 3, psender, pframe, pfeature );

    hb_itemRelease( psender );
    hb_itemRelease( pframe );
    hb_itemRelease( pfeature );
  }
}

void QWebPageSlots::frameCreated( QWebFrame * frame )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "frameCreated(QWebFrame*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBPAGE" );
    PHB_ITEM pframe = Qt5xHb::Signals_return_qobject( (QObject *) frame, "QWEBFRAME" );

    hb_vmEvalBlockV( cb, 2, psender, pframe );

    hb_itemRelease( psender );
    hb_itemRelease( pframe );
  }
}

void QWebPageSlots::geometryChangeRequested( const QRect & geom )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "geometryChangeRequested(QRect)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBPAGE" );
    PHB_ITEM pgeom = Qt5xHb::Signals_return_object( (void *) &geom, "QRECT" );

    hb_vmEvalBlockV( cb, 2, psender, pgeom );

    hb_itemRelease( psender );
    hb_itemRelease( pgeom );
  }
}

void QWebPageSlots::linkClicked( const QUrl & url )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "linkClicked(QUrl)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBPAGE" );
    PHB_ITEM purl = Qt5xHb::Signals_return_object( (void *) &url, "QURL" );

    hb_vmEvalBlockV( cb, 2, psender, purl );

    hb_itemRelease( psender );
    hb_itemRelease( purl );
  }
}

void QWebPageSlots::linkHovered( const QString & link, const QString & title, const QString & textContent )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "linkHovered(QString,QString,QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBPAGE" );
    PHB_ITEM plink = hb_itemPutC( NULL, QSTRINGTOSTRING(link) );
    PHB_ITEM ptitle = hb_itemPutC( NULL, QSTRINGTOSTRING(title) );
    PHB_ITEM ptextContent = hb_itemPutC( NULL, QSTRINGTOSTRING(textContent) );

    hb_vmEvalBlockV( cb, 4, psender, plink, ptitle, ptextContent );

    hb_itemRelease( psender );
    hb_itemRelease( plink );
    hb_itemRelease( ptitle );
    hb_itemRelease( ptextContent );
  }
}

void QWebPageSlots::loadFinished( bool ok )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "loadFinished(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBPAGE" );
    PHB_ITEM pok = hb_itemPutL( NULL, ok );

    hb_vmEvalBlockV( cb, 2, psender, pok );

    hb_itemRelease( psender );
    hb_itemRelease( pok );
  }
}

void QWebPageSlots::loadProgress( int progress )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "loadProgress(int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBPAGE" );
    PHB_ITEM pprogress = hb_itemPutNI( NULL, progress );

    hb_vmEvalBlockV( cb, 2, psender, pprogress );

    hb_itemRelease( psender );
    hb_itemRelease( pprogress );
  }
}

void QWebPageSlots::loadStarted()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "loadStarted()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBPAGE" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QWebPageSlots::menuBarVisibilityChangeRequested( bool visible )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "menuBarVisibilityChangeRequested(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBPAGE" );
    PHB_ITEM pvisible = hb_itemPutL( NULL, visible );

    hb_vmEvalBlockV( cb, 2, psender, pvisible );

    hb_itemRelease( psender );
    hb_itemRelease( pvisible );
  }
}

void QWebPageSlots::microFocusChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "microFocusChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBPAGE" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QWebPageSlots::printRequested( QWebFrame * frame )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "printRequested(QWebFrame*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBPAGE" );
    PHB_ITEM pframe = Qt5xHb::Signals_return_qobject( (QObject *) frame, "QWEBFRAME" );

    hb_vmEvalBlockV( cb, 2, psender, pframe );

    hb_itemRelease( psender );
    hb_itemRelease( pframe );
  }
}

void QWebPageSlots::repaintRequested( const QRect & dirtyRect )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "repaintRequested(QRect)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBPAGE" );
    PHB_ITEM pdirtyRect = Qt5xHb::Signals_return_object( (void *) &dirtyRect, "QRECT" );

    hb_vmEvalBlockV( cb, 2, psender, pdirtyRect );

    hb_itemRelease( psender );
    hb_itemRelease( pdirtyRect );
  }
}

void QWebPageSlots::restoreFrameStateRequested( QWebFrame * frame )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "restoreFrameStateRequested(QWebFrame*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBPAGE" );
    PHB_ITEM pframe = Qt5xHb::Signals_return_qobject( (QObject *) frame, "QWEBFRAME" );

    hb_vmEvalBlockV( cb, 2, psender, pframe );

    hb_itemRelease( psender );
    hb_itemRelease( pframe );
  }
}

void QWebPageSlots::saveFrameStateRequested( QWebFrame * frame, QWebHistoryItem * item )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "saveFrameStateRequested(QWebFrame*,QWebHistoryItem*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBPAGE" );
    PHB_ITEM pframe = Qt5xHb::Signals_return_qobject( (QObject *) frame, "QWEBFRAME" );
    PHB_ITEM pitem = Qt5xHb::Signals_return_object( (void *) item, "QWEBHISTORYITEM" );

    hb_vmEvalBlockV( cb, 3, psender, pframe, pitem );

    hb_itemRelease( psender );
    hb_itemRelease( pframe );
    hb_itemRelease( pitem );
  }
}

void QWebPageSlots::scrollRequested( int dx, int dy, const QRect & rectToScroll )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "scrollRequested(int,int,QRect)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBPAGE" );
    PHB_ITEM pdx = hb_itemPutNI( NULL, dx );
    PHB_ITEM pdy = hb_itemPutNI( NULL, dy );
    PHB_ITEM prectToScroll = Qt5xHb::Signals_return_object( (void *) &rectToScroll, "QRECT" );

    hb_vmEvalBlockV( cb, 4, psender, pdx, pdy, prectToScroll );

    hb_itemRelease( psender );
    hb_itemRelease( pdx );
    hb_itemRelease( pdy );
    hb_itemRelease( prectToScroll );
  }
}

void QWebPageSlots::selectionChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "selectionChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBPAGE" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QWebPageSlots::statusBarMessage( const QString & text )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "statusBarMessage(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBPAGE" );
    PHB_ITEM ptext = hb_itemPutC( NULL, QSTRINGTOSTRING(text) );

    hb_vmEvalBlockV( cb, 2, psender, ptext );

    hb_itemRelease( psender );
    hb_itemRelease( ptext );
  }
}

void QWebPageSlots::statusBarVisibilityChangeRequested( bool visible )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "statusBarVisibilityChangeRequested(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBPAGE" );
    PHB_ITEM pvisible = hb_itemPutL( NULL, visible );

    hb_vmEvalBlockV( cb, 2, psender, pvisible );

    hb_itemRelease( psender );
    hb_itemRelease( pvisible );
  }
}

void QWebPageSlots::toolBarVisibilityChangeRequested( bool visible )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "toolBarVisibilityChangeRequested(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBPAGE" );
    PHB_ITEM pvisible = hb_itemPutL( NULL, visible );

    hb_vmEvalBlockV( cb, 2, psender, pvisible );

    hb_itemRelease( psender );
    hb_itemRelease( pvisible );
  }
}

void QWebPageSlots::unsupportedContent( QNetworkReply * reply )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "unsupportedContent(QNetworkReply*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBPAGE" );
    PHB_ITEM preply = Qt5xHb::Signals_return_qobject( (QObject *) reply, "QNETWORKREPLY" );

    hb_vmEvalBlockV( cb, 2, psender, preply );

    hb_itemRelease( psender );
    hb_itemRelease( preply );
  }
}

void QWebPageSlots::viewportChangeRequested()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "viewportChangeRequested()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBPAGE" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QWebPageSlots::windowCloseRequested()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "windowCloseRequested()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWEBPAGE" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QWebPageSlots_connect_signal( const QString & signal, const QString & slot )
{
  QWebPage * obj = (QWebPage *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QWebPageSlots * s = QCoreApplication::instance()->findChild<QWebPageSlots *>();

    if( s == NULL )
    {
      s = new QWebPageSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Qt5xHb::Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
