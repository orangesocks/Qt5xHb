#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/QGeoCodeReplySlotsMoc.cpp            : $(QT5XHB_SRC_DIR)/QtLocation/QGeoCodeReplySlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QGeoCodingManagerSlotsMoc.cpp        : $(QT5XHB_SRC_DIR)/QtLocation/QGeoCodingManagerSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QGeoCodingManagerEngineSlotsMoc.cpp  : $(QT5XHB_SRC_DIR)/QtLocation/QGeoCodingManagerEngineSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QGeoRouteReplySlotsMoc.cpp           : $(QT5XHB_SRC_DIR)/QtLocation/QGeoRouteReplySlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QGeoRoutingManagerSlotsMoc.cpp       : $(QT5XHB_SRC_DIR)/QtLocation/QGeoRoutingManagerSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QGeoRoutingManagerEngineSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtLocation/QGeoRoutingManagerEngineSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QPlaceManagerSlotsMoc.cpp            : $(QT5XHB_SRC_DIR)/QtLocation/QPlaceManagerSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QPlaceManagerEngineSlotsMoc.cpp      : $(QT5XHB_SRC_DIR)/QtLocation/QPlaceManagerEngineSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QPlaceReplySlotsMoc.cpp              : $(QT5XHB_SRC_DIR)/QtLocation/QPlaceReplySlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
