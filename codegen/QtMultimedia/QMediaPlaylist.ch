%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

/*
enum QMediaPlaylist::Error
*/
#define QMediaPlaylist_NoError                                       0
#define QMediaPlaylist_FormatError                                   1
#define QMediaPlaylist_FormatNotSupportedError                       2
#define QMediaPlaylist_NetworkError                                  3
#define QMediaPlaylist_AccessDeniedError                             4

/*
enum QMediaPlaylist::PlaybackMode
*/
#define QMediaPlaylist_CurrentItemOnce                               0
#define QMediaPlaylist_CurrentItemInLoop                             1
#define QMediaPlaylist_Sequential                                    2
#define QMediaPlaylist_Loop                                          3
#define QMediaPlaylist_Random                                        4
