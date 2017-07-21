$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QHELPCONTENTMODEL
REQUEST QHELPCONTENTWIDGET
REQUEST QHELPINDEXMODEL
REQUEST QHELPINDEXWIDGET
REQUEST QHELPSEARCHENGINE
#endif

CLASS QHelpEngine INHERIT QHelpEngineCore

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD contentModel
   METHOD contentWidget
   METHOD indexModel
   METHOD indexWidget
   METHOD searchEngine

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QHelpEngine ( const QString & collectionFile, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QHELPENGINE_NEW )
{
  QHelpEngine * o = new QHelpEngine ( PQSTRING(1), OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
QHelpContentModel * contentModel () const
*/
HB_FUNC_STATIC( QHELPENGINE_CONTENTMODEL )
{
  QHelpEngine * obj = (QHelpEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHelpContentModel * ptr = obj->contentModel ();
    _qt5xhb_createReturnClass ( ptr, "QHELPCONTENTMODEL" );
  }
}


/*
QHelpContentWidget * contentWidget ()
*/
HB_FUNC_STATIC( QHELPENGINE_CONTENTWIDGET )
{
  QHelpEngine * obj = (QHelpEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHelpContentWidget * ptr = obj->contentWidget ();
    _qt5xhb_createReturnClass ( ptr, "QHELPCONTENTWIDGET" );
  }
}


/*
QHelpIndexModel * indexModel () const
*/
HB_FUNC_STATIC( QHELPENGINE_INDEXMODEL )
{
  QHelpEngine * obj = (QHelpEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHelpIndexModel * ptr = obj->indexModel ();
    _qt5xhb_createReturnClass ( ptr, "QHELPINDEXMODEL" );
  }
}


/*
QHelpIndexWidget * indexWidget ()
*/
HB_FUNC_STATIC( QHELPENGINE_INDEXWIDGET )
{
  QHelpEngine * obj = (QHelpEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHelpIndexWidget * ptr = obj->indexWidget ();
    _qt5xhb_createReturnClass ( ptr, "QHELPINDEXWIDGET" );
  }
}


/*
QHelpSearchEngine * searchEngine ()
*/
HB_FUNC_STATIC( QHELPENGINE_SEARCHENGINE )
{
  QHelpEngine * obj = (QHelpEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHelpSearchEngine * ptr = obj->searchEngine ();
    _qt5xhb_createReturnClass ( ptr, "QHELPSEARCHENGINE" );
  }
}



#pragma ENDDUMP
