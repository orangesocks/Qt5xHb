/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QAudioProbe INHERIT QObject

   METHOD new
   METHOD delete
   METHOD isActive
   METHOD setSource

   METHOD onAudioBufferProbed
   METHOD onFlush

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAudioProbe
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QAudioProbe>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtMultimedia/QAudioProbe>
#endif

/*
explicit QAudioProbe(QObject * parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QAUDIOPROBE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QAudioProbe * o = new QAudioProbe( OPQOBJECT(1,0) );
    Qt5xHb::returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QAudioProbe()
*/
HB_FUNC_STATIC( QAUDIOPROBE_DELETE )
{
  QAudioProbe * obj = (QAudioProbe *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isActive() const
*/
HB_FUNC_STATIC( QAUDIOPROBE_ISACTIVE )
{
  QAudioProbe * obj = (QAudioProbe *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isActive() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool setSource(QMediaObject * source)
*/
void QAudioProbe_setSource1()
{
  QAudioProbe * obj = (QAudioProbe *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->setSource( PQMEDIAOBJECT(1) ) );
  }
}

/*
bool setSource(QMediaRecorder * source)
*/
void QAudioProbe_setSource2()
{
  QAudioProbe * obj = (QAudioProbe *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->setSource( PQMEDIARECORDER(1) ) );
  }
}

/*
[1]bool setSource(QMediaObject * source)
[2]bool setSource(QMediaRecorder * mediaRecorder)
*/

HB_FUNC_STATIC( QAUDIOPROBE_SETSOURCE )
{
  if( ISNUMPAR(1) && ISQMEDIAOBJECT(1) )
  {
    QAudioProbe_setSource1();
  }
  else if( ISNUMPAR(1) && ISQMEDIARECORDER(1) )
  {
    QAudioProbe_setSource2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

void QAudioProbeSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QAUDIOPROBE_ONAUDIOBUFFERPROBED )
{
  QAudioProbeSlots_connect_signal( "audioBufferProbed(QAudioBuffer)", "audioBufferProbed(QAudioBuffer)" );
}

HB_FUNC_STATIC( QAUDIOPROBE_ONFLUSH )
{
  QAudioProbeSlots_connect_signal( "flush()", "flush()" );
}

#pragma ENDDUMP
