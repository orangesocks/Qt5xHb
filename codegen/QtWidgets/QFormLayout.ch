%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

/*
enum QFormLayout::FieldGrowthPolicy
*/
#define QFormLayout_FieldsStayAtSizeHint                             0
#define QFormLayout_ExpandingFieldsGrow                              1
#define QFormLayout_AllNonFixedFieldsGrow                            2

/*
enum QFormLayout::ItemRole
*/
#define QFormLayout_LabelRole                                        0
#define QFormLayout_FieldRole                                        1
#define QFormLayout_SpanningRole                                     2

/*
enum QFormLayout::RowWrapPolicy
*/
#define QFormLayout_DontWrapRows                                     0
#define QFormLayout_WrapLongRows                                     1
#define QFormLayout_WrapAllRows                                      2
