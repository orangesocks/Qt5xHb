#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

# include mak/*Mocs.mak
ifeq ($(MODULE_ACTIVEQT),yes)
   include mak/QAxContainerMocs.mak
endif
ifeq ($(MODULE_ACTIVEQT),yes)
   include mak/QAxServerMocs.mak
endif
ifeq ($(MODULE_QTANDROIDEXTRAS),yes)
   include mak/QtAndroidExtrasMocs.mak
endif
ifeq ($(MODULE_QTBLUETOOTH),yes)
   include mak/QtBluetoothMocs.mak
endif
ifeq ($(MODULE_QTCORE),yes)
   include mak/QtCoreMocs.mak
endif
ifeq ($(MODULE_QTDECLARATIVE),yes)
   include mak/QtDeclarativeMocs.mak
endif
ifeq ($(MODULE_QTDESIGNER),yes)
   include mak/QtDesignerMocs.mak
endif
ifeq ($(MODULE_QTGUI),yes)
   include mak/QtGuiMocs.mak
endif
ifeq ($(MODULE_QTHELP),yes)
   include mak/QtHelpMocs.mak
endif
ifeq ($(MODULE_QTLOCATION),yes)
   include mak/QtLocationMocs.mak
endif
ifeq ($(MODULE_QTMULTIMEDIA),yes)
   include mak/QtMultimediaMocs.mak
endif
ifeq ($(MODULE_QTMULTIMEDIAWIDGETS),yes)
   include mak/QtMultimediaWidgetsMocs.mak
endif
ifeq ($(MODULE_QTNETWORK),yes)
   include mak/QtNetworkMocs.mak
endif
ifeq ($(MODULE_QTOPENGL),yes)
   include mak/QtOpenGLMocs.mak
endif
ifeq ($(MODULE_QTPOSITIONING),yes)
   include mak/QtPositioningMocs.mak
endif
ifeq ($(MODULE_QTPRINTSUPPORT),yes)
   include mak/QtPrintSupportMocs.mak
endif
ifeq ($(MODULE_QTQML),yes)
   include mak/QtQmlMocs.mak
endif
ifeq ($(MODULE_QTQUICK),yes)
   include mak/QtQuickMocs.mak
endif
ifeq ($(MODULE_QTQUICKWIDGETS),yes)
   include mak/QtQuickWidgetsMocs.mak
endif
ifeq ($(MODULE_QTSCRIPT),yes)
   include mak/QtScriptMocs.mak
endif
ifeq ($(MODULE_QTSCRIPTTOOLS),yes)
   include mak/QtScriptToolsMocs.mak
endif
ifeq ($(MODULE_QTSENSORS),yes)
   include mak/QtSensorsMocs.mak
endif
ifeq ($(MODULE_QTSERIALPORT),yes)
   include mak/QtSerialPortMocs.mak
endif
ifeq ($(MODULE_QTSQL),yes)
   include mak/QtSqlMocs.mak
endif
ifeq ($(MODULE_QTSVG),yes)
   include mak/QtSvgMocs.mak
endif
ifeq ($(MODULE_QTUITOOLS),yes)
   include mak/QtUiToolsMocs.mak
endif
ifeq ($(MODULE_QTWEBKITS),yes)
   include mak/QtWebKitMocs.mak
endif
ifeq ($(MODULE_QTWEBKITWIDGETS),yes)
   include mak/QtWebKitWidgetsMocs.mak
endif
ifeq ($(MODULE_QTWEBSOCKETS),yes)
   include mak/QtWebSocketsMocs.mak
endif
ifeq ($(MODULE_QTWIDGETS),yes)
   include mak/QtWidgetsMocs.mak
endif
ifeq ($(MODULE_QTWINEXTRAS),yes)
   include mak/QtWinExtrasMocs.mak
endif
ifeq ($(MODULE_QTXML),yes)
   include mak/QtXmlMocs.mak
endif
ifeq ($(MODULE_QTXMLPATTERNS),yes)
   include mak/QtXmlPatternsMocs.mak
endif