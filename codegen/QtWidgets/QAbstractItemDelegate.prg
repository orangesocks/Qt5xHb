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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QWidget * createEditor ( QWidget * parent, const QStyleOptionViewItem & option, const QModelIndex & index ) const
$virtualMethod=|QWidget *|createEditor|QWidget *,const QStyleOptionViewItem &,const QModelIndex &

$prototype=virtual bool editorEvent ( QEvent * event, QAbstractItemModel * model, const QStyleOptionViewItem & option, const QModelIndex & index )
$virtualMethod=|bool|editorEvent|QEvent *,QAbstractItemModel *,const QStyleOptionViewItem &,const QModelIndex &

$prototype=virtual void paint ( QPainter * painter, const QStyleOptionViewItem & option, const QModelIndex & index ) const = 0
$virtualMethod=|void|paint|QPainter *,const QStyleOptionViewItem &,const QModelIndex &

$prototype=virtual void setEditorData ( QWidget * editor, const QModelIndex & index ) const
$virtualMethod=|void|setEditorData|QWidget *,const QModelIndex &

$prototype=virtual void setModelData ( QWidget * editor, QAbstractItemModel * model, const QModelIndex & index ) const
$virtualMethod=|void|setModelData|QWidget *,QAbstractItemModel *,const QModelIndex &

$prototype=virtual QSize sizeHint ( const QStyleOptionViewItem & option, const QModelIndex & index ) const = 0
$virtualMethod=|QSize|sizeHint|const QStyleOptionViewItem &,const QModelIndex &

$prototype=virtual void updateEditorGeometry ( QWidget * editor, const QStyleOptionViewItem & option, const QModelIndex & index ) const
$virtualMethod=|void|updateEditorGeometry|QWidget *,const QStyleOptionViewItem &,const QModelIndex &

$prototype=virtual bool helpEvent ( QHelpEvent * event, QAbstractItemView * view, const QStyleOptionViewItem & option, const QModelIndex & index )
$virtualMethod=|bool|helpEvent|QHelpEvent *,QAbstractItemView *,const QStyleOptionViewItem &,const QModelIndex &

$prototype=virtual void destroyEditor(QWidget *editor, const QModelIndex &index) const
$virtualMethod=|void|destroyEditor|QWidget *,const QModelIndex &

$prototype=static QString elidedText(const QFontMetrics &fontMetrics, int width, Qt::TextElideMode mode, const QString &text)
$staticMethod=|QString|elidedText|const QFontMetrics &,int,Qt::TextElideMode,const QString &

$prototype=virtual QVector<int> paintingRoles() const
$virtualMethod=|QVector<int>|paintingRoles|

$beginSignals
$signal=|closeEditor(QWidget*,QAbstractItemDelegate::EndEditHint)
$signal=|commitData(QWidget*)
$signal=|sizeHintChanged(QModelIndex)
$endSignals

#pragma ENDDUMP
