%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

/*
enum QUrl::FormattingOption
flags QUrl::FormattingOptions
*/
#define QUrl_None                                                    0x0
#define QUrl_RemoveScheme                                            0x1
#define QUrl_RemovePassword                                          0x2
#define QUrl_RemoveUserInfo                                          hb_bitor(QUrl_RemovePassword,0x4)
#define QUrl_RemovePort                                              0x8
#define QUrl_RemoveAuthority                                         hb_bitor(hb_bitor(QUrl_RemoveUserInfo,QUrl_RemovePort),0x10)
#define QUrl_RemovePath                                              0x20
#define QUrl_RemoveQuery                                             0x40
#define QUrl_RemoveFragment                                          0x80
#define QUrl_StripTrailingSlash                                      0x10000

/*
enum QUrl::ParsingMode
*/
#define QUrl_TolerantMode                                            0
#define QUrl_StrictMode                                              1
