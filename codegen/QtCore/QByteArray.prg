$header

#include "hbclass.ch"

CLASS QByteArray

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD append1
   METHOD append2
   METHOD append3
   METHOD append4
   METHOD append5
   METHOD append
   METHOD at
   METHOD capacity
   METHOD chop
   METHOD clear
   METHOD constData
   METHOD contains
   METHOD count
   METHOD data2
   METHOD data
   METHOD endsWith
   METHOD fill
   METHOD indexOf1
   METHOD indexOf2
   METHOD indexOf3
   METHOD indexOf4
   METHOD indexOf
   METHOD insert1
   METHOD insert2
   METHOD insert3
   METHOD insert4
   METHOD insert5
   METHOD insert
   METHOD isEmpty
   METHOD isNull
   METHOD lastIndexOf1
   METHOD lastIndexOf2
   METHOD lastIndexOf3
   METHOD lastIndexOf4
   METHOD lastIndexOf
   METHOD left
   METHOD leftJustified
   METHOD length
   METHOD mid
   METHOD prepend
   METHOD push_back
   METHOD push_front
   METHOD remove
   METHOD repeated
   METHOD replace1
   METHOD replace2
   METHOD replace3
   METHOD replace4
   METHOD replace5
   METHOD replace6
   METHOD replace7
   METHOD replace8
   METHOD replace9
   METHOD replace10
   METHOD replace11
   METHOD replace12
   METHOD replace13
   METHOD replace14
   METHOD replace
   METHOD reserve
   METHOD resize
   METHOD right
   METHOD rightJustified
   METHOD setNum1
   METHOD setNum2
   METHOD setNum3
   METHOD setNum4
   METHOD setNum5
   METHOD setNum6
   METHOD setNum7
   METHOD setNum8
   METHOD setNum
   METHOD setRawData
   METHOD simplified
   METHOD size
   METHOD split
   METHOD squeeze
   METHOD startsWith
   METHOD toBase64
   METHOD toDouble
   METHOD toFloat
   METHOD toHex
   METHOD toInt
   METHOD toLong
   METHOD toLongLong
   METHOD toLower
   METHOD toPercentEncoding
   METHOD toShort
   METHOD toUInt
   METHOD toULong
   METHOD toULongLong
   METHOD toUShort
   METHOD toUpper
   METHOD trimmed
   METHOD truncate
   METHOD fromBase64
   METHOD fromHex
   METHOD fromPercentEncoding
   METHOD fromRawData
   METHOD number1
   METHOD number2
   METHOD number3
   METHOD number4
   METHOD number5
   METHOD number

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QString>
#include <QList>

/*
QByteArray ()
*/
$internalConstructor=|new1|

/*
QByteArray ( const char * str )
*/
$internalConstructor=|new2|const char *

/*
QByteArray ( const char * data, int size )
*/
$internalConstructor=|new3|const char *,int

/*
QByteArray ( int size, char ch )
*/
void QByteArray_new4 ()
{
  char par2 = ISCHAR(2)? (char) hb_parc(2)[0] : (ISNUM(2)? hb_parni(2) : 0);
  QByteArray * o = new QByteArray ( PINT(1), par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QByteArray ( const QByteArray & other )
*/
$internalConstructor=|new5|const QByteArray &

//[1]QByteArray ()
//[2]QByteArray ( const char * str )
//[3]QByteArray ( const char * data, int size )
//[4]QByteArray ( int size, char ch )
//[5]QByteArray ( const QByteArray & other )

HB_FUNC_STATIC( QBYTEARRAY_NEW )
{
  if( ISNUMPAR(0) )
  {
    QByteArray_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QByteArray_new2();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QByteArray_new3();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QByteArray_new4();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QByteArray_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QByteArray & append ( const QByteArray & ba )
*/
HB_FUNC_STATIC( QBYTEARRAY_APPEND1 )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQBYTEARRAY(1) )
    {
      QByteArray * ptr = new QByteArray( obj->append ( *PQBYTEARRAY(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray & append ( const QString & str )
*/
HB_FUNC_STATIC( QBYTEARRAY_APPEND2 )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QByteArray * ptr = new QByteArray( obj->append ( PQSTRING(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray & append ( const char * str )
*/
HB_FUNC_STATIC( QBYTEARRAY_APPEND3 )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QByteArray * ptr = new QByteArray( obj->append ( PCONSTCHAR(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray & append ( const char * str, int len )
*/
HB_FUNC_STATIC( QBYTEARRAY_APPEND4 )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISNUM(2) )
    {
      QByteArray * ptr = new QByteArray( obj->append ( PCONSTCHAR(1), PINT(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray & append ( char ch )
*/
HB_FUNC_STATIC( QBYTEARRAY_APPEND5 )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISNUM(1)||ISCHAR(1)) )
    {
      char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
      QByteArray * ptr = new QByteArray( obj->append ( par1 ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

// TODO: resolver conflito entre [2] e [3]

//[1]QByteArray & append ( const QByteArray & ba )
//[2]QByteArray & append ( const QString & str )
//[3]QByteArray & append ( const char * str )
//[4]QByteArray & append ( const char * str, int len )
//[5]QByteArray & append ( char ch )

HB_FUNC_STATIC( QBYTEARRAY_APPEND )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_APPEND1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_APPEND2 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_APPEND4 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_APPEND5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
char at ( int i ) const
*/
$method=|char|at|int

/*
int capacity () const
*/
$method=|int|capacity|

/*
void chop ( int n )
*/
$method=|void|chop|int

/*
void clear ()
*/
$method=|void|clear|

/*
const char * constData () const
*/
$method=|const char *|constData|

/*
bool contains ( const QByteArray & ba ) const
*/
$internalMethod=|bool|contains,contains1|const QByteArray &

/*
bool contains ( const char * str ) const
*/
$internalMethod=|bool|contains,contains2|const char *

/*
bool contains ( char ch ) const
*/
void QByteArray_contains3 ()
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
    RBOOL( obj->contains ( par1 ) );
  }
}

//[1]bool contains ( const QByteArray & ba ) const
//[2]bool contains ( const char * str ) const
//[3]bool contains ( char ch ) const

HB_FUNC_STATIC( QBYTEARRAY_CONTAINS )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QByteArray_contains1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QByteArray_contains2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QByteArray_contains3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int count ( const QByteArray & ba ) const
*/
$internalMethod=|int|count,count1|const QByteArray &

/*
int count ( const char * str ) const
*/
$internalMethod=|int|count,count2|const char *

/*
int count ( char ch ) const
*/
void QByteArray_count3 ()
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
    RINT( obj->count ( par1 ) );
  }
}

/*
int count () const
*/
$internalMethod=|int|count,count4|

//[1]int count ( const QByteArray & ba ) const
//[2]int count ( const char * str ) const
//[3]int count ( char ch ) const
//[4]int count () const

HB_FUNC_STATIC( QBYTEARRAY_COUNT )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QByteArray_count1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QByteArray_count2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QByteArray_count3();
  }
  else if( ISNUMPAR(0) )
  {
    QByteArray_count4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
const char * data () const
*/
$method=|const char *|data,data2|

// TODO: revisar implementacao dos metodos
//[1]char * data ()
//[2]const char * data () const

HB_FUNC_STATIC( QBYTEARRAY_DATA )
{
  HB_FUNC_EXEC( QBYTEARRAY_DATA2 );
}

/*
bool endsWith ( const QByteArray & ba ) const
*/
$internalMethod=|bool|endsWith,endsWith1|const QByteArray &

/*
bool endsWith ( const char * str ) const
*/
$internalMethod=|bool|endsWith,endsWith2|const char *

/*
bool endsWith ( char ch ) const
*/
void QByteArray_endsWith3 ()
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
    RBOOL( obj->endsWith ( par1 ) );
  }
}

//[1]bool endsWith ( const QByteArray & ba ) const
//[2]bool endsWith ( const char * str ) const
//[3]bool endsWith ( char ch ) const

HB_FUNC_STATIC( QBYTEARRAY_ENDSWITH )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QByteArray_endsWith1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QByteArray_endsWith2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QByteArray_endsWith3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QByteArray & fill ( char ch, int size = -1 )
*/
HB_FUNC_STATIC( QBYTEARRAY_FILL )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISNUM(1)||ISCHAR(1)) && ISOPTNUM(2) )
    {
      char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
      QByteArray * ptr = new QByteArray( obj->fill ( par1, OPINT(2,-1) ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int indexOf ( const QByteArray & ba, int from = 0 ) const
*/
$internalMethod=|int|indexOf,indexOf1|const QByteArray &,int=0

/*
int indexOf ( const QString & str, int from = 0 ) const
*/
$internalMethod=|int|indexOf,indexOf2|const QString &,int=0

/*
int indexOf ( const char * str, int from = 0 ) const
*/
$method=|int|indexOf,indexOf3|const char *,int=0

/*
int indexOf ( char ch, int from = 0 ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_INDEXOF4 )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISNUM(1)||ISCHAR(1)) && ISOPTNUM(2) )
    {
      char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
      RINT( obj->indexOf ( par1, OPINT(2,0) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

// TODO: resolver conflito entre [2] e [3]
//[1]int indexOf ( const QByteArray & ba, int from = 0 ) const
//[2]int indexOf ( const QString & str, int from = 0 ) const
//[3]int indexOf ( const char * str, int from = 0 ) const
//[4]int indexOf ( char ch, int from = 0 ) const

HB_FUNC_STATIC( QBYTEARRAY_INDEXOF )
{
  if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && ISOPTNUM(2) )
  {
    QByteARRAY_indexOf1 ();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QByteARRAY_indexOf2 ();
  }
  //else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  //{
  //  HB_FUNC_EXEC( QBYTEARRAY_INDEXOF3 );
  //}
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_INDEXOF4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QByteArray & insert ( int i, const QByteArray & ba )
*/
HB_FUNC_STATIC( QBYTEARRAY_INSERT1 )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQBYTEARRAY(2) )
    {
      QByteArray * ptr = new QByteArray( obj->insert ( PINT(1), *PQBYTEARRAY(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray & insert ( int i, const QString & str )
*/
HB_FUNC_STATIC( QBYTEARRAY_INSERT2 )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISCHAR(2) )
    {
      QByteArray * ptr = new QByteArray( obj->insert ( PINT(1), PQSTRING(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray & insert ( int i, const char * str )
*/
HB_FUNC_STATIC( QBYTEARRAY_INSERT3 )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISCHAR(2) )
    {
      QByteArray * ptr = new QByteArray( obj->insert ( PINT(1), PCONSTCHAR(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray & insert ( int i, const char * str, int len )
*/
HB_FUNC_STATIC( QBYTEARRAY_INSERT4 )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISCHAR(2) && ISNUM(3) )
    {
      QByteArray * ptr = new QByteArray( obj->insert ( PINT(1), PCONSTCHAR(2), PINT(3) ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray & insert ( int i, char ch )
*/
HB_FUNC_STATIC( QBYTEARRAY_INSERT5 )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && (ISNUM(2)||ISCHAR(2)) )
    {
      char par2 = ISCHAR(2)? (char) hb_parc(2)[0] : (ISNUM(2)? hb_parni(2) : 0);
      QByteArray * ptr = new QByteArray( obj->insert ( PINT(1), par2 ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

// TODO: resolver conflito entre [2] e [3]
//[1]QByteArray & insert ( int i, const QByteArray & ba )
//[2]QByteArray & insert ( int i, const QString & str )
//[3]QByteArray & insert ( int i, const char * str )
//[4]QByteArray & insert ( int i, const char * str, int len )
//[5]QByteArray & insert ( int i, char ch )

HB_FUNC_STATIC( QBYTEARRAY_INSERT )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQBYTEARRAY(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_INSERT1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_INSERT2 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISCHAR(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_INSERT4 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_INSERT5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isEmpty () const
*/
$method=|bool|isEmpty|

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
int lastIndexOf ( const QByteArray & ba, int from = -1 ) const
*/
$method=|int|lastIndexOf,lastIndexOf1|const QByteArray &,int=-1

/*
int lastIndexOf ( const QString & str, int from = -1 ) const
*/
$method=|int|lastIndexOf,lastIndexOf2|const QString &,int=-1

/*
int lastIndexOf ( const char * str, int from = -1 ) const
*/
$method=|int|lastIndexOf,lastIndexOf3|const char *,int=-1

/*
int lastIndexOf ( char ch, int from = -1 ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_LASTINDEXOF4 )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISNUM(1)||ISCHAR(1)) && ISOPTNUM(2) )
    {
      char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
      RINT( obj->lastIndexOf ( par1, OPINT(2,-1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

// TODO: resolver conflito entre [2] e [3]
//[1]int lastIndexOf ( const QByteArray & ba, int from = -1 ) const
//[2]int lastIndexOf ( const QString & str, int from = -1 ) const
//[3]int lastIndexOf ( const char * str, int from = -1 ) const
//[4]int lastIndexOf ( char ch, int from = -1 ) const

HB_FUNC_STATIC( QBYTEARRAY_LASTINDEXOF )
{
  if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_LASTINDEXOF1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_LASTINDEXOF2 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_LASTINDEXOF3 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_LASTINDEXOF4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QByteArray left ( int len ) const
*/
$method=|QByteArray|left|int

/*
QByteArray leftJustified ( int width, char fill = ' ', bool truncate = false ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_LEFTJUSTIFIED )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && (ISNUM(2)||ISCHAR(2)||ISNIL(2)) && ISOPTLOG(3) )
    {
      char par2 = ISNIL(2)? 32 : (ISCHAR(2)? (char) hb_parc(2)[0] : (ISNUM(2)? hb_parni(2) : 0));
      QByteArray * ptr = new QByteArray( obj->leftJustified ( PINT(1), par2, OPBOOL(3,false) ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int length () const
*/
$method=|int|length|

/*
QByteArray mid ( int pos, int len = -1 ) const
*/
$method=|QByteArray|mid|int,int=-1

/*
QByteArray & prepend ( const QByteArray & ba )
*/
void QByteArray_prepend1 ()
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->prepend ( *PQBYTEARRAY(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
QByteArray & prepend ( const char * str )
*/
void QByteArray_prepend2 ()
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->prepend ( PCONSTCHAR(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
QByteArray & prepend ( const char * str, int len )
*/
void QByteArray_prepend3 ()
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->prepend ( PCONSTCHAR(1), PINT(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
QByteArray & prepend ( char ch )
*/
void QByteArray_prepend4 ()
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
    QByteArray * ptr = new QByteArray( obj->prepend ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

//[1]QByteArray & prepend ( const QByteArray & ba )
//[2]QByteArray & prepend ( const char * str )
//[3]QByteArray & prepend ( const char * str, int len )
//[4]QByteArray & prepend ( char ch )

HB_FUNC_STATIC( QBYTEARRAY_PREPEND )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QByteArray_prepend1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QByteArray_prepend2();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QByteArray_prepend3();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QByteArray_prepend4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void push_back ( const QByteArray & other )
*/
$internalMethod=|void|push_back,push_back1|const QByteArray &

/*
void push_back ( const char * str )
*/
$internalMethod=|void|push_back,push_back2|const char *

/*
void push_back ( char ch )
*/
void QByteArray_push_back3 ()
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
    obj->push_back ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

// TODO: revisar implementacao dos metodos [2] vs [3]
//[1]void push_back ( const QByteArray & other )
//[2]void push_back ( const char * str )
//[3]void push_back ( char ch )

HB_FUNC_STATIC( QBYTEARRAY_PUSH_BACK )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QByteArray_push_back1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QByteArray_push_back2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QByteArray_push_back3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void push_front ( const QByteArray & other )
*/
$internalMethod=|void|push_front,push_front1|const QByteArray &

/*
void push_front ( const char * str )
*/
$internalMethod=|void|push_front,push_front2|const char *

/*
void push_front ( char ch )
*/
void QByteArray_push_front3 ()
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
    obj->push_front ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

// TODO: revisar implementacao dos metodos [2] vs [3]
//[1]void push_front ( const QByteArray & other )
//[2]void push_front ( const char * str )
//[3]void push_front ( char ch )

HB_FUNC_STATIC( QBYTEARRAY_PUSH_FRONT )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QByteArray_push_front1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QByteArray_push_front2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QByteArray_push_front3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QByteArray & remove ( int pos, int len )
*/
HB_FUNC_STATIC( QBYTEARRAY_REMOVE )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      QByteArray * ptr = new QByteArray( obj->remove ( PINT(1), PINT(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray repeated ( int times ) const
*/
$method=|QByteArray|repeated|int

/*
QByteArray & replace ( int pos, int len, const QByteArray & after )
*/
HB_FUNC_STATIC( QBYTEARRAY_REPLACE1 )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && ISQBYTEARRAY(3) )
    {
      QByteArray * ptr = new QByteArray( obj->replace ( PINT(1), PINT(2), *PQBYTEARRAY(3) ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray & replace ( int pos, int len, const char * after )
*/
HB_FUNC_STATIC( QBYTEARRAY_REPLACE2 )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && ISCHAR(3) )
    {
      QByteArray * ptr = new QByteArray( obj->replace ( PINT(1), PINT(2), PCONSTCHAR(3) ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray & replace ( int pos, int len, const char * after, int alen )
*/
HB_FUNC_STATIC( QBYTEARRAY_REPLACE3 )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && ISCHAR(3) && ISNUM(4) )
    {
      QByteArray * ptr = new QByteArray( obj->replace ( PINT(1), PINT(2), PCONSTCHAR(3), PINT(4) ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray & replace ( const QByteArray & before, const QByteArray & after )
*/
HB_FUNC_STATIC( QBYTEARRAY_REPLACE4 )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQBYTEARRAY(1) && ISQBYTEARRAY(2) )
    {
      QByteArray * ptr = new QByteArray( obj->replace ( *PQBYTEARRAY(1), *PQBYTEARRAY(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray & replace ( const char * before, const QByteArray & after )
*/
HB_FUNC_STATIC( QBYTEARRAY_REPLACE5 )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISQBYTEARRAY(2) )
    {
      QByteArray * ptr = new QByteArray( obj->replace ( PCONSTCHAR(1), *PQBYTEARRAY(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray & replace ( const char * before, int bsize, const char * after, int asize )
*/
HB_FUNC_STATIC( QBYTEARRAY_REPLACE6 )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISNUM(2) && ISCHAR(3) && ISNUM(4) )
    {
      QByteArray * ptr = new QByteArray( obj->replace ( PCONSTCHAR(1), PINT(2), PCONSTCHAR(3), PINT(4) ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray & replace ( const QByteArray & before, const char * after )
*/
HB_FUNC_STATIC( QBYTEARRAY_REPLACE7 )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQBYTEARRAY(1) && ISCHAR(2) )
    {
      QByteArray * ptr = new QByteArray( obj->replace ( *PQBYTEARRAY(1), PCONSTCHAR(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray & replace ( const QString & before, const QByteArray & after )
*/
HB_FUNC_STATIC( QBYTEARRAY_REPLACE8 )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISQBYTEARRAY(2) )
    {
      QByteArray * ptr = new QByteArray( obj->replace ( PQSTRING(1), *PQBYTEARRAY(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray & replace ( const QString & before, const char * after )
*/
HB_FUNC_STATIC( QBYTEARRAY_REPLACE9 )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISCHAR(2) )
    {
      QByteArray * ptr = new QByteArray( obj->replace ( PQSTRING(1), PCONSTCHAR(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray & replace ( const char * before, const char * after )
*/
HB_FUNC_STATIC( QBYTEARRAY_REPLACE10 )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISCHAR(2) )
    {
      QByteArray * ptr = new QByteArray( obj->replace ( PCONSTCHAR(1), PCONSTCHAR(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray & replace ( char before, const QByteArray & after )
*/
HB_FUNC_STATIC( QBYTEARRAY_REPLACE11 )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISNUM(1)||ISCHAR(1)) && ISQBYTEARRAY(2) )
    {
      char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
      QByteArray * ptr = new QByteArray( obj->replace ( par1, *PQBYTEARRAY(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray & replace ( char before, const QString & after )
*/
HB_FUNC_STATIC( QBYTEARRAY_REPLACE12 )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISNUM(1)||ISCHAR(1)) && ISCHAR(2) )
    {
      char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
      QByteArray * ptr = new QByteArray( obj->replace ( par1, PQSTRING(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray & replace ( char before, const char * after )
*/
HB_FUNC_STATIC( QBYTEARRAY_REPLACE13 )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISNUM(1)||ISCHAR(1)) && ISCHAR(2) )
    {
      char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
      QByteArray * ptr = new QByteArray( obj->replace ( par1, PCONSTCHAR(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray & replace ( char before, char after )
*/
HB_FUNC_STATIC( QBYTEARRAY_REPLACE14 )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISNUM(1)||ISCHAR(1)) && (ISNUM(2)||ISCHAR(2)) )
    {
      char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
      char par2 = ISCHAR(2)? (char) hb_parc(2)[0] : (ISNUM(2)? hb_parni(2) : 0);
      QByteArray * ptr = new QByteArray( obj->replace ( par1, par2 ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

// TODO: resolver conflitos
//[01]QByteArray & replace ( int pos, int len, const QByteArray & after )
//[02]QByteArray & replace ( int pos, int len, const char * after )
//[03]QByteArray & replace ( int pos, int len, const char * after, int alen )
//[04]QByteArray & replace ( const QByteArray & before, const QByteArray & after )
//[05]QByteArray & replace ( const char * before, const QByteArray & after )
//[06]QByteArray & replace ( const char * before, int bsize, const char * after, int asize )
//[07]QByteArray & replace ( const QByteArray & before, const char * after )
//[08]QByteArray & replace ( const QString & before, const QByteArray & after )
//[09]QByteArray & replace ( const QString & before, const char * after )
//[10]QByteArray & replace ( const char * before, const char * after )
//[11]QByteArray & replace ( char before, const QByteArray & after )
//[12]QByteArray & replace ( char before, const QString & after )
//[13]QByteArray & replace ( char before, const char * after )
//[14]QByteArray & replace ( char before, char after )

HB_FUNC_STATIC( QBYTEARRAY_REPLACE )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQBYTEARRAY(3) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE1 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE2 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISCHAR(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE3 );
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISQBYTEARRAY(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE4 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQBYTEARRAY(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE5 );
  }
  else if( ISNUMPAR(4) && ISCHAR(1) && ISNUM(2) && ISCHAR(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE6 );
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE7 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQBYTEARRAY(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE8 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE9 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE10 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQBYTEARRAY(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE11 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE12 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE13 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE14 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void reserve ( int size )
*/
$method=|void|reserve|int

/*
void resize ( int size )
*/
$method=|void|resize|int

/*
QByteArray right ( int len ) const
*/
$method=|QByteArray|right|int

/*
QByteArray rightJustified ( int width, char fill = ' ', bool truncate = false ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_RIGHTJUSTIFIED )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && (ISNUM(2)||ISCHAR(2)||ISNIL(2)) && ISOPTLOG(3) )
    {
      char par2 = ISNIL(2)? 32 : (ISCHAR(2)? (char) hb_parc(2)[0] : (ISNUM(2)? hb_parni(2) : 0));
      QByteArray * ptr = new QByteArray( obj->rightJustified ( PINT(1), par2, OPBOOL(3,false) ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray & setNum ( int n, int base = 10 )
*/
HB_FUNC_STATIC( QBYTEARRAY_SETNUM1 )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISOPTNUM(2) )
    {
      QByteArray * ptr = new QByteArray( obj->setNum ( PINT(1), OPINT(2,10) ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray & setNum ( uint n, int base = 10 )
*/
HB_FUNC_STATIC( QBYTEARRAY_SETNUM2 )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISOPTNUM(2) )
    {
      QByteArray * ptr = new QByteArray( obj->setNum ( (uint) hb_parni(1), OPINT(2,10) ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray & setNum ( short n, int base = 10 )
*/
HB_FUNC_STATIC( QBYTEARRAY_SETNUM3 )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISOPTNUM(2) )
    {
      QByteArray * ptr = new QByteArray( obj->setNum ( (short) hb_parni(1), OPINT(2,10) ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray & setNum ( ushort n, int base = 10 )
*/
HB_FUNC_STATIC( QBYTEARRAY_SETNUM4 )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISOPTNUM(2) )
    {
      QByteArray * ptr = new QByteArray( obj->setNum ( (ushort) hb_parni(1), OPINT(2,10) ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray & setNum ( qlonglong n, int base = 10 )
*/
HB_FUNC_STATIC( QBYTEARRAY_SETNUM5 )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISOPTNUM(2) )
    {
      qlonglong par1 = hb_parnl(1);
      QByteArray * ptr = new QByteArray( obj->setNum ( par1, OPINT(2,10) ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray & setNum ( qulonglong n, int base = 10 )
*/
HB_FUNC_STATIC( QBYTEARRAY_SETNUM6 )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISOPTNUM(2) )
    {
      qulonglong par1 = hb_parnl(1);
      QByteArray * ptr = new QByteArray( obj->setNum ( par1, OPINT(2,10) ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray & setNum ( double n, char f = 'g', int prec = 6 )
*/
HB_FUNC_STATIC( QBYTEARRAY_SETNUM7 )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && (ISNUM(2)||ISCHAR(2)||ISNIL(2)) && ISOPTNUM(3) )
    {
      char par2 = ISNIL(2)? 103 : (ISCHAR(2)? (char) hb_parc(2)[0] : (ISNUM(2)? hb_parni(2) : 0));
      QByteArray * ptr = &obj->setNum ( PDOUBLE(1), par2, OPINT(3,6) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray & setNum ( float n, char f = 'g', int prec = 6 )
*/
HB_FUNC_STATIC( QBYTEARRAY_SETNUM8 )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && (ISNUM(2)||ISCHAR(2)||ISNIL(2)) && ISOPTNUM(3) )
    {
      char par2 = ISNIL(2)? 103 : (ISCHAR(2)? (char) hb_parc(2)[0] : (ISNUM(2)? hb_parni(2) : 0));
      QByteArray * ptr = &obj->setNum ( PFLOAT(1), par2, OPINT(3,6) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

// TODO: implementar(?) identifica��o de n�meros inteiros e fracion�rios
//[1]QByteArray & setNum ( int n, int base = 10 )
//[2]QByteArray & setNum ( uint n, int base = 10 )
//[3]QByteArray & setNum ( short n, int base = 10 )
//[4]QByteArray & setNum ( ushort n, int base = 10 )
//[5]QByteArray & setNum ( qlonglong n, int base = 10 )
//[6]QByteArray & setNum ( qulonglong n, int base = 10 )
//[7]QByteArray & setNum ( double n, char f = 'g', int prec = 6 )
//[8]QByteArray & setNum ( float n, char f = 'g', int prec = 6 )

HB_FUNC_STATIC( QBYTEARRAY_SETNUM )
{
  if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_SETNUM1 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QByteArray & setRawData ( const char * data, uint size )
*/
HB_FUNC_STATIC( QBYTEARRAY_SETRAWDATA )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISNUM(2) )
    {
      QByteArray * ptr = new QByteArray( obj->setRawData ( PCONSTCHAR(1), (uint) hb_parni(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray simplified () const
*/
$method=|QByteArray|simplified|

/*
int size () const
*/
$method=|int|size|

/*
QList<QByteArray> split ( char sep ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_SPLIT )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISNUM(1)||ISCHAR(1)) )
    {
      char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
      QList<QByteArray> list = obj->split ( par1 );
      PHB_DYNS pDynSym;
      #ifdef __XHARBOUR__
      pDynSym = hb_dynsymFind( "QBYTEARRAY" );
      #else
      pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
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
          hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      hb_itemReturnRelease(pArray);
    }
  }
}

/*
void squeeze ()
*/
$method=|void|squeeze|

/*
bool startsWith ( const QByteArray & ba ) const
*/
$internalMethod=|bool|startsWith,startsWith1|const QByteArray &

/*
bool startsWith ( const char * str ) const
*/
$internalMethod=|bool|startsWith,startsWith2|const char *

/*
bool startsWith ( char ch ) const
*/
void QByteArray_startsWith3 ()
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
    RBOOL( obj->startsWith ( par1 ) );
  }
}

// TODO: revisar implementacao [2] vs [3]
//[1]bool startsWith ( const QByteArray & ba ) const
//[2]bool startsWith ( const char * str ) const
//[3]bool startsWith ( char ch ) const

HB_FUNC_STATIC( QBYTEARRAY_STARTSWITH )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QByteArray_startsWith1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QByteArray_startsWith2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QByteArray_startsWith3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QByteArray toBase64 () const
*/
$method=|QByteArray|toBase64|

/*
double toDouble ( bool * ok = 0 ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_TODOUBLE )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) ) // TODO: implementar parametro opcional
    {
      bool par1;
      RDOUBLE( obj->toDouble ( &par1 ) );
      hb_storl( par1, 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
float toFloat ( bool * ok = 0 ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_TOFLOAT )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) ) // TODO: implementar parametro opcional
    {
      bool par1;
      RFLOAT( obj->toFloat ( &par1 ) );
      hb_storl( par1, 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray toHex () const
*/
$method=|QByteArray|toHex|

/*
int toInt ( bool * ok = 0, int base = 10 ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_TOINT )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) && ISOPTNUM(2) ) // TODO: implementar parametro opcional
    {
      bool par1;
      RINT( obj->toInt ( &par1, OPINT(2,10) ) );
      hb_storl( par1, 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
long toLong ( bool * ok = 0, int base = 10 ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_TOLONG )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) && ISOPTNUM(2) ) // TODO: implementar parametro opcional
    {
      bool par1;
      RLONG( obj->toLong ( &par1, OPINT(2,10) ) );
      hb_storl( par1, 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qlonglong toLongLong ( bool * ok = 0, int base = 10 ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_TOLONGLONG )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) && ISOPTNUM(2) ) // TODO: implementar parametro opcional
    {
      bool par1;
      RQLONGLONG( obj->toLongLong ( &par1, OPINT(2,10) ) );
      hb_storl( par1, 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray toLower () const
*/
$method=|QByteArray|toLower|

/*
QByteArray toPercentEncoding ( const QByteArray & exclude = QByteArray(), const QByteArray & include = QByteArray(), char percent = '%' ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_TOPERCENTENCODING )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTQBYTEARRAY(1) && ISOPTQBYTEARRAY(2) && (ISNUM(3)||ISCHAR(3)||ISNIL(3)) )
    {
      QByteArray par1 = ISNIL(1)? QByteArray() : *(QByteArray *) _qt5xhb_itemGetPtr(1);
      QByteArray par2 = ISNIL(2)? QByteArray() : *(QByteArray *) _qt5xhb_itemGetPtr(2);
      char par3 = ISNIL(3)? 37 : (ISCHAR(3)? (char) hb_parc(3)[0] : (ISNUM(3)? hb_parni(3) : 0));
      QByteArray * ptr = new QByteArray( obj->toPercentEncoding ( par1, par2, par3 ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
short toShort ( bool * ok = 0, int base = 10 ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_TOSHORT )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) && ISOPTNUM(2) )
    {
      bool par1;
      hb_retni( obj->toShort ( &par1, OPINT(2,10) ) );
      hb_storl( par1, 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
uint toUInt ( bool * ok = 0, int base = 10 ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_TOUINT )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) && ISOPTNUM(2) )
    {
      bool par1;
      hb_retni( obj->toUInt ( &par1, OPINT(2,10) ) );
      hb_storl( par1, 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
ulong toULong ( bool * ok = 0, int base = 10 ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_TOULONG )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) && ISOPTNUM(2) )
    {
      bool par1;
      RULONG( obj->toULong ( &par1, OPINT(2,10) ) );
      hb_storl( par1, 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qulonglong toULongLong ( bool * ok = 0, int base = 10 ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_TOULONGLONG )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) && ISOPTNUM(2) )
    {
      bool par1;
      RQULONGLONG( obj->toULongLong ( &par1, OPINT(2,10) ) );
      hb_storl( par1, 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
ushort toUShort ( bool * ok = 0, int base = 10 ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_TOUSHORT )
{
  QByteArray * obj = (QByteArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) && ISOPTNUM(2) )
    {
      bool par1;
      hb_retni( obj->toUShort ( &par1, OPINT(2,10) ) );
      hb_storl( par1, 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray toUpper () const
*/
$method=|QByteArray|toUpper|

/*
QByteArray trimmed () const
*/
$method=|QByteArray|trimmed|

/*
void truncate ( int pos )
*/
$method=|void|truncate|int

/*
static QByteArray fromBase64 ( const QByteArray & base64 )
*/
$staticMethod=|QByteArray|fromBase64|const QByteArray &

/*
static QByteArray fromHex ( const QByteArray & hexEncoded )
*/
$staticMethod=|QByteArray|fromHex|const QByteArray &

/*
static QByteArray fromPercentEncoding ( const QByteArray & input, char percent = '%' )
*/
HB_FUNC_STATIC( QBYTEARRAY_FROMPERCENTENCODING )
{
  if( ISQBYTEARRAY(1) && (ISNUM(2)||ISCHAR(2)||ISNIL(2)) )
  {
    char par2 = ISNIL(2)? 37 : (ISCHAR(2)? (char) hb_parc(2)[0] : (ISNUM(2)? hb_parni(2) : 0));
    QByteArray * ptr = new QByteArray( QByteArray::fromPercentEncoding ( *PQBYTEARRAY(1), par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QByteArray fromRawData ( const char * data, int size )
*/
$staticMethod=|QByteArray|fromRawData|const char *,int

/*
static QByteArray number ( int n, int base = 10 )
*/
HB_FUNC_STATIC( QBYTEARRAY_NUMBER1 )
{
  if( ISNUM(1) && ISOPTNUM(2) )
  {
    QByteArray * ptr = new QByteArray( QByteArray::number ( PINT(1), OPINT(2,10) ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QByteArray number ( uint n, int base = 10 )
*/
HB_FUNC_STATIC( QBYTEARRAY_NUMBER2 )
{
  if( ISNUM(1) && ISOPTNUM(2) )
  {
    QByteArray * ptr = new QByteArray( QByteArray::number ( (uint) hb_parni(1), OPINT(2,10) ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QByteArray number ( qlonglong n, int base = 10 )
*/
HB_FUNC_STATIC( QBYTEARRAY_NUMBER3 )
{
  if( ISNUM(1) && ISOPTNUM(2) )
  {
    qlonglong par1 = hb_parnl(1);
    QByteArray * ptr = new QByteArray( QByteArray::number ( par1, OPINT(2,10) ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QByteArray number ( qulonglong n, int base = 10 )
*/
HB_FUNC_STATIC( QBYTEARRAY_NUMBER4 )
{
  if( ISNUM(1) && ISOPTNUM(2) )
  {
    qulonglong par1 = hb_parnl(1);
    QByteArray * ptr = new QByteArray( QByteArray::number ( par1, OPINT(2,10) ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QByteArray number ( double n, char f = 'g', int prec = 6 )
*/
HB_FUNC_STATIC( QBYTEARRAY_NUMBER5 )
{
  if( ISNUM(1) && (ISNUM(2)||ISCHAR(2)||ISNIL(2)) && ISOPTNUM(3) )
  {
    char par2 = ISNIL(2)? 103 : (ISCHAR(2)? (char) hb_parc(2)[0] : (ISNUM(2)? hb_parni(2) : 0));
    QByteArray * ptr = new QByteArray( QByteArray::number ( PDOUBLE(1), par2, OPINT(3,6) ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

// TODO: resolver conflitos
//[1]static QByteArray number ( int n, int base = 10 )
//[2]static QByteArray number ( uint n, int base = 10 )
//[3]static QByteArray number ( qlonglong n, int base = 10 )
//[4]static QByteArray number ( qulonglong n, int base = 10 )
//[5]static QByteArray number ( double n, char f = 'g', int prec = 6 )

HB_FUNC_STATIC( QBYTEARRAY_NUMBER )
{
  if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_NUMBER1 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_NUMBER2 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_NUMBER3 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_NUMBER4 );
  }
  else if( ISBETWEEN(1,3) && ISNUM(1) && (ISNUM(2)||ISCHAR(2)||ISNIL(2)) && ISOPTNUM(3) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_NUMBER5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$extraMethods

#pragma ENDDUMP