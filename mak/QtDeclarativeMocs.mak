#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/QDeclarativeComponentSlotsMoc.cpp   : $(QT5XHB_SRC_DIR)/QtDeclarative/QDeclarativeComponentSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QDeclarativeEngineSlotsMoc.cpp      : $(QT5XHB_SRC_DIR)/QtDeclarative/QDeclarativeEngineSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QDeclarativeExpressionSlotsMoc.cpp  : $(QT5XHB_SRC_DIR)/QtDeclarative/QDeclarativeExpressionSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QDeclarativePropertyMapSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtDeclarative/QDeclarativePropertyMapSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QDeclarativeViewSlotsMoc.cpp        : $(QT5XHB_SRC_DIR)/QtDeclarative/QDeclarativeViewSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
