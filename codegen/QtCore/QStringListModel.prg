$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QMODELINDEX
#endif

CLASS QStringListModel INHERIT QAbstractListModel

   METHOD new
   METHOD setStringList
   METHOD stringList
   METHOD data
   METHOD flags
   METHOD insertRows
   METHOD removeRows
   METHOD rowCount
   METHOD setData
   METHOD sibling
   METHOD sort
   METHOD supportedDropActions

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QStringListModel(QObject * parent = 0)
$internalConstructor=|new1|QObject *=0

$prototype=QStringListModel(const QStringList & strings, QObject * parent = 0)
$internalConstructor=|new2|const QStringList &,QObject *=0

//[1]QStringListModel(QObject * parent = 0)
//[2]QStringListModel(const QStringList & strings, QObject * parent = 0)

HB_FUNC_STATIC( QSTRINGLISTMODEL_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QStringListModel_new1();
  }
  else if( ISBETWEEN(1,2) && ISARRAY(1) && ISOPTQOBJECT(2) )
  {
    QStringListModel_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setStringList(const QStringList & strings)
$method=|void|setStringList|const QStringList &

$prototype=QStringList stringList() const
$method=|QStringList|stringList|

$prototype=virtual QVariant data(const QModelIndex & index, int role) const
$method=|QVariant|data|const QModelIndex &,int

$prototype=virtual Qt::ItemFlags flags(const QModelIndex & index) const
$method=|Qt::ItemFlags|flags|const QModelIndex &

$prototype=virtual bool insertRows(int row, int count, const QModelIndex & parent = QModelIndex())
$method=|bool|insertRows|int,int,const QModelIndex &=QModelIndex()

$prototype=virtual bool removeRows(int row, int count, const QModelIndex & parent = QModelIndex())
$method=|bool|removeRows|int,int,const QModelIndex &=QModelIndex()

$prototype=virtual int rowCount(const QModelIndex & parent = QModelIndex()) const
$method=|int|rowCount|const QModelIndex &=QModelIndex()

$prototype=virtual bool setData(const QModelIndex & index, const QVariant & value, int role = Qt::EditRole)
$method=|bool|setData|const QModelIndex &,const QVariant &,int=Qt::EditRole

$prototype=virtual QModelIndex sibling(int row, int column, const QModelIndex & idx) const
$method=|QModelIndex|sibling|int,int,const QModelIndex &

$prototype=virtual void sort(int column, Qt::SortOrder order = Qt::AscendingOrder)
$method=|void|sort|int,Qt::SortOrder=Qt::AscendingOrder

$prototype=virtual Qt::DropActions supportedDropActions() const
$method=|Qt::DropActions|supportedDropActions|

#pragma ENDDUMP
