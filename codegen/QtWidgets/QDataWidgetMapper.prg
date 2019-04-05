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

#include <QtCore/QModelIndex>
#include <QtWidgets/QAbstractItemDelegate>

$prototype=QDataWidgetMapper ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=void addMapping ( QWidget * widget, int section )
$internalMethod=|void|addMapping,addMapping1|QWidget *,int

$prototype=void addMapping ( QWidget * widget, int section, const QByteArray & propertyName )
$internalMethod=|void|addMapping,addMapping2|QWidget *,int,const QByteArray &

//[1]void addMapping ( QWidget * widget, int section )
//[2]void addMapping ( QWidget * widget, int section, const QByteArray & propertyName )

HB_FUNC_STATIC( QDATAWIDGETMAPPER_ADDMAPPING )
{
  if( ISNUMPAR(2) && ISQWIDGET(1) && ISNUM(2) )
  {
    QDataWidgetMapper_addMapping1();
  }
  else if( ISNUMPAR(3) && ISQWIDGET(1) && ISNUM(2) && ISQBYTEARRAY(3) )
  {
    QDataWidgetMapper_addMapping2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addMapping

$prototype=void clearMapping ()
$method=|void|clearMapping|

$prototype=int currentIndex () const
$method=|int|currentIndex|

$prototype=QAbstractItemDelegate * itemDelegate () const
$method=|QAbstractItemDelegate *|itemDelegate|

$prototype=QByteArray mappedPropertyName ( QWidget * widget ) const
$method=|QByteArray|mappedPropertyName|QWidget *

$prototype=int mappedSection ( QWidget * widget ) const
$method=|int|mappedSection|QWidget *

$prototype=QWidget * mappedWidgetAt ( int section ) const
$method=|QWidget *|mappedWidgetAt|int

$prototype=QAbstractItemModel * model () const
$method=|QAbstractItemModel *|model|

$prototype=Qt::Orientation orientation () const
$method=|Qt::Orientation|orientation|

$prototype=void removeMapping ( QWidget * widget )
$method=|void|removeMapping|QWidget *

$prototype=QModelIndex rootIndex () const
$method=|QModelIndex|rootIndex|

$prototype=void setItemDelegate ( QAbstractItemDelegate * delegate )
$method=|void|setItemDelegate|QAbstractItemDelegate *

$prototype=void setModel ( QAbstractItemModel * model )
$method=|void|setModel|QAbstractItemModel *

$prototype=void setOrientation ( Qt::Orientation aOrientation )
$method=|void|setOrientation|Qt::Orientation

$prototype=void setRootIndex ( const QModelIndex & index )
$method=|void|setRootIndex|const QModelIndex &

$prototype=void setSubmitPolicy ( SubmitPolicy policy )
$method=|void|setSubmitPolicy|QDataWidgetMapper::SubmitPolicy

$prototype=SubmitPolicy submitPolicy () const
$method=|QDataWidgetMapper::SubmitPolicy|submitPolicy|

$prototype=void revert ()
$method=|void|revert|

$prototype=virtual void setCurrentIndex ( int index )
$virtualMethod=|void|setCurrentIndex|int

$prototype=void setCurrentModelIndex ( const QModelIndex & index )
$method=|void|setCurrentModelIndex|const QModelIndex &

$prototype=bool submit ()
$method=|bool|submit|

$prototype=void toFirst ()
$method=|void|toFirst|

$prototype=void toLast ()
$method=|void|toLast|

$prototype=void toNext ()
$method=|void|toNext|

$prototype=void toPrevious ()
$method=|void|toPrevious|

$beginSignals
$signal=|currentIndexChanged(int)
$endSignals

#pragma ENDDUMP
