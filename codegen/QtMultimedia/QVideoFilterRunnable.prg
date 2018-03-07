%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QVideoFilterRunnable

   DATA pointer
   DATA self_destruction INIT .F.

%%   METHOD new
   METHOD delete

   METHOD run

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,5,0

$prototype=virtual ~QVideoFilterRunnable()
$deleteMethod=5,5,0

$prototype=virtual QVideoFrame run(QVideoFrame *input, const QVideoSurfaceFormat &surfaceFormat, RunFlags flags) = 0
$virtualMethod=5,5,0|QVideoFrame|run|QVideoFrame *,const QVideoSurfaceFormat &,QVideoFilterRunnable::RunFlags

#pragma ENDDUMP
