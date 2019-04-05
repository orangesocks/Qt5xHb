/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QANDROIDJNIOBJECT
#endif

CLASS QtAndroid

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD androidActivity
   METHOD androidSdkVersion
   METHOD startIntentSender
   METHOD startActivity
   METHOD androidService
   METHOD androidContext
   METHOD bindService
   METHOD hideSplashScreen
   METHOD checkPermission
   METHOD shouldShowRequestPermissionRationale

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QtAndroid
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#include <QtAndroidExtras/QtAndroid>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#include <QtAndroidExtras/QtAndroid>
#endif
#endif

/*
static QAndroidJniObject androidActivity()
*/
HB_FUNC_STATIC( QTANDROID_ANDROIDACTIVITY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
  {
#endif
      QAndroidJniObject * ptr = new QAndroidJniObject( QtAndroid::androidActivity () );
      _qt5xhb_createReturnClass ( ptr, "QANDROIDJNIOBJECT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
#endif
}

/*
static int androidSdkVersion()
*/
HB_FUNC_STATIC( QTANDROID_ANDROIDSDKVERSION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
  {
#endif
      RINT( QtAndroid::androidSdkVersion () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
#endif
}

/*
static void startIntentSender(const QAndroidJniObject &intentSender, int receiverRequestCode, QAndroidActivityResultReceiver *resultReceiver = nullptr)
*/
HB_FUNC_STATIC( QTANDROID_STARTINTENTSENDER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISQANDROIDJNIOBJECT(1) && ISNUM(2) && (ISQANDROIDACTIVITYRESULTRECEIVER(3)||ISNIL(3)) )
  {
#endif
      QtAndroid::startIntentSender ( *PQANDROIDJNIOBJECT(1), PINT(2), ISNIL(3)? 0 : (QAndroidActivityResultReceiver *) _qt5xhb_itemGetPtr(3) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
static void startActivity(const QAndroidJniObject &intent, int receiverRequestCode, QAndroidActivityResultReceiver *resultReceiver = nullptr)
*/
HB_FUNC_STATIC( QTANDROID_STARTACTIVITY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISQANDROIDJNIOBJECT(1) && ISNUM(2) && (ISQANDROIDACTIVITYRESULTRECEIVER(3)||ISNIL(3)) )
  {
#endif
      QtAndroid::startActivity ( *PQANDROIDJNIOBJECT(1), PINT(2), ISNIL(3)? 0 : (QAndroidActivityResultReceiver *) _qt5xhb_itemGetPtr(3) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
static QAndroidJniObject androidService()
*/
HB_FUNC_STATIC( QTANDROID_ANDROIDSERVICE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
  {
#endif
      QAndroidJniObject * ptr = new QAndroidJniObject( QtAndroid::androidService () );
      _qt5xhb_createReturnClass ( ptr, "QANDROIDJNIOBJECT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
#endif
}

/*
static QAndroidJniObject androidContext()
*/
HB_FUNC_STATIC( QTANDROID_ANDROIDCONTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
  {
#endif
      QAndroidJniObject * ptr = new QAndroidJniObject( QtAndroid::androidContext () );
      _qt5xhb_createReturnClass ( ptr, "QANDROIDJNIOBJECT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
#endif
}

/*
static bool bindService(const QAndroidIntent &serviceIntent, const QAndroidServiceConnection &serviceConnection, BindFlags flags = BindFlag::None)
*/
HB_FUNC_STATIC( QTANDROID_BINDSERVICE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISQANDROIDINTENT(1) && ISQANDROIDSERVICECONNECTION(2) && ISOPTNUM(3) )
  {
#endif
      RBOOL( QtAndroid::bindService ( *PQANDROIDINTENT(1), *PQANDROIDSERVICECONNECTION(2), ISNIL(3)? (QtAndroid::BindFlags) QtAndroid::BindFlag::None : (QtAndroid::BindFlags) hb_parni(3) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
#endif
}

/*
static void runOnAndroidThread(const Runnable &runnable)
*/

/*
static void runOnAndroidThreadSync(const Runnable &runnable, int timeoutMs = INT_MAX)
*/

/*
static void hideSplashScreen()
*/
void QtAndroid_hideSplashScreen1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))

      QtAndroid::hideSplashScreen ();

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
static void hideSplashScreen(int duration)
*/
void QtAndroid_hideSplashScreen2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))

      QtAndroid::hideSplashScreen ( PINT(1) );

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

//[1]static void hideSplashScreen()
//[2]static void hideSplashScreen(int duration)

HB_FUNC_STATIC( QTANDROID_HIDESPLASHSCREEN )
{
  if( ISNUMPAR(0) )
  {
    QtAndroid_hideSplashScreen1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QtAndroid_hideSplashScreen2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void requestPermissions(const QStringList &permissions, const PermissionResultCallback &callbackFunc)
*/

/*
static PermissionResultMap requestPermissionsSync(const QStringList &permissions, int timeoutMs = INT_MAX)
*/

/*
static PermissionResult checkPermission(const QString &permission)
*/
HB_FUNC_STATIC( QTANDROID_CHECKPERMISSION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
  {
#endif
      RENUM( QtAndroid::checkPermission ( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
#endif
}

/*
static bool shouldShowRequestPermissionRationale(const QString &permission)
*/
HB_FUNC_STATIC( QTANDROID_SHOULDSHOWREQUESTPERMISSIONRATIONALE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
  {
#endif
      RBOOL( QtAndroid::shouldShowRequestPermissionRationale ( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
#endif
}

HB_FUNC_STATIC( QTANDROID_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QTANDROID_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTANDROID_NEWFROM );
}

HB_FUNC_STATIC( QTANDROID_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTANDROID_NEWFROM );
}

HB_FUNC_STATIC( QTANDROID_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTANDROID_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
