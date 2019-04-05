%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

/*
enum QLibrary::LoadHint
flags QLibrary::LoadHints
*/
#define QLibrary_ResolveAllSymbolsHint                               0x01
#define QLibrary_ExportExternalSymbolsHint                           0x02
#define QLibrary_LoadArchiveMemberHint                               0x04
#define QLibrary_PreventUnloadHint                                   0x08
