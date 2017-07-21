$header

#include "hbclass.ch"

CLASS QAndroidJniObject

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD callObjectMethod
   METHOD getObjectField
   METHOD toString
   METHOD isValid
   METHOD callStaticObjectMethod
   METHOD getStaticObjectField
   METHOD fromString
   METHOD isClassAvailable

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

/*
QAndroidJniObject()
*/
$internalConstructor=5,2,0|new1|

/*
QAndroidJniObject(const char *className)
*/
$internalConstructor=5,2,0|new2|const char *

// TODO: revisar e implementar(?) construtores
//[1]QAndroidJniObject()
//[2]QAndroidJniObject(const char *className)
//[3]QAndroidJniObject(const char *className, const char *sig, ...)
//[4]QAndroidJniObject(jclass clazz)
//[5]QAndroidJniObject(jclass clazz, const char *sig, ...)
//[6]QAndroidJniObject(jobject obj)

HB_FUNC_STATIC( QANDROIDJNIOBJECT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QAndroidJniObject_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QAndroidJniObject_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

/*
QAndroidJniObject callObjectMethod(const char *methodName) const
*/
$internalMethod=5,2,0|QAndroidJniObject|callObjectMethod,callObjectMethod1|const char *

// TODO: revisar e implementar(?) caso [2]
//[1]QAndroidJniObject callObjectMethod(const char *methodName) const
//[2]QAndroidJniObject callObjectMethod(const char *methodName, const char *sig, ...) const

HB_FUNC_STATIC( QANDROIDJNIOBJECT_CALLOBJECTMETHOD )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QAndroidJniObject_callObjectMethod1();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAndroidJniObject getObjectField(const char *fieldName) const
*/
$method=5,2,0|QAndroidJniObject|getObjectField|const char *

/*
QString toString() const
*/
$method=5,2,0|QString|toString|

/*
bool isValid() const
*/
$method=5,2,0|bool|isValid|

/*
static QAndroidJniObject callStaticObjectMethod(const char *className, const char *methodName)
*/
$staticMethod=5,2,0|QAndroidJniObject|callStaticObjectMethod,callStaticObjectMethod1|const char *,const char *

// TODO: revisar e implementar(?) metodos
//[1]static QAndroidJniObject callStaticObjectMethod(const char *className, const char *methodName)
//[2]static QAndroidJniObject callStaticObjectMethod(const char *className, const char *methodName, const char *sig, ...)
//[3]static QAndroidJniObject callStaticObjectMethod(jclass clazz, const char *methodName)
//[4]static QAndroidJniObject callStaticObjectMethod(jclass clazz, const char *methodName, const char *sig, ...)

HB_FUNC_STATIC( QANDROIDJNIOBJECT_CALLSTATICOBJECTMETHOD )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QAndroidJniObject_callStaticObjectMethod1();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QAndroidJniObject getStaticObjectField(const char *className, const char *fieldName)
*/
$staticMethod=5,2,0|QAndroidJniObject|getStaticObjectField,getStaticObjectField1|const char *,const char *

/*
static QAndroidJniObject getStaticObjectField(const char *className, const char *fieldName, const char *sig)
*/
$staticMethod=5,2,0|QAndroidJniObject|getStaticObjectField,getStaticObjectField2|const char *,const char *,const char *

// TODO: revisar e implementar(?) metodos [3] e [4]
//[1]static QAndroidJniObject getStaticObjectField(const char *className, const char *fieldName)
//[2]static QAndroidJniObject getStaticObjectField(const char *className, const char *fieldName, const char *sig)
//[3]static QAndroidJniObject getStaticObjectField(jclass clazz, const char *fieldName)
//[4]static QAndroidJniObject getStaticObjectField(jclass clazz, const char *fieldName, const char *sig)

HB_FUNC_STATIC( QANDROIDJNIOBJECT_GETSTATICOBJECTFIELD )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QAndroidJniObject_getStaticObjectField1();
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
  {
    QAndroidJniObject_getStaticObjectField2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QAndroidJniObject fromString(const QString &string)
*/
$staticMethod=5,2,0|QAndroidJniObject|fromString|const QString &

/*
static bool isClassAvailable(const char *className)
*/
$staticMethod=5,2,0|bool|isClassAvailable|const char *

$extraMethods

#pragma ENDDUMP