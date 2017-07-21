$header

#include "hbclass.ch"

CLASS QBluetoothUuid INHERIT QUuid

   DATA self_destruction INIT .F.

   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new
   METHOD delete
   METHOD minimumSize
   METHOD toUInt16
   METHOD toUInt32

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

/*
QBluetoothUuid()
*/
$internalConstructor=5,2,0|new1|

/*
QBluetoothUuid(ProtocolUuid uuid)
*/
$constructor=5,2,0|new2|QBluetoothUuid::ProtocolUuid

/*
QBluetoothUuid(ServiceClassUuid uuid)
*/
$constructor=5,2,0|new3|QBluetoothUuid::ServiceClassUuid

/*
QBluetoothUuid(quint16 uuid)
*/
$constructor=5,2,0|new4|quint16

/*
QBluetoothUuid(quint32 uuid)
*/
$constructor=5,2,0|new5|quint32

/*
QBluetoothUuid(quint128 uuid)
*/
$constructor=5,2,0|new6|quint128

/*
QBluetoothUuid(const QString &uuid)
*/
$internalConstructor=5,2,0|new7|const QString &

/*
QBluetoothUuid(const QBluetoothUuid &uuid)
*/
$internalConstructor=5,2,0|new8|const QBluetoothUuid &

/*
QBluetoothUuid(const QUuid &uuid)
*/
$internalConstructor=5,2,0|new9|const QUuid &

//[1]QBluetoothUuid()
//[2]QBluetoothUuid(ProtocolUuid uuid)
//[3]QBluetoothUuid(ServiceClassUuid uuid)
//[4]QBluetoothUuid(quint16 uuid)
//[5]QBluetoothUuid(quint32 uuid)
//[6]QBluetoothUuid(quint128 uuid)
//[7]QBluetoothUuid(const QString &uuid)
//[8]QBluetoothUuid(const QBluetoothUuid &uuid)
//[9]QBluetoothUuid(const QUuid &uuid)

HB_FUNC_STATIC( QBLUETOOTHUUID_NEW ) // TODO: resolver conflitos
{
  if( ISNUMPAR(0) )
  {
    QBluetoothUuid_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QBLUETOOTHUUID_NEW2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QBLUETOOTHUUID_NEW3 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QBLUETOOTHUUID_NEW4 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QBLUETOOTHUUID_NEW5 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QBLUETOOTHUUID_NEW6 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QBluetoothUuid_new7();
  }
  else if( ISNUMPAR(1) && ISQBLUETOOTHUUID(1) )
  {
    QBluetoothUuid_new8();
  }
  else if( ISNUMPAR(1) && ISQUUID(1) )
  {
    QBluetoothUuid_new9();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

/*
int minimumSize() const
*/
$method=5,2,0|int|minimumSize|

/*
quint16 toUInt16(bool *ok = 0) const
*/
HB_FUNC_STATIC( QBLUETOOTHUUID_TOUINT16 ) // TODO: revisar e implementar parametro opcional
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothUuid * obj = (QBluetoothUuid *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTLOG(1) )
    {
      bool par1;
      RQUINT16( obj->toUInt16 ( &par1 ) );
      hb_storl( par1, 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
quint32 toUInt32(bool *ok = 0) const
*/
HB_FUNC_STATIC( QBLUETOOTHUUID_TOUINT32 ) // TODO: revisar e implementar parametro opcional
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothUuid * obj = (QBluetoothUuid *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTLOG(1) )
    {
      bool par1;
      RQUINT32( obj->toUInt32 ( &par1 ) );
      hb_storl( par1, 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
  convert QList<QBluetoothUuid> to array
*/
void _qt5xhb_convert_qlist_qbluetoothuuid_to_array ( const QList<QBluetoothUuid> & list )
{
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QBLUETOOTHUUID" );
  #else
  pDynSym = hb_dynsymFindName( "QBLUETOOTHUUID" );
  #endif

  PHB_ITEM pArray = hb_itemArrayNew(0);

  int i;

  for(i=0; i<list.count(); i++)
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
      hb_itemPutPtr( pItem, (QBluetoothUuid *) new QBluetoothUuid ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }

  hb_itemReturnRelease(pArray);
}

#pragma ENDDUMP