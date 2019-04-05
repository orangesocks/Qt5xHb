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

#include <QtWidgets/QUndoStack>
#include <QtWidgets/QAction>

$prototype=QUndoGroup(QObject * parent = 0)
$constructor=|new|QObject *=0

$deleteMethod

$prototype=QUndoStack * activeStack() const
$method=|QUndoStack *|activeStack|

$prototype=void addStack(QUndoStack * stack)
$method=|void|addStack|QUndoStack *

$prototype=bool canRedo() const
$method=|bool|canRedo|

$prototype=bool canUndo() const
$method=|bool|canUndo|

$prototype=QAction * createRedoAction(QObject * parent, const QString & prefix = QString()) const
$method=|QAction *|createRedoAction|QObject *,const QString &=QString()

$prototype=QAction * createUndoAction(QObject * parent, const QString & prefix = QString()) const
$method=|QAction *|createUndoAction|QObject *,const QString &=QString()

$prototype=bool isClean() const
$method=|bool|isClean|

$prototype=QString redoText() const
$method=|QString|redoText|

$prototype=void removeStack(QUndoStack * stack)
$method=|void|removeStack|QUndoStack *

$prototype=QList<QUndoStack *> stacks() const
$method=|QList<QUndoStack *>|stacks|

$prototype=QString undoText() const
$method=|QString|undoText|

$prototype=void redo()
$method=|void|redo|

$prototype=void setActiveStack(QUndoStack * stack)
$method=|void|setActiveStack|QUndoStack *

$prototype=void undo()
$method=|void|undo|

$beginSignals
$signal=|activeStackChanged(QUndoStack*)
$signal=|canRedoChanged(bool)
$signal=|canUndoChanged(bool)
$signal=|cleanChanged(bool)
$signal=|indexChanged(int)
$signal=|redoTextChanged(QString)
$signal=|undoTextChanged(QString)
$endSignals

#pragma ENDDUMP
