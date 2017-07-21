$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QUrl

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD authority
   METHOD clear
   METHOD errorString
   METHOD fragment
   METHOD hasFragment
   METHOD hasQuery
   METHOD host
   METHOD isEmpty
   METHOD isLocalFile
   METHOD isParentOf
   METHOD isRelative
   METHOD isValid
   METHOD password
   METHOD path
   METHOD port
   METHOD resolved
   METHOD scheme
   METHOD setAuthority
   METHOD setFragment
   METHOD setHost
   METHOD setPassword
   METHOD setPath
   METHOD setPort
   METHOD setScheme
   METHOD setUrl
   METHOD setUserInfo
   METHOD setUserName
   METHOD swap
   METHOD toEncoded
   METHOD toLocalFile
   METHOD toString
   METHOD topLevelDomain
   METHOD userInfo
   METHOD userName
   METHOD fromAce
   METHOD fromEncoded
   METHOD fromLocalFile
   METHOD fromPercentEncoding
   METHOD fromUserInput
   METHOD setIdnWhitelist
   METHOD toAce
   METHOD toPercentEncoding

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

#include <QStringList>

/*
QUrl ()
*/
void QUrl_new1 ()
{
  QUrl * o = new QUrl ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QUrl ( const QString & url )
*/
void QUrl_new2 ()
{
  QUrl * o = new QUrl ( PQSTRING(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QUrl ( const QUrl & other )
*/
void QUrl_new3 ()
{
  QUrl * o = new QUrl ( *PQURL(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QUrl ( const QString & url, ParsingMode parsingMode )
*/
void QUrl_new4 ()
{
  QUrl * o = new QUrl ( PQSTRING(1), (QUrl::ParsingMode) hb_parni(2) );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QUrl ()
//[2]QUrl ( const QString & url )
//[3]QUrl ( const QUrl & other )
//[4]QUrl ( const QString & url, ParsingMode parsingMode )

HB_FUNC_STATIC( QURL_NEW )
{
  if( ISNUMPAR(0) )
  {
    QUrl_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QUrl_new2();
  }
  else if( ISNUMPAR(1) && ISQURL(1) )
  {
    QUrl_new3();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QUrl_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QString authority () const
*/
$method=|QString|authority|

/*
void clear ()
*/
$method=|void|clear|

/*
QString errorString () const
*/
$method=|QString|errorString|

/*
QString fragment () const
*/
$method=|QString|fragment|

/*
bool hasFragment () const
*/
$method=|bool|hasFragment|

/*
bool hasQuery () const
*/
$method=|bool|hasQuery|

/*
QString host () const
*/
$method=|QString|host|

/*
bool isEmpty () const
*/
$method=|bool|isEmpty|

/*
bool isLocalFile () const
*/
$method=|bool|isLocalFile|

/*
bool isParentOf ( const QUrl & childUrl ) const
*/
$method=|bool|isParentOf|const QUrl &

/*
bool isRelative () const
*/
$method=|bool|isRelative|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
QString password () const
*/
$method=|QString|password|

/*
QString path () const
*/
$method=|QString|path|

/*
int port () const
*/
void QUrl_port1 ()
{
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->port () );
  }
}

/*
int port ( int defaultPort ) const
*/
void QUrl_port2 ()
{
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->port ( PINT(1) ) );
  }
}

//[1]int port () const
//[2]int port ( int defaultPort ) const

HB_FUNC_STATIC( QURL_PORT )
{
  if( ISNUMPAR(0) )
  {
    QUrl_port1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QUrl_port2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QUrl resolved ( const QUrl & relative ) const
*/
$method=|QUrl|resolved|const QUrl &

/*
QString scheme () const
*/
$method=|QString|scheme|

/*
void setAuthority ( const QString & authority )
*/
$method=|void|setAuthority|const QString &

/*
void setFragment ( const QString & fragment )
*/
$method=|void|setFragment|const QString &

/*
void setHost ( const QString & host )
*/
$method=|void|setHost|const QString &

/*
void setPassword ( const QString & password )
*/
$method=|void|setPassword|const QString &

/*
void setPath ( const QString & path )
*/
$method=|void|setPath|const QString &

/*
void setPort ( int port )
*/
$method=|void|setPort|int

/*
void setScheme ( const QString & scheme )
*/
$method=|void|setScheme|const QString &

/*
void setUrl ( const QString & url )
*/
void QUrl_setUrl1 ()
{
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setUrl ( PQSTRING(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setUrl ( const QString & url, ParsingMode parsingMode )
*/
void QUrl_setUrl2 ()
{
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setUrl ( PQSTRING(1), (QUrl::ParsingMode) hb_parni(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setUrl ( const QString & url )
//[2]void setUrl ( const QString & url, ParsingMode parsingMode )

HB_FUNC_STATIC( QURL_SETURL )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QUrl_setUrl1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QUrl_setUrl2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setUserInfo ( const QString & userInfo )
*/
$method=|void|setUserInfo|const QString &

/*
void setUserName ( const QString & userName )
*/
$method=|void|setUserName|const QString &

/*
void swap ( QUrl & other )
*/
HB_FUNC_STATIC( QURL_SWAP )
{
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQURL(1) )
    {
      QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
      obj->swap ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QByteArray toEncoded ( FormattingOptions options = None ) const
*/
HB_FUNC_STATIC( QURL_TOENCODED )
{
  QUrl * obj = (QUrl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      int par1 = ISNIL(1)? (int) QUrl::None : hb_parni(1);
      QByteArray * ptr = new QByteArray( obj->toEncoded ( (QUrl::FormattingOptions) par1 ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString toLocalFile () const
*/
$method=|QString|toLocalFile|

/*
QString toString ( FormattingOptions options = None ) const
*/
$method=|QString|toString|QUrl::FormattingOptions=QUrl::None

/*
QString topLevelDomain () const
*/
$method=|QString|topLevelDomain|

/*
QString userInfo () const
*/
$method=|QString|userInfo|

/*
QString userName () const
*/
$method=|QString|userName|

/*
static QString fromAce ( const QByteArray & domain )
*/
$staticMethod=|QString|fromAce|const QByteArray &

/*
static QUrl fromEncoded ( const QByteArray & input )
*/
void QUrl_fromEncoded1 ()
{
  QUrl * ptr = new QUrl( QUrl::fromEncoded ( *PQBYTEARRAY(1) ) );
  _qt5xhb_createReturnClass ( ptr, "QURL", true );
}

/*
static QUrl fromEncoded ( const QByteArray & input, ParsingMode parsingMode )
*/
void QUrl_fromEncoded2 ()
{
  QUrl * ptr = new QUrl( QUrl::fromEncoded ( *PQBYTEARRAY(1), (QUrl::ParsingMode) hb_parni(2) ) );
  _qt5xhb_createReturnClass ( ptr, "QURL", true );
}

//[1]QUrl fromEncoded ( const QByteArray & input )
//[2]QUrl fromEncoded ( const QByteArray & input, ParsingMode parsingMode )

HB_FUNC_STATIC( QURL_FROMENCODED )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QUrl_fromEncoded1();
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISNUM(2) )
  {
    QUrl_fromEncoded2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QUrl fromLocalFile ( const QString & localFile )
*/
$staticMethod=|QUrl|fromLocalFile|const QString &

/*
static QString fromPercentEncoding ( const QByteArray & input )
*/
$staticMethod=|QString|fromPercentEncoding|const QByteArray &

/*
static QUrl fromUserInput ( const QString & userInput )
*/
$staticMethod=|QUrl|fromUserInput|const QString &

/*
static void setIdnWhitelist ( const QStringList & list )
*/
$staticMethod=|void|setIdnWhitelist|const QStringList &

/*
static QByteArray toAce ( const QString & domain )
*/
HB_FUNC_STATIC( QURL_TOACE )
{
  if( ISCHAR(1) )
  {
    QByteArray * ptr = new QByteArray( QUrl::toAce ( PQSTRING(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QByteArray toPercentEncoding ( const QString & input, const QByteArray & exclude = QByteArray(), const QByteArray & include = QByteArray() )
*/
HB_FUNC_STATIC( QURL_TOPERCENTENCODING )
{
  if( ISCHAR(1) && ISOPTQBYTEARRAY(2) && ISOPTQBYTEARRAY(3) )
  {
    QByteArray par2 = ISNIL(2)? QByteArray() : *(QByteArray *) _qt5xhb_itemGetPtr(2);
    QByteArray par3 = ISNIL(3)? QByteArray() : *(QByteArray *) _qt5xhb_itemGetPtr(3);
    QByteArray * ptr = new QByteArray( QUrl::toPercentEncoding ( PQSTRING(1), par2, par3 ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$extraMethods

#pragma ENDDUMP