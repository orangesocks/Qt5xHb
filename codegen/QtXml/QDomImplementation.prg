$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDOMDOCUMENT
REQUEST QDOMDOCUMENTTYPE
#endif

CLASS QDomImplementation

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD createDocument
   METHOD createDocumentType
   METHOD hasFeature
   METHOD isNull
   METHOD invalidDataPolicy
   METHOD setInvalidDataPolicy

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

$prototype=QDomImplementation ()
$constructor=|new1|

$prototype=QDomImplementation ( const QDomImplementation & x )
$constructor=|new2|const QDomImplementation &

//[1]QDomImplementation ()
//[2]QDomImplementation ( const QDomImplementation & x )

HB_FUNC_STATIC( QDOMIMPLEMENTATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMIMPLEMENTATION_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMIMPLEMENTATION(1) )
  {
    HB_FUNC_EXEC( QDOMIMPLEMENTATION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QDomDocument createDocument ( const QString & nsURI, const QString & qName, const QDomDocumentType & doctype )
$method=|QDomDocument|createDocument|const QString &,const QString &,const QDomDocumentType &

$prototype=QDomDocumentType createDocumentType ( const QString & qName, const QString & publicId, const QString & systemId )
$method=|QDomDocumentType|createDocumentType|const QString &,const QString &,const QString &

$prototype=bool hasFeature ( const QString & feature, const QString & version ) const
$method=|bool|hasFeature|const QString &,const QString &

$prototype=bool isNull ()
$method=|bool|isNull|

$prototype=static InvalidDataPolicy invalidDataPolicy ()
$staticMethod=|QDomImplementation::InvalidDataPolicy|invalidDataPolicy|

$prototype=static void setInvalidDataPolicy ( InvalidDataPolicy policy )
$staticMethod=|void|setInvalidDataPolicy|QDomImplementation::InvalidDataPolicy

$extraMethods

#pragma ENDDUMP
