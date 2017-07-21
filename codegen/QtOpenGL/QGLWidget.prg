$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGLCOLORMAP
REQUEST QGLCONTEXT
REQUEST QGLFORMAT
REQUEST QIMAGE
REQUEST QPIXMAP
#endif

CLASS QGLWidget INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD bindTexture1
   METHOD bindTexture2
   METHOD bindTexture3
   METHOD bindTexture4
   METHOD bindTexture5
   METHOD bindTexture
   METHOD colormap
   METHOD context
   METHOD deleteTexture
   METHOD doneCurrent
   METHOD doubleBuffer
   METHOD drawTexture1
   METHOD drawTexture2
   METHOD drawTexture
   METHOD format
   METHOD grabFrameBuffer
   METHOD isSharing
   METHOD isValid
   METHOD makeCurrent
   METHOD makeOverlayCurrent
   METHOD overlayContext
   METHOD qglClearColor
   METHOD qglColor
   METHOD renderPixmap
   METHOD setColormap
   METHOD setMouseTracking
   METHOD swapBuffers
   METHOD updateGL
   METHOD updateOverlayGL
   METHOD convertToGLFormat

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QGLWidget ( QWidget * parent = 0, const QGLWidget * shareWidget = 0, Qt::WindowFlags f = 0 )
*/
HB_FUNC_STATIC( QGLWIDGET_NEW1 )
{
  const QGLWidget * par2 = ISNIL(2)? 0 : (const QGLWidget *) _qt5xhb_itemGetPtr(2);
  int par3 = ISNIL(3)? (int) 0 : hb_parni(3);
  QGLWidget * o = new QGLWidget ( OPQWIDGET(1,0), par2, (Qt::WindowFlags) par3 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QGLWidget ( QGLContext * context, QWidget * parent = 0, const QGLWidget * shareWidget = 0, Qt::WindowFlags f = 0 )
*/
HB_FUNC_STATIC( QGLWIDGET_NEW2 )
{
  QGLContext * par1 = (QGLContext *) _qt5xhb_itemGetPtr(1);
  const QGLWidget * par3 = ISNIL(3)? 0 : (const QGLWidget *) _qt5xhb_itemGetPtr(3);
  int par4 = ISNIL(4)? (int) 0 : hb_parni(4);
  QGLWidget * o = new QGLWidget ( par1, OPQWIDGET(2,0), par3, (Qt::WindowFlags) par4 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QGLWidget ( const QGLFormat & format, QWidget * parent = 0, const QGLWidget * shareWidget = 0, Qt::WindowFlags f = 0 )
*/
HB_FUNC_STATIC( QGLWIDGET_NEW3 )
{
  const QGLWidget * par3 = ISNIL(3)? 0 : (const QGLWidget *) _qt5xhb_itemGetPtr(3);
  int par4 = ISNIL(4)? (int) 0 : hb_parni(4);
  QGLWidget * o = new QGLWidget ( *PQGLFORMAT(1), OPQWIDGET(2,0), par3, (Qt::WindowFlags) par4 );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QGLWidget ( QWidget * parent = 0, const QGLWidget * shareWidget = 0, Qt::WindowFlags f = 0 )
//[2]QGLWidget ( QGLContext * context, QWidget * parent = 0, const QGLWidget * shareWidget = 0, Qt::WindowFlags f = 0 )
//[3]QGLWidget ( const QGLFormat & format, QWidget * parent = 0, const QGLWidget * shareWidget = 0, Qt::WindowFlags f = 0 )

HB_FUNC_STATIC( QGLWIDGET_NEW )
{
  if( ISBETWEEN(0,3) && ISOPTQWIDGET(1) && (ISQGLWIDGET(2)||ISNIL(2)) && ISOPTNUM(3) )
  {
    HB_FUNC_EXEC( QGLWIDGET_NEW1 );
  }
  else if( ISBETWEEN(1,4) && ISQGLCONTEXT(1) && ISOPTQWIDGET(2) && (ISQGLWIDGET(3)||ISNIL(3)) && ISOPTNUM(4) )
  {
    HB_FUNC_EXEC( QGLWIDGET_NEW2 );
  }
  else if( ISBETWEEN(1,4) && ISQGLFORMAT(1) && ISOPTQWIDGET(2) && (ISQGLWIDGET(3)||ISNIL(3)) && ISOPTNUM(4) )
  {
    HB_FUNC_EXEC( QGLWIDGET_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
GLuint bindTexture ( const QImage & image, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA )
*/
HB_FUNC_STATIC( QGLWIDGET_BINDTEXTURE1 )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RGLUINT( obj->bindTexture ( *PQIMAGE(1), OPGLENUM(2,GL_TEXTURE_2D), OPGLINT(3,GL_RGBA) ) );
  }
}

/*
GLuint bindTexture ( const QPixmap & pixmap, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA )
*/
HB_FUNC_STATIC( QGLWIDGET_BINDTEXTURE2 )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RGLUINT( obj->bindTexture ( *PQPIXMAP(1), OPGLENUM(2,GL_TEXTURE_2D), OPGLINT(3,GL_RGBA) ) );
  }
}

/*
GLuint bindTexture ( const QImage & image, GLenum target, GLint format, QGLContext::BindOptions options )
*/
HB_FUNC_STATIC( QGLWIDGET_BINDTEXTURE3 )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par4 = hb_parni(4);
    RGLUINT( obj->bindTexture ( *PQIMAGE(1), PGLENUM(2), PGLINT(3), (QGLContext::BindOptions) par4 ) );
  }
}

/*
GLuint bindTexture ( const QPixmap & pixmap, GLenum target, GLint format, QGLContext::BindOptions options )
*/
HB_FUNC_STATIC( QGLWIDGET_BINDTEXTURE4 )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par4 = hb_parni(4);
    RGLUINT( obj->bindTexture ( *PQPIXMAP(1), PGLENUM(2), PGLINT(3), (QGLContext::BindOptions) par4 ) );
  }
}

/*
GLuint bindTexture ( const QString & fileName )
*/
HB_FUNC_STATIC( QGLWIDGET_BINDTEXTURE5 )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RGLUINT( obj->bindTexture ( PQSTRING(1) ) );
  }
}


//[1]GLuint bindTexture(const QImage & image, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA)
//[2]GLuint bindTexture(const QPixmap & pixmap, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA)
//[3]GLuint bindTexture(const QImage & image, GLenum target, GLint format, QGLContext::BindOptions options)
//[4]GLuint bindTexture(const QPixmap & pixmap, GLenum target, GLint format, QGLContext::BindOptions options)
//[5]GLuint bindTexture(const QString & fileName)

HB_FUNC_STATIC( QGLWIDGET_BINDTEXTURE )
{
  if( ISBETWEEN(1,3) && ISQIMAGE(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    HB_FUNC_EXEC( QGLWIDGET_BINDTEXTURE1 );
  }
  else if( ISBETWEEN(1,3) && ISQPIXMAP(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    HB_FUNC_EXEC( QGLWIDGET_BINDTEXTURE2 );
  }
  else if( ISBETWEEN(3,4) && ISQIMAGE(1) && ISNUM(2) && ISNUM(3) && ISOPTNUM(4) )
  {
    HB_FUNC_EXEC( QGLWIDGET_BINDTEXTURE3 );
  }
  else if( ISBETWEEN(3,4) && ISQPIXMAP(1) && ISNUM(2) && ISNUM(3) && ISOPTNUM(4) )
  {
    HB_FUNC_EXEC( QGLWIDGET_BINDTEXTURE4 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QGLWIDGET_BINDTEXTURE5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
const QGLColormap & colormap () const
*/
HB_FUNC_STATIC( QGLWIDGET_COLORMAP )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QGLColormap * ptr = &obj->colormap ();
    _qt5xhb_createReturnClass ( ptr, "QGLCOLORMAP" );
  }
}


/*
const QGLContext * context () const
*/
HB_FUNC_STATIC( QGLWIDGET_CONTEXT )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QGLContext * ptr = obj->context ();
    _qt5xhb_createReturnClass ( ptr, "QGLCONTEXT" );
  }
}


/*
void deleteTexture ( GLuint id )
*/
HB_FUNC_STATIC( QGLWIDGET_DELETETEXTURE )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->deleteTexture ( PGLUINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void doneCurrent ()
*/
HB_FUNC_STATIC( QGLWIDGET_DONECURRENT )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->doneCurrent ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool doubleBuffer () const
*/
HB_FUNC_STATIC( QGLWIDGET_DOUBLEBUFFER )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->doubleBuffer () );
  }
}


/*
void drawTexture ( const QRectF & target, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
*/
HB_FUNC_STATIC( QGLWIDGET_DRAWTEXTURE1 )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->drawTexture ( *PQRECTF(1), PGLUINT(2), OPGLENUM(3,GL_TEXTURE_2D) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawTexture ( const QPointF & point, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
*/
HB_FUNC_STATIC( QGLWIDGET_DRAWTEXTURE2 )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->drawTexture ( *PQPOINTF(1), PGLUINT(2), OPGLENUM(3,GL_TEXTURE_2D) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void drawTexture ( const QRectF & target, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
//[2]void drawTexture ( const QPointF & point, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )

HB_FUNC_STATIC( QGLWIDGET_DRAWTEXTURE )
{
  if( ISBETWEEN(2,3) && ISQRECTF(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    HB_FUNC_EXEC( QGLWIDGET_DRAWTEXTURE1 );
  }
  else if( ISBETWEEN(2,3) && ISQPOINTF(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    HB_FUNC_EXEC( QGLWIDGET_DRAWTEXTURE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QGLFormat format () const
*/
HB_FUNC_STATIC( QGLWIDGET_FORMAT )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGLFormat * ptr = new QGLFormat( obj->format () );
    _qt5xhb_createReturnClass ( ptr, "QGLFORMAT" );
  }
}


/*
QImage grabFrameBuffer ( bool withAlpha = false )
*/
HB_FUNC_STATIC( QGLWIDGET_GRABFRAMEBUFFER )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QImage * ptr = new QImage( obj->grabFrameBuffer ( PBOOL(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QIMAGE", true );
  }
}


/*
bool isSharing () const
*/
HB_FUNC_STATIC( QGLWIDGET_ISSHARING )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isSharing () );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QGLWIDGET_ISVALID )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
void makeCurrent ()
*/
HB_FUNC_STATIC( QGLWIDGET_MAKECURRENT )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->makeCurrent ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void makeOverlayCurrent ()
*/
HB_FUNC_STATIC( QGLWIDGET_MAKEOVERLAYCURRENT )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->makeOverlayCurrent ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
const QGLContext * overlayContext () const
*/
HB_FUNC_STATIC( QGLWIDGET_OVERLAYCONTEXT )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QGLContext * ptr = obj->overlayContext ();
    _qt5xhb_createReturnClass ( ptr, "QGLCONTEXT" );
  }
}


/*
void qglClearColor ( const QColor & c ) const
*/
HB_FUNC_STATIC( QGLWIDGET_QGLCLEARCOLOR )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor par1 = ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1));
    obj->qglClearColor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void qglColor ( const QColor & c ) const
*/
HB_FUNC_STATIC( QGLWIDGET_QGLCOLOR )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor par1 = ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1));
    obj->qglColor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QPixmap renderPixmap ( int w = 0, int h = 0, bool useContext = false )
*/
HB_FUNC_STATIC( QGLWIDGET_RENDERPIXMAP )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPixmap * ptr = new QPixmap( obj->renderPixmap ( OPINT(1,0), OPINT(2,0), OPBOOL(3,false) ) );
    _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}



//[1]void renderText ( int x, int y, const QString & str, const QFont & font = QFont(), int listBase = 2000 )
//[2]void renderText ( double x, double y, double z, const QString & str, const QFont & font = QFont(), int listBase = 2000 )

// HB_FUNC_STATIC( QGLWIDGET_RENDERTEXT ) // TODO: implementar
// {
//   if( ISBETWEEN(3,5) && ISNUM(1) && ISNUM(2) && ISCHAR(3) && (ISQFONT(4)||ISNIL(4)) && ISOPTNUM(5) )
//   {
//     HB_FUNC_EXEC( QGLWIDGET_RENDERTEXT1 );
//   }
//   else if( ISBETWEEN(4,6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISCHAR(4) && (ISQFONT(5)||ISNIL(5)) && ISOPTNUM(6) )
//   {
//     HB_FUNC_EXEC( QGLWIDGET_RENDERTEXT2 );
//   }
// }

/*
void setColormap ( const QGLColormap & cmap )
*/
HB_FUNC_STATIC( QGLWIDGET_SETCOLORMAP )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setColormap ( *PQGLCOLORMAP(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMouseTracking ( bool enable )
*/
HB_FUNC_STATIC( QGLWIDGET_SETMOUSETRACKING )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMouseTracking ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void swapBuffers ()
*/
HB_FUNC_STATIC( QGLWIDGET_SWAPBUFFERS )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->swapBuffers ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void updateGL ()
*/
HB_FUNC_STATIC( QGLWIDGET_UPDATEGL )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->updateGL ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void updateOverlayGL ()
*/
HB_FUNC_STATIC( QGLWIDGET_UPDATEOVERLAYGL )
{
  QGLWidget * obj = (QGLWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->updateOverlayGL ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QImage convertToGLFormat ( const QImage & img )
*/
HB_FUNC_STATIC( QGLWIDGET_CONVERTTOGLFORMAT )
{
  QImage * ptr = new QImage( QGLWidget::convertToGLFormat ( *PQIMAGE(1) ) );
  _qt5xhb_createReturnClass ( ptr, "QIMAGE", true );
}



#pragma ENDDUMP
