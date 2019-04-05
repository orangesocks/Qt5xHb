%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

/*
enum QInputDialog::InputDialogOption
flags QInputDialog::InputDialogOptions
*/
#define QInputDialog_NoButtons                                       0x00000001
#define QInputDialog_UseListViewForComboBoxItems                     0x00000002
#define QInputDialog_UsePlainTextEditForTextInput                    0x00000004

/*
enum QInputDialog::InputMode
*/
#define QInputDialog_TextInput                                       0
#define QInputDialog_IntInput                                        1
#define QInputDialog_DoubleInput                                     2
