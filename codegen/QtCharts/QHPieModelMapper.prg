%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QPieModelMapper

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,7,0

#include <QtCharts/QPieSeries>
#include <QtCore/QAbstractItemModel>

using namespace QtCharts;

$prototype=explicit QHPieModelMapper(QObject *parent = Q_NULLPTR)
$constructor=5,7,0|new|QObject *=Q_NULLPTR

%% $deleteMethod=5,7,0

%%
%% Q_PROPERTY(QPieSeries *series READ series WRITE setSeries NOTIFY seriesReplaced)
%%

$prototype=QPieSeries *series() const
$method=5,7,0|QPieSeries *|series|

$prototype=void setSeries(QPieSeries *series)
$method=5,7,0|void|setSeries|QPieSeries *

%%
%% Q_PROPERTY(QAbstractItemModel *model READ model WRITE setModel NOTIFY modelReplaced)
%%

$prototype=QAbstractItemModel *model() const
$method=5,7,0|QAbstractItemModel *|model|

$prototype=void setModel(QAbstractItemModel *model)
$method=5,7,0|void|setModel|QAbstractItemModel *

%%
%% Q_PROPERTY(int valuesRow READ valuesRow WRITE setValuesRow NOTIFY valuesRowChanged)
%%

$prototype=int valuesRow() const
$method=5,7,0|int|valuesRow|

$prototype=void setValuesRow(int valuesRow)
$method=5,7,0|void|setValuesRow|int

%%
%% Q_PROPERTY(int labelsRow READ labelsRow WRITE setLabelsRow NOTIFY labelsRowChanged)
%%

$prototype=int labelsRow() const
$method=5,7,0|int|labelsRow|

$prototype=void setLabelsRow(int labelsRow)
$method=5,7,0|void|setLabelsRow|int

%%
%% Q_PROPERTY(int firstColumn READ firstColumn WRITE setFirstColumn NOTIFY firstColumnChanged)
%%

$prototype=int firstColumn() const
$method=5,7,0|int|firstColumn|

$prototype=void setFirstColumn(int firstColumn)
$method=5,7,0|void|setFirstColumn|int

%%
%% Q_PROPERTY(int columnCount READ columnCount WRITE setColumnCount NOTIFY columnCountChanged)
%%

$prototype=int columnCount() const
$method=5,7,0|int|columnCount|

$prototype=void setColumnCount(int columnCount)
$method=5,7,0|void|setColumnCount|int

%%
%%
%%

$beginSignals
$signal=5,7,0|columnCountChanged()
$signal=5,7,0|firstColumnChanged()
$signal=5,7,0|labelsRowChanged()
$signal=5,7,0|modelReplaced()
$signal=5,7,0|seriesReplaced()
$signal=5,7,0|valuesRowChanged()
$endSignals

#pragma ENDDUMP
