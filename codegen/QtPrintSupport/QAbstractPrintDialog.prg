%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtPrintSupport

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QDialog

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual int exec () = 0
$virtualMethod=|int|exec|

$prototype=int fromPage () const
$method=|int|fromPage|

$prototype=int maxPage () const
$method=|int|maxPage|

$prototype=int minPage () const
$method=|int|minPage|

$prototype=PrintRange printRange () const
$method=|QAbstractPrintDialog::PrintRange|printRange|

$prototype=QPrinter * printer () const
$method=|QPrinter *|printer|

$prototype=void setFromTo ( int from, int to )
$method=|void|setFromTo|int,int

$prototype=void setMinMax ( int min, int max )
$method=|void|setMinMax|int,int

$prototype=void setOptionTabs ( const QList<QWidget *> & tabs )
$method=|void|setOptionTabs|const QList<QWidget *> &

$prototype=void setPrintRange ( PrintRange range )
$method=|void|setPrintRange|QAbstractPrintDialog::PrintRange

$prototype=int toPage () const
$method=|int|toPage|

$prototype=void addEnabledOption(PrintDialogOption option)
$method=|void|addEnabledOption|QAbstractPrintDialog::PrintDialogOption

$prototype=void setEnabledOptions(PrintDialogOptions options)
$method=|void|setEnabledOptions|QAbstractPrintDialog::PrintDialogOptions

$prototype=PrintDialogOptions enabledOptions() const
$method=|QAbstractPrintDialog::PrintDialogOptions|enabledOptions|

$prototype=bool isOptionEnabled(PrintDialogOption option) const
$method=|bool|isOptionEnabled|QAbstractPrintDialog::PrintDialogOption

#pragma ENDDUMP
