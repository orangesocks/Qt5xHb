/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTDESIGNER_H
#define QT5XHB_MACROS_QTDESIGNER_H

#define ISQABSTRACTEXTENSIONFACTORY( n )                    Qt5xHb::isObjectDerivedFrom( n, "QAbstractExtensionFactory" )
#define ISQABSTRACTEXTENSIONMANAGER( n )                    Qt5xHb::isObjectDerivedFrom( n, "QAbstractExtensionManager" )
#define ISQABSTRACTFORMBUILDER( n )                         Qt5xHb::isObjectDerivedFrom( n, "QAbstractFormBuilder" )
#define ISQDESIGNERACTIONEDITORINTERFACE( n )               Qt5xHb::isObjectDerivedFrom( n, "QDesignerActionEditorInterface" )
#define ISQDESIGNERCONTAINEREXTENSION( n )                  Qt5xHb::isObjectDerivedFrom( n, "QDesignerContainerExtension" )
#define ISQDESIGNERCUSTOMWIDGETCOLLECTIONINTERFACE( n )     Qt5xHb::isObjectDerivedFrom( n, "QDesignerCustomWidgetCollectionInterface" )
#define ISQDESIGNERCUSTOMWIDGETINTERFACE( n )               Qt5xHb::isObjectDerivedFrom( n, "QDesignerCustomWidgetInterface" )
#define ISQDESIGNERDYNAMICPROPERTYSHEETEXTENSION( n )       Qt5xHb::isObjectDerivedFrom( n, "QDesignerDynamicPropertySheetExtension" )
#define ISQDESIGNERFORMEDITORINTERFACE( n )                 Qt5xHb::isObjectDerivedFrom( n, "QDesignerFormEditorInterface" )
#define ISQDESIGNERFORMWINDOWCURSORINTERFACE( n )           Qt5xHb::isObjectDerivedFrom( n, "QDesignerFormWindowCursorInterface" )
#define ISQDESIGNERFORMWINDOWMANAGERINTERFACE( n )          Qt5xHb::isObjectDerivedFrom( n, "QDesignerFormWindowManagerInterface" )
#define ISQDESIGNERMEMBERSHEETEXTENSION( n )                Qt5xHb::isObjectDerivedFrom( n, "QDesignerMemberSheetExtension" )
#define ISQDESIGNEROBJECTINSPECTORINTERFACE( n )            Qt5xHb::isObjectDerivedFrom( n, "QDesignerObjectInspectorInterface" )
#define ISQDESIGNERPROPERTYEDITORINTERFACE( n )             Qt5xHb::isObjectDerivedFrom( n, "QDesignerPropertyEditorInterface" )
#define ISQDESIGNERPROPERTYSHEETEXTENSION( n )              Qt5xHb::isObjectDerivedFrom( n, "QDesignerPropertySheetExtension" )
#define ISQDESIGNERTASKMENUEXTENSION( n )                   Qt5xHb::isObjectDerivedFrom( n, "QDesignerTaskMenuExtension" )
#define ISQDESIGNERWIDGETBOXINTERFACE( n )                  Qt5xHb::isObjectDerivedFrom( n, "QDesignerWidgetBoxInterface" )
#define ISQEXTENSIONFACTORY( n )                            Qt5xHb::isObjectDerivedFrom( n, "QExtensionFactory" )
#define ISQEXTENSIONMANAGER( n )                            Qt5xHb::isObjectDerivedFrom( n, "QExtensionManager" )
#define ISQFORMBUILDER( n )                                 Qt5xHb::isObjectDerivedFrom( n, "QFormBuilder" )

#define PQABSTRACTEXTENSIONFACTORY( n )                     static_cast< QAbstractExtensionFactory * >( Qt5xHb::itemGetPtr( n ) )
#define PQABSTRACTEXTENSIONMANAGER( n )                     static_cast< QAbstractExtensionManager * >( Qt5xHb::itemGetPtr( n ) )
#define PQABSTRACTFORMBUILDER( n )                          static_cast< QAbstractFormBuilder * >( Qt5xHb::itemGetPtr( n ) )
#define PQDESIGNERACTIONEDITORINTERFACE( n )                static_cast< QDesignerActionEditorInterface * >( Qt5xHb::itemGetPtr( n ) )
#define PQDESIGNERCONTAINEREXTENSION( n )                   static_cast< QDesignerContainerExtension * >( Qt5xHb::itemGetPtr( n ) )
#define PQDESIGNERCUSTOMWIDGETCOLLECTIONINTERFACE( n )      static_cast< QDesignerCustomWidgetCollectionInterface * >( Qt5xHb::itemGetPtr( n ) )
#define PQDESIGNERCUSTOMWIDGETINTERFACE( n )                static_cast< QDesignerCustomWidgetInterface * >( Qt5xHb::itemGetPtr( n ) )
#define PQDESIGNERDYNAMICPROPERTYSHEETEXTENSION( n )        static_cast< QDesignerDynamicPropertySheetExtension * >( Qt5xHb::itemGetPtr( n ) )
#define PQDESIGNERFORMEDITORINTERFACE( n )                  static_cast< QDesignerFormEditorInterface * >( Qt5xHb::itemGetPtr( n ) )
#define PQDESIGNERFORMWINDOWCURSORINTERFACE( n )            static_cast< QDesignerFormWindowCursorInterface * >( Qt5xHb::itemGetPtr( n ) )
#define PQDESIGNERFORMWINDOWMANAGERINTERFACE( n )           static_cast< QDesignerFormWindowManagerInterface * >( Qt5xHb::itemGetPtr( n ) )
#define PQDESIGNERMEMBERSHEETEXTENSION( n )                 static_cast< QDesignerMemberSheetExtension * >( Qt5xHb::itemGetPtr( n ) )
#define PQDESIGNEROBJECTINSPECTORINTERFACE( n )             static_cast< QDesignerObjectInspectorInterface * >( Qt5xHb::itemGetPtr( n ) )
#define PQDESIGNERPROPERTYEDITORINTERFACE( n )              static_cast< QDesignerPropertyEditorInterface * >( Qt5xHb::itemGetPtr( n ) )
#define PQDESIGNERPROPERTYSHEETEXTENSION( n )               static_cast< QDesignerPropertySheetExtension * >( Qt5xHb::itemGetPtr( n ) )
#define PQDESIGNERTASKMENUEXTENSION( n )                    static_cast< QDesignerTaskMenuExtension * >( Qt5xHb::itemGetPtr( n ) )
#define PQDESIGNERWIDGETBOXINTERFACE( n )                   static_cast< QDesignerWidgetBoxInterface * >( Qt5xHb::itemGetPtr( n ) )
#define PQEXTENSIONFACTORY( n )                             static_cast< QExtensionFactory * >( Qt5xHb::itemGetPtr( n ) )
#define PQEXTENSIONMANAGER( n )                             static_cast< QExtensionManager * >( Qt5xHb::itemGetPtr( n ) )
#define PQFORMBUILDER( n )                                  static_cast< QFormBuilder * >( Qt5xHb::itemGetPtr( n ) )

#define OPQABSTRACTEXTENSIONFACTORY( n, v )                 HB_ISNIL( n ) ? v : static_cast< QAbstractExtensionFactory * >( Qt5xHb::itemGetPtr( n ) )
#define OPQABSTRACTEXTENSIONMANAGER( n, v )                 HB_ISNIL( n ) ? v : static_cast< QAbstractExtensionManager * >( Qt5xHb::itemGetPtr( n ) )
#define OPQABSTRACTFORMBUILDER( n, v )                      HB_ISNIL( n ) ? v : static_cast< QAbstractFormBuilder * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDESIGNERACTIONEDITORINTERFACE( n, v )            HB_ISNIL( n ) ? v : static_cast< QDesignerActionEditorInterface * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDESIGNERCONTAINEREXTENSION( n, v )               HB_ISNIL( n ) ? v : static_cast< QDesignerContainerExtension * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDESIGNERCUSTOMWIDGETCOLLECTIONINTERFACE( n, v )  HB_ISNIL( n ) ? v : static_cast< QDesignerCustomWidgetCollectionInterface * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDESIGNERCUSTOMWIDGETINTERFACE( n, v )            HB_ISNIL( n ) ? v : static_cast< QDesignerCustomWidgetInterface * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDESIGNERDYNAMICPROPERTYSHEETEXTENSION( n, v )    HB_ISNIL( n ) ? v : static_cast< QDesignerDynamicPropertySheetExtension * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDESIGNERFORMEDITORINTERFACE( n, v )              HB_ISNIL( n ) ? v : static_cast< QDesignerFormEditorInterface * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDESIGNERFORMWINDOWCURSORINTERFACE( n, v )        HB_ISNIL( n ) ? v : static_cast< QDesignerFormWindowCursorInterface * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDESIGNERFORMWINDOWMANAGERINTERFACE( n, v )       HB_ISNIL( n ) ? v : static_cast< QDesignerFormWindowManagerInterface * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDESIGNERMEMBERSHEETEXTENSION( n, v )             HB_ISNIL( n ) ? v : static_cast< QDesignerMemberSheetExtension * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDESIGNEROBJECTINSPECTORINTERFACE( n, v )         HB_ISNIL( n ) ? v : static_cast< QDesignerObjectInspectorInterface * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDESIGNERPROPERTYEDITORINTERFACE( n, v )          HB_ISNIL( n ) ? v : static_cast< QDesignerPropertyEditorInterface * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDESIGNERPROPERTYSHEETEXTENSION( n, v )           HB_ISNIL( n ) ? v : static_cast< QDesignerPropertySheetExtension * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDESIGNERTASKMENUEXTENSION( n, v )                HB_ISNIL( n ) ? v : static_cast< QDesignerTaskMenuExtension * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDESIGNERWIDGETBOXINTERFACE( n, v )               HB_ISNIL( n ) ? v : static_cast< QDesignerWidgetBoxInterface * >( Qt5xHb::itemGetPtr( n ) )
#define OPQEXTENSIONFACTORY( n, v )                         HB_ISNIL( n ) ? v : static_cast< QExtensionFactory * >( Qt5xHb::itemGetPtr( n ) )
#define OPQEXTENSIONMANAGER( n, v )                         HB_ISNIL( n ) ? v : static_cast< QExtensionManager * >( Qt5xHb::itemGetPtr( n ) )
#define OPQFORMBUILDER( n, v )                              HB_ISNIL( n ) ? v : static_cast< QFormBuilder * >( Qt5xHb::itemGetPtr( n ) )

#endif /* QT5XHB_MACROS_QTDESIGNER_H */
