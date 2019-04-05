%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

$includes

$beginSlotsClass
$signal=|error( QProcess::ProcessError error )
$signal=|finished( int exitCode, QProcess::ExitStatus exitStatus )
$signal=|readyReadStandardError()
$signal=|readyReadStandardOutput()
$signal=|started()
$signal=|stateChanged( QProcess::ProcessState newState )
$signal=5,6,0|errorOccurred( QProcess::ProcessError error )
$endSlotsClass
