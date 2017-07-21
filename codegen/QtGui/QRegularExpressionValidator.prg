$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QREGULAREXPRESSION
#endif

CLASS QRegularExpressionValidator INHERIT QValidator

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD regularExpression
   METHOD setRegularExpression

   METHOD onRegularExpressionChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QRegularExpressionValidator(QObject *parent = 0)
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONVALIDATOR_NEW1 )
{
  QRegularExpressionValidator * o = new QRegularExpressionValidator ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QRegularExpressionValidator(const QRegularExpression &re, QObject *parent = 0)
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONVALIDATOR_NEW2 )
{
  QRegularExpressionValidator * o = new QRegularExpressionValidator ( *PQREGULAREXPRESSION(1), OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QRegularExpressionValidator(QObject *parent = 0)
//[2]QRegularExpressionValidator(const QRegularExpression &re, QObject *parent = 0)

HB_FUNC_STATIC( QREGULAREXPRESSIONVALIDATOR_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    HB_FUNC_EXEC( QREGULAREXPRESSIONVALIDATOR_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQREGULAREXPRESSION(1) && ISOPTQOBJECT(2) )
  {
    HB_FUNC_EXEC( QREGULAREXPRESSIONVALIDATOR_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QRegularExpression regularExpression() const
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONVALIDATOR_REGULAREXPRESSION )
{
  QRegularExpressionValidator * obj = (QRegularExpressionValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegularExpression * ptr = new QRegularExpression( obj->regularExpression () );
    _qt5xhb_createReturnClass ( ptr, "QREGULAREXPRESSION", true );
  }
}


/*
void setRegularExpression(const QRegularExpression &re)
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONVALIDATOR_SETREGULAREXPRESSION )
{
  QRegularExpressionValidator * obj = (QRegularExpressionValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRegularExpression ( *PQREGULAREXPRESSION(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
