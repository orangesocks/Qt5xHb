%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

/*
enum QVariant::Type
*/
#define QVariant_Invalid                                             QMetaType_UnknownType
#define QVariant_Bool                                                QMetaType_Bool
#define QVariant_Int                                                 QMetaType_Int
#define QVariant_UInt                                                QMetaType_UInt
#define QVariant_LongLong                                            QMetaType_LongLong
#define QVariant_ULongLong                                           QMetaType_ULongLong
#define QVariant_Double                                              QMetaType_Double
#define QVariant_Char                                                QMetaType_QChar
#define QVariant_Map                                                 QMetaType_QVariantMap
#define QVariant_List                                                QMetaType_QVariantList
#define QVariant_String                                              QMetaType_QString
#define QVariant_StringList                                          QMetaType_QStringList
#define QVariant_ByteArray                                           QMetaType_QByteArray
#define QVariant_BitArray                                            QMetaType_QBitArray
#define QVariant_Date                                                QMetaType_QDate
#define QVariant_Time                                                QMetaType_QTime
#define QVariant_DateTime                                            QMetaType_QDateTime
#define QVariant_Url                                                 QMetaType_QUrl
#define QVariant_Locale                                              QMetaType_QLocale
#define QVariant_Rect                                                QMetaType_QRect
#define QVariant_RectF                                               QMetaType_QRectF
#define QVariant_Size                                                QMetaType_QSize
#define QVariant_SizeF                                               QMetaType_QSizeF
#define QVariant_Line                                                QMetaType_QLine
#define QVariant_LineF                                               QMetaType_QLineF
#define QVariant_Point                                               QMetaType_QPoint
#define QVariant_PointF                                              QMetaType_QPointF
#define QVariant_RegExp                                              QMetaType_QRegExp
#define QVariant_RegularExpression                                   QMetaType_QRegularExpression
#define QVariant_Hash                                                QMetaType_QVariantHash
#define QVariant_EasingCurve                                         QMetaType_QEasingCurve
#define QVariant_Uuid                                                QMetaType_QUuid
#define QVariant_ModelIndex                                          QMetaType_QModelIndex
#define QVariant_LastCoreType                                        QMetaType_LastCoreType
#define QVariant_Font                                                QMetaType_QFont
#define QVariant_Pixmap                                              QMetaType_QPixmap
#define QVariant_Brush                                               QMetaType_QBrush
#define QVariant_Color                                               QMetaType_QColor
#define QVariant_Palette                                             QMetaType_QPalette
#define QVariant_Image                                               QMetaType_QImage
#define QVariant_Polygon                                             QMetaType_QPolygon
#define QVariant_Region                                              QMetaType_QRegion
#define QVariant_Bitmap                                              QMetaType_QBitmap
#define QVariant_Cursor                                              QMetaType_QCursor
#define QVariant_KeySequence                                         QMetaType_QKeySequence
#define QVariant_Pen                                                 QMetaType_QPen
#define QVariant_TextLength                                          QMetaType_QTextLength
#define QVariant_TextFormat                                          QMetaType_QTextFormat
#define QVariant_Matrix                                              QMetaType_QMatrix
#define QVariant_Transform                                           QMetaType_QTransform
#define QVariant_Matrix4x4                                           QMetaType_QMatrix4x4
#define QVariant_Vector2D                                            QMetaType_QVector2D
#define QVariant_Vector3D                                            QMetaType_QVector3D
#define QVariant_Vector4D                                            QMetaType_QVector4D
#define QVariant_Quaternion                                          QMetaType_QQuaternion
#define QVariant_PolygonF                                            QMetaType_QPolygonF
#define QVariant_Icon                                                QMetaType_QIcon
#define QVariant_LastGuiType                                         QMetaType_LastGuiType
#define QVariant_SizePolicy                                          QMetaType_QSizePolicy
#define QVariant_UserType                                            QMetaType_User
#define QVariant_LastType                                            0xffffffff
