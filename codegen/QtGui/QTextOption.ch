%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

/*
enum QTextOption::TabType
*/
#define QTextOption_LeftTab                                          0
#define QTextOption_RightTab                                         1
#define QTextOption_CenterTab                                        2
#define QTextOption_DelimiterTab                                     3

/*
enum QTextOption::WrapMode
*/
#define QTextOption_NoWrap                                           0
#define QTextOption_WordWrap                                         1
#define QTextOption_ManualWrap                                       2
#define QTextOption_WrapAnywhere                                     3
#define QTextOption_WrapAtWordBoundaryOrAnywhere                     4

/*
enum QTextOption::Flag
*/
#define QTextOption_ShowTabsAndSpaces                                0x1
#define QTextOption_ShowLineAndParagraphSeparators                   0x2
#define QTextOption_AddSpaceForLineAndParagraphSeparators            0x4
#define QTextOption_SuppressColors                                   0x8
#define QTextOption_IncludeTrailingSpaces                            0x80000000
