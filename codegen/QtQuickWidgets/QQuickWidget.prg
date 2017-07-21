$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
REQUEST QQMLENGINE
REQUEST QQMLCONTEXT
REQUEST QQUICKITEM
REQUEST QQMLERROR
REQUEST QSIZE
REQUEST QSURFACEFORMAT
#endif

CLASS QQuickWidget INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD source
   METHOD setSource
   METHOD engine
   METHOD rootContext
   METHOD rootObject
   METHOD resizeMode
   METHOD setResizeMode
   METHOD status
   METHOD errors
   METHOD sizeHint
   METHOD initialSize
   METHOD setContent
   METHOD format
   METHOD setFormat

   METHOD onStatusChanged
   METHOD onSceneGraphError

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,3,0

#include <QQmlError>

/*
explicit QQuickWidget(QWidget *parent = 0)
*/
void QQuickWidget_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * o = new QQuickWidget ( OPQWIDGET(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QQuickWidget(QQmlEngine* engine, QWidget *parent)
*/
void QQuickWidget_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * o = new QQuickWidget ( PQQMLENGINE(1), PQWIDGET(2) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QQuickWidget(const QUrl &source, QWidget *parent = 0)
*/
void QQuickWidget_new3 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * o = new QQuickWidget ( *PQURL(1), OPQWIDGET(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

//[1]explicit QQuickWidget(QWidget *parent = 0)
//[2]QQuickWidget(QQmlEngine* engine, QWidget *parent)
//[3]QQuickWidget(const QUrl &source, QWidget *parent = 0)

HB_FUNC_STATIC( QQUICKWIDGET_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QQuickWidget_new1();
  }
  else if( ISNUMPAR(2) && ISQQMLENGINE(1) && ISQWIDGET(2) )
  {
    QQuickWidget_new2();
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && ISOPTQWIDGET(2) )
  {
    QQuickWidget_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

$deleteMethod=5,3,0

/*
QUrl source() const
*/
HB_FUNC_STATIC( QQUICKWIDGET_SOURCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QUrl * ptr = new QUrl( obj->source () );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
#endif
}

/*
void setSource(const QUrl&)
*/
HB_FUNC_STATIC( QQUICKWIDGET_SETSOURCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQURL(1) )
    {
      obj->setSource ( *PQURL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QQmlEngine* engine() const
*/
HB_FUNC_STATIC( QQUICKWIDGET_ENGINE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QQmlEngine * ptr = obj->engine ();
    _qt5xhb_createReturnClass ( ptr, "QQMLENGINE" );
  }
#endif
}

/*
QQmlContext* rootContext() const
*/
HB_FUNC_STATIC( QQUICKWIDGET_ROOTCONTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QQmlContext * ptr = obj->rootContext ();
    _qt5xhb_createReturnClass ( ptr, "QQMLCONTEXT" );
  }
#endif
}

/*
QQuickItem *rootObject() const
*/
HB_FUNC_STATIC( QQUICKWIDGET_ROOTOBJECT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QQuickItem * ptr = obj->rootObject ();
    _qt5xhb_createReturnClass ( ptr, "QQUICKITEM" );
  }
#endif
}

/*
ResizeMode resizeMode() const
*/
HB_FUNC_STATIC( QQUICKWIDGET_RESIZEMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->resizeMode () );
  }
#endif
}

/*
void setResizeMode(ResizeMode)
*/
HB_FUNC_STATIC( QQUICKWIDGET_SETRESIZEMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setResizeMode ( (QQuickWidget::ResizeMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
Status status() const
*/
HB_FUNC_STATIC( QQUICKWIDGET_STATUS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->status () );
  }
#endif
}

/*
QList<QQmlError> errors() const
*/
HB_FUNC_STATIC( QQUICKWIDGET_ERRORS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QQmlError> list = obj->errors ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QQMLERROR" );
    #else
    pDynSym = hb_dynsymFindName( "QQMLERROR" );
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
        hb_itemPutPtr( pItem, (QQmlError *) new QQmlError ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
#endif
}

/*
QSize sizeHint() const
*/
HB_FUNC_STATIC( QQUICKWIDGET_SIZEHINT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
#endif
}

/*
QSize initialSize() const
*/
HB_FUNC_STATIC( QQUICKWIDGET_INITIALSIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->initialSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
#endif
}

/*
void setContent(const QUrl& url, QQmlComponent *component, QObject *item)
*/
HB_FUNC_STATIC( QQUICKWIDGET_SETCONTENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQURL(1) && ISQQMLCOMPONENT(2) && ISQOBJECT(3) )
    {
      obj->setContent ( *PQURL(1), PQQMLCOMPONENT(2), PQOBJECT(3) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QSurfaceFormat format() const
*/
HB_FUNC_STATIC( QQUICKWIDGET_FORMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSurfaceFormat * ptr = new QSurfaceFormat( obj->format () );
    _qt5xhb_createReturnClass ( ptr, "QSURFACEFORMAT" );
  }
#endif
}

/*
void setFormat(const QSurfaceFormat &format)
*/
HB_FUNC_STATIC( QQUICKWIDGET_SETFORMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQSURFACEFORMAT(1) )
    {
      obj->setFormat ( *PQSURFACEFORMAT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

#pragma ENDDUMP