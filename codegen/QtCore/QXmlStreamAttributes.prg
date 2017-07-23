$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSTRINGREF
#endif

CLASS QXmlStreamAttributes

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD append
   METHOD hasAttribute
   METHOD value

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

/*
QXmlStreamAttributes()
*/
$constructor=|new|

$deleteMethod

/*
void append(const QString & namespaceUri, const QString & name, const QString & value)
*/
$internalMethod=|void|append,append1|const QString &,const QString &,const QString &

/*
void append(const QXmlStreamAttribute & attribute)
*/
$internalMethod=|void|append,append2|const QXmlStreamAttribute &

/*
void append(const QString & qualifiedName, const QString & value)
*/
$internalMethod=|void|append,append3|const QString &,const QString &

//[1]void append(const QString & namespaceUri, const QString & name, const QString & value)
//[2]void append(const QXmlStreamAttribute & attribute)
//[3]void append(const QString & qualifiedName, const QString & value)

HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_APPEND )
{
  if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
  {
    QXmlStreamAttributes_append1();
  }
  else if( ISNUMPAR(1) && ISQXMLSTREAMATTRIBUTE(1) )
  {
    QXmlStreamAttributes_append2();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QXmlStreamAttributes_append3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool hasAttribute(const QString & qualifiedName) const
*/
$internalMethod=|bool|hasAttribute,hasAttribute1|const QString &

/*
bool hasAttribute(QLatin1String qualifiedName) const
*/
$internalMethod=|bool|hasAttribute,hasAttribute2|QLatin1String

/*
bool hasAttribute(const QString & namespaceUri, const QString & name) const
*/
$internalMethod=|bool|hasAttribute,hasAttribute3|const QString &,const QString &

//[1]bool hasAttribute(const QString & qualifiedName) const
//[2]bool hasAttribute(QLatin1String qualifiedName) const
//[3]bool hasAttribute(const QString & namespaceUri, const QString & name) const

HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_HASATTRIBUTE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QXmlStreamAttributes_hasAttribute1();
  }
  //else if( ISNUMPAR(1) && ISQLATIN1STRING(1) )
  else if( ISNUMPAR(1) && ISOBJECT(1) )
  {
    QXmlStreamAttributes_hasAttribute2();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QXmlStreamAttributes_hasAttribute3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QStringRef value(const QString & namespaceUri, const QString & name) const
*/
$internalMethod=|QStringRef|value,value1|const QString &,const QString &

/*
QStringRef value(const QString & namespaceUri, QLatin1String name) const
*/
$internalMethod=|QStringRef|value,value2|const QString &,QLatin1String

/*
QStringRef value(QLatin1String namespaceUri, QLatin1String name) const
*/
$internalMethod=|QStringRef|value,value3|QLatin1String,QLatin1String

/*
QStringRef value(const QString & qualifiedName) const
*/
$method=|QStringRef|value,value4|const QString &

/*
QStringRef value(QLatin1String qualifiedName) const
*/
$method=|QStringRef|value,value5|QLatin1String

//[1]QStringRef value(const QString & namespaceUri, const QString & name) const
//[2]QStringRef value(const QString & namespaceUri, QLatin1String name) const
//[3]QStringRef value(QLatin1String namespaceUri, QLatin1String name) const
//[4]QStringRef value(const QString & qualifiedName) const
//[5]QStringRef value(QLatin1String qualifiedName) const

HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_VALUE )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QXmlStreamAttributes_value1();
  }
  //else if( ISNUMPAR(2) && ISCHAR(1) && ISQLATIN1STRING(2) )
  else if( ISNUMPAR(2) && ISCHAR(1) && ISOBJECT(2) )
  {
    QXmlStreamAttributes_value2();
  }
  //else if( ISNUMPAR(2) && ISQLATIN1STRING(1) && ISQLATIN1STRING(2) )
  else if( ISNUMPAR(2) && ISOBJECT(1) && ISOBJECT(2) )
  {
    QXmlStreamAttributes_value3();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QXmlStreamAttributes_value4();
  }
  //else if( ISNUMPAR(1) && ISQLATIN1STRING(1) )
  else if( ISNUMPAR(1) && ISOBJECT(1) )
  {
    QXmlStreamAttributes_value5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$extraMethods

#pragma ENDDUMP
