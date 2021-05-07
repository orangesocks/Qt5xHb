/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QGamepadManagerSlots.h"

QGamepadManagerSlots::QGamepadManagerSlots( QObject *parent ) : QObject( parent )
{
}

QGamepadManagerSlots::~QGamepadManagerSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadManagerSlots::axisConfigured( int deviceId, QGamepadManager::GamepadAxis axis )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "axisConfigured(int,QGamepadManager::GamepadAxis)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QGAMEPADMANAGER" );
    PHB_ITEM pdeviceId = hb_itemPutNI( NULL, deviceId );
    PHB_ITEM paxis = hb_itemPutNI( NULL, (int) axis );

    hb_vmEvalBlockV( cb, 3, psender, pdeviceId, paxis );

    hb_itemRelease( psender );
    hb_itemRelease( pdeviceId );
    hb_itemRelease( paxis );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadManagerSlots::buttonConfigured( int deviceId, QGamepadManager::GamepadButton button )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "buttonConfigured(int,QGamepadManager::GamepadButton)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QGAMEPADMANAGER" );
    PHB_ITEM pdeviceId = hb_itemPutNI( NULL, deviceId );
    PHB_ITEM pbutton = hb_itemPutNI( NULL, (int) button );

    hb_vmEvalBlockV( cb, 3, psender, pdeviceId, pbutton );

    hb_itemRelease( psender );
    hb_itemRelease( pdeviceId );
    hb_itemRelease( pbutton );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadManagerSlots::configurationCanceled( int deviceId )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "configurationCanceled(int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QGAMEPADMANAGER" );
    PHB_ITEM pdeviceId = hb_itemPutNI( NULL, deviceId );

    hb_vmEvalBlockV( cb, 2, psender, pdeviceId );

    hb_itemRelease( psender );
    hb_itemRelease( pdeviceId );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadManagerSlots::connectedGamepadsChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "connectedGamepadsChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QGAMEPADMANAGER" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadManagerSlots::gamepadAxisEvent( int deviceId, QGamepadManager::GamepadAxis axis, double value )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "gamepadAxisEvent(int,QGamepadManager::GamepadAxis,double)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QGAMEPADMANAGER" );
    PHB_ITEM pdeviceId = hb_itemPutNI( NULL, deviceId );
    PHB_ITEM paxis = hb_itemPutNI( NULL, (int) axis );
    PHB_ITEM pvalue = hb_itemPutND( NULL, value );

    hb_vmEvalBlockV( cb, 4, psender, pdeviceId, paxis, pvalue );

    hb_itemRelease( psender );
    hb_itemRelease( pdeviceId );
    hb_itemRelease( paxis );
    hb_itemRelease( pvalue );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadManagerSlots::gamepadButtonPressEvent( int deviceId, QGamepadManager::GamepadButton button, double value )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "gamepadButtonPressEvent(int,QGamepadManager::GamepadButton,double)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QGAMEPADMANAGER" );
    PHB_ITEM pdeviceId = hb_itemPutNI( NULL, deviceId );
    PHB_ITEM pbutton = hb_itemPutNI( NULL, (int) button );
    PHB_ITEM pvalue = hb_itemPutND( NULL, value );

    hb_vmEvalBlockV( cb, 4, psender, pdeviceId, pbutton, pvalue );

    hb_itemRelease( psender );
    hb_itemRelease( pdeviceId );
    hb_itemRelease( pbutton );
    hb_itemRelease( pvalue );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadManagerSlots::gamepadButtonReleaseEvent( int deviceId, QGamepadManager::GamepadButton button )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "gamepadButtonReleaseEvent(int,QGamepadManager::GamepadButton)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QGAMEPADMANAGER" );
    PHB_ITEM pdeviceId = hb_itemPutNI( NULL, deviceId );
    PHB_ITEM pbutton = hb_itemPutNI( NULL, (int) button );

    hb_vmEvalBlockV( cb, 3, psender, pdeviceId, pbutton );

    hb_itemRelease( psender );
    hb_itemRelease( pdeviceId );
    hb_itemRelease( pbutton );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadManagerSlots::gamepadConnected( int deviceId )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "gamepadConnected(int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QGAMEPADMANAGER" );
    PHB_ITEM pdeviceId = hb_itemPutNI( NULL, deviceId );

    hb_vmEvalBlockV( cb, 2, psender, pdeviceId );

    hb_itemRelease( psender );
    hb_itemRelease( pdeviceId );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadManagerSlots::gamepadDisconnected( int deviceId )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "gamepadDisconnected(int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QGAMEPADMANAGER" );
    PHB_ITEM pdeviceId = hb_itemPutNI( NULL, deviceId );

    hb_vmEvalBlockV( cb, 2, psender, pdeviceId );

    hb_itemRelease( psender );
    hb_itemRelease( pdeviceId );
  }
}
#endif

void QGamepadManagerSlots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadManager * obj = (QGamepadManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QGamepadManagerSlots * s = QCoreApplication::instance()->findChild<QGamepadManagerSlots *>();

    if( s == NULL )
    {
      s = new QGamepadManagerSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Qt5xHb::Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
#else
  hb_retl( false );
#endif
}
