%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

/*
enum QAction::ActionEvent
*/
#define QAction_Trigger                                              0
#define QAction_Hover                                                1

/*
enum QAction::MenuRole
*/
#define QAction_NoRole                                               0
#define QAction_TextHeuristicRole                                    1
#define QAction_ApplicationSpecificRole                              2
#define QAction_AboutQtRole                                          3
#define QAction_AboutRole                                            4
#define QAction_PreferencesRole                                      5
#define QAction_QuitRole                                             6

/*
enum QAction::Priority
*/
#define QAction_LowPriority                                          0
#define QAction_NormalPriority                                       128
#define QAction_HighPriority                                         256

/*
enum QAction::SoftKeyRole
*/
#define QAction_NoSoftKey                                            0
#define QAction_PositiveSoftKey                                      1
#define QAction_NegativeSoftKey                                      2
#define QAction_SelectSoftKey                                        3
