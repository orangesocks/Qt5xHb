%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractItemView

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QListView ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=int batchSize () const
$method=|int|batchSize|

$prototype=void clearPropertyFlags ()
$method=|void|clearPropertyFlags|

$prototype=Flow flow () const
$method=|QListView::Flow|flow|

$prototype=QSize gridSize () const
$method=|QSize|gridSize|

$prototype=bool isRowHidden ( int row ) const
$method=|bool|isRowHidden|int

$prototype=bool isSelectionRectVisible () const
$method=|bool|isSelectionRectVisible|

$prototype=bool isWrapping () const
$method=|bool|isWrapping|

$prototype=LayoutMode layoutMode () const
$method=|QListView::LayoutMode|layoutMode|

$prototype=int modelColumn () const
$method=|int|modelColumn|

$prototype=Movement movement () const
$method=|QListView::Movement|movement|

$prototype=ResizeMode resizeMode () const
$method=|QListView::ResizeMode|resizeMode|

$prototype=void setBatchSize ( int batchSize )
$method=|void|setBatchSize|int

$prototype=void setFlow ( Flow flow )
$method=|void|setFlow|QListView::Flow

$prototype=void setGridSize ( const QSize & size )
$method=|void|setGridSize|const QSize &

$prototype=void setLayoutMode ( LayoutMode mode )
$method=|void|setLayoutMode|QListView::LayoutMode

$prototype=void setModelColumn ( int column )
$method=|void|setModelColumn|int

$prototype=void setMovement ( Movement movement )
$method=|void|setMovement|QListView::Movement

$prototype=void setResizeMode ( ResizeMode mode )
$method=|void|setResizeMode|QListView::ResizeMode

$prototype=void setRowHidden ( int row, bool hide )
$method=|void|setRowHidden|int,bool

$prototype=void setSelectionRectVisible ( bool show )
$method=|void|setSelectionRectVisible|bool

$prototype=void setSpacing ( int space )
$method=|void|setSpacing|int

$prototype=void setUniformItemSizes ( bool enable )
$method=|void|setUniformItemSizes|bool

$prototype=void setViewMode ( ViewMode mode )
$method=|void|setViewMode|QListView::ViewMode

$prototype=void setWordWrap ( bool on )
$method=|void|setWordWrap|bool

$prototype=void setWrapping ( bool enable )
$method=|void|setWrapping|bool

$prototype=int spacing () const
$method=|int|spacing|

$prototype=bool uniformItemSizes () const
$method=|bool|uniformItemSizes|

$prototype=ViewMode viewMode () const
$method=|QListView::ViewMode|viewMode|

$prototype=bool wordWrap () const
$method=|bool|wordWrap|

$prototype=virtual QModelIndex indexAt ( const QPoint & p ) const
$virtualMethod=|QModelIndex|indexAt|const QPoint &

$prototype=virtual void scrollTo ( const QModelIndex & index, ScrollHint hint = EnsureVisible )
$virtualMethod=|void|scrollTo|const QModelIndex &,QListView::ScrollHint=QListView::EnsureVisible

$prototype=virtual QRect visualRect ( const QModelIndex & index ) const
$virtualMethod=|QRect|visualRect|const QModelIndex &

$beginSignals
$signal=|indexesMoved(QModelIndexList)
$endSignals

#pragma ENDDUMP
