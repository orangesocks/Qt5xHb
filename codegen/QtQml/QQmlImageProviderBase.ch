%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtQml

$header

/*
enum QQmlImageProviderBase::Flag
flags QQmlImageProviderBase::Flags
*/
#define QQmlImageProviderBase_ForceAsynchronousImageLoading          0x01

/*
enum QQmlImageProviderBase::ImageType
*/
#define QQmlImageProviderBase_Image                                  0
#define QQmlImageProviderBase_Pixmap                                 1
#define QQmlImageProviderBase_Texture                                2
