$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
REQUEST QBYTEARRAY
#endif

CLASS QSignalTransition INHERIT QAbstractTransition

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD senderObject
   METHOD setSenderObject
   METHOD signal
   METHOD setSignal

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QSignalTransition(QState *sourceState = 0)
*/
void QSignalTransition_new1 ()
{
  QState * par1 = ISNIL(1)? 0 : (QState *) _qt5xhb_itemGetPtr(1);
  QSignalTransition * o = new QSignalTransition ( par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QSignalTransition(const QObject *sender, const char *signal,QState *sourceState = 0)
*/
void QSignalTransition_new2 ()
{
  const QObject * par1 = (const QObject *) _qt5xhb_itemGetPtr(1);
  QState * par3 = ISNIL(3)? 0 : (QState *) _qt5xhb_itemGetPtr(3);
  QSignalTransition * o = new QSignalTransition ( par1, PCONSTCHAR(2), par3 );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QSignalTransition(QState *sourceState = 0)
//[2]QSignalTransition(const QObject *sender, const char *signal,QState *sourceState = 0)

HB_FUNC_STATIC( QSIGNALTRANSITION_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSTATE(1)||ISNIL(1)) )
  {
    QSignalTransition_new1();
  }
  else if( ISBETWEEN(2,3) && ISQOBJECT(1) && ISCHAR(2) && (ISQSTATE(3)||ISNIL(3)) )
  {
    QSignalTransition_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QObject *senderObject() const
*/
HB_FUNC_STATIC( QSIGNALTRANSITION_SENDEROBJECT )
{
  QSignalTransition * obj = (QSignalTransition *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QObject * ptr = obj->senderObject ();
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}

/*
void setSenderObject(const QObject *sender)
*/
HB_FUNC_STATIC( QSIGNALTRANSITION_SETSENDEROBJECT )
{
  QSignalTransition * obj = (QSignalTransition *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQOBJECT(1) )
    {
      const QObject * par1 = (const QObject *) _qt5xhb_itemGetPtr(1);
      obj->setSenderObject ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QByteArray signal() const
*/
HB_FUNC_STATIC( QSIGNALTRANSITION_SIGNAL )
{
  QSignalTransition * obj = (QSignalTransition *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->signal () );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
void setSignal(const QByteArray &signal)
*/
HB_FUNC_STATIC( QSIGNALTRANSITION_SETSIGNAL )
{
  QSignalTransition * obj = (QSignalTransition *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQBYTEARRAY(1) )
    {
      obj->setSignal ( *PQBYTEARRAY(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP