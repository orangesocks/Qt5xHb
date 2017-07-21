$header

#include "hbclass.ch"

CLASS QDoubleValidator INHERIT QValidator

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD bottom
   METHOD decimals
   METHOD notation
   METHOD setBottom
   METHOD setDecimals
   METHOD setNotation
   METHOD setRange
   METHOD setTop
   METHOD top
   METHOD validate

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QDoubleValidator ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_NEW1 )
{
  QDoubleValidator * o = new QDoubleValidator ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QDoubleValidator ( double bottom, double top, int decimals, QObject * parent )
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_NEW2 )
{
  QDoubleValidator * o = new QDoubleValidator ( PDOUBLE(1), PDOUBLE(2), PINT(3), PQOBJECT(4) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QDoubleValidator ( QObject * parent = 0 )
//[2]QDoubleValidator ( double bottom, double top, int decimals, QObject * parent = 0 )

HB_FUNC_STATIC( QDOUBLEVALIDATOR_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    HB_FUNC_EXEC( QDOUBLEVALIDATOR_NEW1 );
  }
  else if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISOPTQOBJECT(4) )
  {
    HB_FUNC_EXEC( QDOUBLEVALIDATOR_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
double bottom () const
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_BOTTOM )
{
  QDoubleValidator * obj = (QDoubleValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RDOUBLE( obj->bottom () );
  }
}


/*
int decimals () const
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_DECIMALS )
{
  QDoubleValidator * obj = (QDoubleValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->decimals () );
  }
}


/*
Notation notation () const
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_NOTATION )
{
  QDoubleValidator * obj = (QDoubleValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->notation () );
  }
}


/*
void setBottom ( double )
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_SETBOTTOM )
{
  QDoubleValidator * obj = (QDoubleValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBottom ( PDOUBLE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDecimals ( int )
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_SETDECIMALS )
{
  QDoubleValidator * obj = (QDoubleValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDecimals ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNotation ( Notation )
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_SETNOTATION )
{
  QDoubleValidator * obj = (QDoubleValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setNotation ( (QDoubleValidator::Notation) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setRange ( double minimum, double maximum, int decimals = 0 )
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_SETRANGE )
{
  QDoubleValidator * obj = (QDoubleValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRange ( PDOUBLE(1), PDOUBLE(2), OPINT(3,0) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTop ( double )
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_SETTOP )
{
  QDoubleValidator * obj = (QDoubleValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTop ( PDOUBLE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
double top () const
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_TOP )
{
  QDoubleValidator * obj = (QDoubleValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RDOUBLE( obj->top () );
  }
}


/*
virtual QValidator::State validate ( QString & input, int & pos ) const
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_VALIDATE )
{
  QDoubleValidator * obj = (QDoubleValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    int par2;
    hb_retni( obj->validate ( par1, par2 ) );
  }
}



#pragma ENDDUMP
