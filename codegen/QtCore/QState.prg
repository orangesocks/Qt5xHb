$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIGNALTRANSITION
REQUEST QABSTRACTTRANSITION
REQUEST QABSTRACTSTATE
#endif

CLASS QState INHERIT QAbstractState

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addTransition
   METHOD assignProperty
   METHOD childMode
   METHOD errorState
   METHOD initialState
   METHOD removeTransition
   METHOD setChildMode
   METHOD setErrorState
   METHOD setInitialState
   METHOD transitions

   METHOD onFinished
   METHOD onPropertiesAssigned

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QState ( QState * parent = 0 )
*/
void QState_new1 ()
{
  QState * par1 = ISNIL(1)? 0 : (QState *) _qt5xhb_itemGetPtr(1);
  QState * o = new QState ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QState ( ChildMode childMode, QState * parent = 0 )
*/
void QState_new2 ()
{
  QState * par2 = ISNIL(2)? 0 : (QState *) _qt5xhb_itemGetPtr(2);
  QState * o = new QState ( (QState::ChildMode) hb_parni(1), par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QState ( QState * parent = 0 )
//[2]QState ( ChildMode childMode, QState * parent = 0 )

HB_FUNC_STATIC( QSTATE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSTATE(1)||ISNIL(1)) )
  {
    QState_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQSTATE(2)||ISNIL(2)) )
  {
    QState_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void addTransition ( QAbstractTransition * transition )
*/
void QState_addTransition1 ()
{
  QState * obj = (QState *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAbstractTransition * par1 = (QAbstractTransition *) _qt5xhb_itemGetPtr(1);
    obj->addTransition ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSignalTransition * addTransition ( QObject * sender, const char * signal, QAbstractState * target )
*/
void QState_addTransition2 ()
{
  QState * obj = (QState *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAbstractState * par3 = (QAbstractState *) _qt5xhb_itemGetPtr(3);
    QSignalTransition * ptr = obj->addTransition ( PQOBJECT(1), PCONSTCHAR(2), par3 );
    _qt5xhb_createReturnClass ( ptr, "QSIGNALTRANSITION" );
  }
}

/*
QAbstractTransition * addTransition ( QAbstractState * target )
*/
void QState_addTransition3 ()
{
  QState * obj = (QState *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAbstractState * par1 = (QAbstractState *) _qt5xhb_itemGetPtr(1);
    QAbstractTransition * ptr = obj->addTransition ( par1 );
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTTRANSITION" );
  }
}

//[1]void addTransition ( QAbstractTransition * transition )
//[2]QSignalTransition * addTransition ( QObject * sender, const char * signal, QAbstractState * target )
//[3]QAbstractTransition * addTransition ( QAbstractState * target )

HB_FUNC_STATIC( QSTATE_ADDTRANSITION )
{
  if( ISNUMPAR(1) && ISQABSTRACTTRANSITION(1) )
  {
    QState_addTransition1();
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQABSTRACTSTATE(3) )
  {
    QState_addTransition2();
  }
  else if( ISNUMPAR(1) && ISQABSTRACTSTATE(1) )
  {
    QState_addTransition3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void assignProperty ( QObject * object, const char * name, const QVariant & value )
*/
HB_FUNC_STATIC( QSTATE_ASSIGNPROPERTY )
{
  QState * obj = (QState *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQOBJECT(1) && ISCHAR(2) && ISQVARIANT(3) )
    {
      obj->assignProperty ( PQOBJECT(1), PCONSTCHAR(2), *PQVARIANT(3) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
ChildMode childMode () const
*/
HB_FUNC_STATIC( QSTATE_CHILDMODE )
{
  QState * obj = (QState *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->childMode () );
  }
}

/*
QAbstractState * errorState () const
*/
HB_FUNC_STATIC( QSTATE_ERRORSTATE )
{
  QState * obj = (QState *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAbstractState * ptr = obj->errorState ();
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTSTATE" );
  }
}

/*
QAbstractState * initialState () const
*/
HB_FUNC_STATIC( QSTATE_INITIALSTATE )
{
  QState * obj = (QState *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAbstractState * ptr = obj->initialState ();
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTSTATE" );
  }
}

/*
void removeTransition ( QAbstractTransition * transition )
*/
HB_FUNC_STATIC( QSTATE_REMOVETRANSITION )
{
  QState * obj = (QState *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQABSTRACTTRANSITION(1) )
    {
      QAbstractTransition * par1 = (QAbstractTransition *) _qt5xhb_itemGetPtr(1);
      obj->removeTransition ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setChildMode ( ChildMode mode )
*/
HB_FUNC_STATIC( QSTATE_SETCHILDMODE )
{
  QState * obj = (QState *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setChildMode ( (QState::ChildMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setErrorState ( QAbstractState * state )
*/
HB_FUNC_STATIC( QSTATE_SETERRORSTATE )
{
  QState * obj = (QState *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQABSTRACTSTATE(1) )
    {
      QAbstractState * par1 = (QAbstractState *) _qt5xhb_itemGetPtr(1);
      obj->setErrorState ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setInitialState ( QAbstractState * state )
*/
HB_FUNC_STATIC( QSTATE_SETINITIALSTATE )
{
  QState * obj = (QState *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQABSTRACTSTATE(1) )
    {
      QAbstractState * par1 = (QAbstractState *) _qt5xhb_itemGetPtr(1);
      obj->setInitialState ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QList<QAbstractTransition *> transitions () const
*/
HB_FUNC_STATIC( QSTATE_TRANSITIONS )
{
  QState * obj = (QState *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QAbstractTransition *> list = obj->transitions ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QABSTRACTTRANSITION" );
    #else
    pDynSym = hb_dynsymFindName( "QABSTRACTTRANSITION" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QAbstractTransition *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

#pragma ENDDUMP