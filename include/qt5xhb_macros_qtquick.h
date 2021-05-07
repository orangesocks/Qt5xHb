/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTQUICK_H
#define QT5XHB_MACROS_QTQUICK_H

#define ISQQUICKIMAGEPROVIDER( n )                          Qt5xHb::isObjectDerivedFrom( n, "QQuickImageProvider" )
#define ISQQUICKITEM( n )                                   Qt5xHb::isObjectDerivedFrom( n, "QQuickItem" )
#define ISQQUICKPAINTEDITEM( n )                            Qt5xHb::isObjectDerivedFrom( n, "QQuickPaintedItem" )
#define ISQQUICKTEXTUREFACTORY( n )                         Qt5xHb::isObjectDerivedFrom( n, "QQuickTextureFactory" )
#define ISQQUICKVIEW( n )                                   Qt5xHb::isObjectDerivedFrom( n, "QQuickView" )
#define ISQQUICKWINDOW( n )                                 Qt5xHb::isObjectDerivedFrom( n, "QQuickWindow" )
#define ISQSGBASICGEOMETRYNODE( n )                         Qt5xHb::isObjectDerivedFrom( n, "QSGBasicGeometryNode" )
#define ISQSGCLIPNODE( n )                                  Qt5xHb::isObjectDerivedFrom( n, "QSGClipNode" )
#define ISQSGDYNAMICTEXTURE( n )                            Qt5xHb::isObjectDerivedFrom( n, "QSGDynamicTexture" )
#define ISQSGFLATCOLORMATERIAL( n )                         Qt5xHb::isObjectDerivedFrom( n, "QSGFlatColorMaterial" )
#define ISQSGGEOMETRY( n )                                  Qt5xHb::isObjectDerivedFrom( n, "QSGGeometry" )
#define ISQSGGEOMETRYNODE( n )                              Qt5xHb::isObjectDerivedFrom( n, "QSGGeometryNode" )
#define ISQSGMATERIAL( n )                                  Qt5xHb::isObjectDerivedFrom( n, "QSGMaterial" )
#define ISQSGMATERIALSHADER( n )                            Qt5xHb::isObjectDerivedFrom( n, "QSGMaterialShader" )
#define ISQSGMATERIALTYPE( n )                              Qt5xHb::isObjectDerivedFrom( n, "QSGMaterialType" )
#define ISQSGNODE( n )                                      Qt5xHb::isObjectDerivedFrom( n, "QSGNode" )
#define ISQSGOPACITYNODE( n )                               Qt5xHb::isObjectDerivedFrom( n, "QSGOpacityNode" )
#define ISQSGSIMPLEMATERIAL( n )                            Qt5xHb::isObjectDerivedFrom( n, "QSGSimpleMaterial" )
#define ISQSGSIMPLEMATERIALSHADER( n )                      Qt5xHb::isObjectDerivedFrom( n, "QSGSimpleMaterialShader" )
#define ISQSGSIMPLETEXTURENODE( n )                         Qt5xHb::isObjectDerivedFrom( n, "QSGSimpleTextureNode" )
#define ISQSGTEXTURE( n )                                   Qt5xHb::isObjectDerivedFrom( n, "QSGTexture" )
#define ISQSGTRANSFORMNODE( n )                             Qt5xHb::isObjectDerivedFrom( n, "QSGTransformNode" )
#define ISQSGVERTEXCOLORMATERIAL( n )                       Qt5xHb::isObjectDerivedFrom( n, "QSGVertexColorMaterial" )

#define PQQUICKIMAGEPROVIDER( n )                           static_cast< QQuickImageProvider * >( Qt5xHb::itemGetPtr( n ) )
#define PQQUICKITEM( n )                                    static_cast< QQuickItem * >( Qt5xHb::itemGetPtr( n ) )
#define PQQUICKPAINTEDITEM( n )                             static_cast< QQuickPaintedItem * >( Qt5xHb::itemGetPtr( n ) )
#define PQQUICKTEXTUREFACTORY( n )                          static_cast< QQuickTextureFactory * >( Qt5xHb::itemGetPtr( n ) )
#define PQQUICKVIEW( n )                                    static_cast< QQuickView * >( Qt5xHb::itemGetPtr( n ) )
#define PQQUICKWINDOW( n )                                  static_cast< QQuickWindow * >( Qt5xHb::itemGetPtr( n ) )
#define PQSGBASICGEOMETRYNODE( n )                          static_cast< QSGBasicGeometryNode * >( Qt5xHb::itemGetPtr( n ) )
#define PQSGCLIPNODE( n )                                   static_cast< QSGClipNode * >( Qt5xHb::itemGetPtr( n ) )
#define PQSGDYNAMICTEXTURE( n )                             static_cast< QSGDynamicTexture * >( Qt5xHb::itemGetPtr( n ) )
#define PQSGFLATCOLORMATERIAL( n )                          static_cast< QSGFlatColorMaterial * >( Qt5xHb::itemGetPtr( n ) )
#define PQSGGEOMETRY( n )                                   static_cast< QSGGeometry * >( Qt5xHb::itemGetPtr( n ) )
#define PQSGGEOMETRYNODE( n )                               static_cast< QSGGeometryNode * >( Qt5xHb::itemGetPtr( n ) )
#define PQSGMATERIAL( n )                                   static_cast< QSGMaterial * >( Qt5xHb::itemGetPtr( n ) )
#define PQSGMATERIALSHADER( n )                             static_cast< QSGMaterialShader * >( Qt5xHb::itemGetPtr( n ) )
#define PQSGMATERIALTYPE( n )                               static_cast< QSGMaterialType * >( Qt5xHb::itemGetPtr( n ) )
#define PQSGNODE( n )                                       static_cast< QSGNode * >( Qt5xHb::itemGetPtr( n ) )
#define PQSGOPACITYNODE( n )                                static_cast< QSGOpacityNode * >( Qt5xHb::itemGetPtr( n ) )
#define PQSGSIMPLEMATERIAL( n )                             static_cast< QSGSimpleMaterial * >( Qt5xHb::itemGetPtr( n ) )
#define PQSGSIMPLEMATERIALSHADER( n )                       static_cast< QSGSimpleMaterialShader * >( Qt5xHb::itemGetPtr( n ) )
#define PQSGSIMPLETEXTURENODE( n )                          static_cast< QSGSimpleTextureNode * >( Qt5xHb::itemGetPtr( n ) )
#define PQSGTEXTURE( n )                                    static_cast< QSGTexture * >( Qt5xHb::itemGetPtr( n ) )
#define PQSGTRANSFORMNODE( n )                              static_cast< QSGTransformNode * >( Qt5xHb::itemGetPtr( n ) )
#define PQSGVERTEXCOLORMATERIAL( n )                        static_cast< QSGVertexColorMaterial * >( Qt5xHb::itemGetPtr( n ) )

#define OPQQUICKIMAGEPROVIDER( n, v )                       HB_ISNIL( n ) ? v : static_cast< QQuickImageProvider * >( Qt5xHb::itemGetPtr( n ) )
#define OPQQUICKITEM( n, v )                                HB_ISNIL( n ) ? v : static_cast< QQuickItem * >( Qt5xHb::itemGetPtr( n ) )
#define OPQQUICKPAINTEDITEM( n, v )                         HB_ISNIL( n ) ? v : static_cast< QQuickPaintedItem * >( Qt5xHb::itemGetPtr( n ) )
#define OPQQUICKTEXTUREFACTORY( n, v )                      HB_ISNIL( n ) ? v : static_cast< QQuickTextureFactory * >( Qt5xHb::itemGetPtr( n ) )
#define OPQQUICKVIEW( n, v )                                HB_ISNIL( n ) ? v : static_cast< QQuickView * >( Qt5xHb::itemGetPtr( n ) )
#define OPQQUICKWINDOW( n, v )                              HB_ISNIL( n ) ? v : static_cast< QQuickWindow * >( Qt5xHb::itemGetPtr( n ) )
#define OPQSGBASICGEOMETRYNODE( n, v )                      HB_ISNIL( n ) ? v : static_cast< QSGBasicGeometryNode * >( Qt5xHb::itemGetPtr( n ) )
#define OPQSGCLIPNODE( n, v )                               HB_ISNIL( n ) ? v : static_cast< QSGClipNode * >( Qt5xHb::itemGetPtr( n ) )
#define OPQSGDYNAMICTEXTURE( n, v )                         HB_ISNIL( n ) ? v : static_cast< QSGDynamicTexture * >( Qt5xHb::itemGetPtr( n ) )
#define OPQSGFLATCOLORMATERIAL( n, v )                      HB_ISNIL( n ) ? v : static_cast< QSGFlatColorMaterial * >( Qt5xHb::itemGetPtr( n ) )
#define OPQSGGEOMETRY( n, v )                               HB_ISNIL( n ) ? v : static_cast< QSGGeometry * >( Qt5xHb::itemGetPtr( n ) )
#define OPQSGGEOMETRYNODE( n, v )                           HB_ISNIL( n ) ? v : static_cast< QSGGeometryNode * >( Qt5xHb::itemGetPtr( n ) )
#define OPQSGMATERIAL( n, v )                               HB_ISNIL( n ) ? v : static_cast< QSGMaterial * >( Qt5xHb::itemGetPtr( n ) )
#define OPQSGMATERIALSHADER( n, v )                         HB_ISNIL( n ) ? v : static_cast< QSGMaterialShader * >( Qt5xHb::itemGetPtr( n ) )
#define OPQSGMATERIALTYPE( n, v )                           HB_ISNIL( n ) ? v : static_cast< QSGMaterialType * >( Qt5xHb::itemGetPtr( n ) )
#define OPQSGNODE( n, v )                                   HB_ISNIL( n ) ? v : static_cast< QSGNode * >( Qt5xHb::itemGetPtr( n ) )
#define OPQSGOPACITYNODE( n, v )                            HB_ISNIL( n ) ? v : static_cast< QSGOpacityNode * >( Qt5xHb::itemGetPtr( n ) )
#define OPQSGSIMPLEMATERIAL( n, v )                         HB_ISNIL( n ) ? v : static_cast< QSGSimpleMaterial * >( Qt5xHb::itemGetPtr( n ) )
#define OPQSGSIMPLEMATERIALSHADER( n, v )                   HB_ISNIL( n ) ? v : static_cast< QSGSimpleMaterialShader * >( Qt5xHb::itemGetPtr( n ) )
#define OPQSGSIMPLETEXTURENODE( n, v )                      HB_ISNIL( n ) ? v : static_cast< QSGSimpleTextureNode * >( Qt5xHb::itemGetPtr( n ) )
#define OPQSGTEXTURE( n, v )                                HB_ISNIL( n ) ? v : static_cast< QSGTexture * >( Qt5xHb::itemGetPtr( n ) )
#define OPQSGTRANSFORMNODE( n, v )                          HB_ISNIL( n ) ? v : static_cast< QSGTransformNode * >( Qt5xHb::itemGetPtr( n ) )
#define OPQSGVERTEXCOLORMATERIAL( n, v )                    HB_ISNIL( n ) ? v : static_cast< QSGVertexColorMaterial * >( Qt5xHb::itemGetPtr( n ) )

#endif /* QT5XHB_MACROS_QTQUICK_H */
