%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

/*
enum QAbstractVideoBuffer::HandleType
*/
#define QAbstractVideoBuffer_NoHandle                                0
#define QAbstractVideoBuffer_GLTextureHandle                         1
#define QAbstractVideoBuffer_XvShmImageHandle                        2
#define QAbstractVideoBuffer_CoreImageHandle                         3
#define QAbstractVideoBuffer_QPixmapHandle                           4
#define QAbstractVideoBuffer_EGLImageHandle                          5
#define QAbstractVideoBuffer_UserHandle                              1000

/*
enum QAbstractVideoBuffer::MapMode
*/
#define QAbstractVideoBuffer_NotMapped                               0x00
#define QAbstractVideoBuffer_ReadOnly                                0x01
#define QAbstractVideoBuffer_WriteOnly                               0x02
#define QAbstractVideoBuffer_ReadWrite                               hb_bitor(QAbstractVideoBuffer_ReadOnly,QAbstractVideoBuffer_WriteOnly)
