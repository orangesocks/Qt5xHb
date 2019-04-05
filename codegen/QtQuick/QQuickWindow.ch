%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtQuick

$header

/*
enum QQuickWindow::CreateTextureOption
flags QQuickWindow::CreateTextureOptions
*/
#define QQuickWindow_TextureHasAlphaChannel                          0x0001
#define QQuickWindow_TextureHasMipmaps                               0x0002
#define QQuickWindow_TextureOwnsGLTexture                            0x0004
