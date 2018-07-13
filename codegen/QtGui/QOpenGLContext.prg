%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QScreen>

$prototype=QOpenGLContext(QObject * parent = 0)
$constructor=|new|QObject *=0

$deleteMethod

$prototype=bool create()
$method=|bool|create|

$prototype=GLuint defaultFramebufferObject() const
$method=|GLuint|defaultFramebufferObject|

$prototype=void doneCurrent()
$method=|void|doneCurrent|

$prototype=QSurfaceFormat format() const
$method=|QSurfaceFormat|format|

$prototype=QOpenGLFunctions * functions() const
$method=|QOpenGLFunctions *|functions|

$prototype=QFunctionPointer getProcAddress(const QByteArray & procName) const
%% TODO: implementar ?
%% $method=|QFunctionPointer|getProcAddress|const QByteArray &

$prototype=bool hasExtension(const QByteArray & extension) const
$method=|bool|hasExtension|const QByteArray &

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=bool makeCurrent(QSurface * surface)
$method=|bool|makeCurrent|QSurface *

$prototype=QScreen * screen() const
$method=|QScreen *|screen|

$prototype=void setFormat(const QSurfaceFormat & format)
$method=|void|setFormat|const QSurfaceFormat &

$prototype=void setScreen(QScreen * screen)
$method=|void|setScreen|QScreen *

$prototype=void setShareContext(QOpenGLContext * shareContext)
$method=|void|setShareContext|QOpenGLContext *

$prototype=QOpenGLContext * shareContext() const
$method=|QOpenGLContext *|shareContext|

$prototype=QOpenGLContextGroup * shareGroup() const
$method=|QOpenGLContextGroup *|shareGroup|

$prototype=QSurface * surface() const
$method=|QSurface *|surface|

$prototype=void swapBuffers(QSurface * surface)
$method=|void|swapBuffers|QSurface *

$prototype=static bool areSharing(QOpenGLContext * first, QOpenGLContext * second)
$staticMethod=|bool|areSharing|QOpenGLContext *,QOpenGLContext *

$prototype=static QOpenGLContext * currentContext()
$staticMethod=|QOpenGLContext *|currentContext|

$beginSignals
$signal=|aboutToBeDestroyed()
$endSignals

#pragma ENDDUMP
