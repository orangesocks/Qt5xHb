/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSCRIPTENGINEAGENT
REQUEST QSCRIPTCONTEXT
REQUEST QSCRIPTVALUE
REQUEST QSCRIPTSTRING
REQUEST QSCRIPTSYNTAXCHECKRESULT
#endif

CLASS QScriptEngine INHERIT QObject

   METHOD new
   METHOD delete
   METHOD abortEvaluation
   METHOD agent
   METHOD availableExtensions
   METHOD clearExceptions
   METHOD collectGarbage
   METHOD currentContext
   METHOD defaultPrototype
   METHOD evaluate
   METHOD globalObject
   METHOD hasUncaughtException
   METHOD importExtension
   METHOD importedExtensions
   METHOD installTranslatorFunctions
   METHOD isEvaluating
   METHOD newArray
   METHOD newDate
   METHOD newObject
   METHOD newQMetaObject
   METHOD newQObject
   METHOD newRegExp
   METHOD newVariant
   METHOD nullValue
   METHOD popContext
   METHOD processEventsInterval
   METHOD pushContext
   METHOD reportAdditionalMemoryCost
   METHOD setAgent
   METHOD setDefaultPrototype
   METHOD setGlobalObject
   METHOD setProcessEventsInterval
   METHOD toObject
   METHOD toStringHandle
   METHOD uncaughtException
   METHOD uncaughtExceptionBacktrace
   METHOD uncaughtExceptionLineNumber
   METHOD undefinedValue
   METHOD checkSyntax

   METHOD onSignalHandlerException

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QScriptEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QScriptEngine>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QScriptEngine>
#endif

#include <QStringList>

/*
QScriptEngine()
*/
void QScriptEngine_new1 ()
{
  QScriptEngine * o = new QScriptEngine ();
  _qt5xhb_returnNewObject( o, false );
}

/*
QScriptEngine(QObject * parent)
*/
void QScriptEngine_new2 ()
{
  QScriptEngine * o = new QScriptEngine ( PQOBJECT(1) );
  _qt5xhb_returnNewObject( o, false );
}

//[1]QScriptEngine()
//[2]QScriptEngine(QObject * parent)

HB_FUNC_STATIC( QSCRIPTENGINE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QScriptEngine_new1();
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QScriptEngine_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSCRIPTENGINE_DELETE )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void abortEvaluation(const QScriptValue & result = QScriptValue())
*/
HB_FUNC_STATIC( QSCRIPTENGINE_ABORTEVALUATION )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && (ISQSCRIPTVALUE(1)||ISNIL(1)) )
    {
      obj->abortEvaluation ( ISNIL(1)? QScriptValue() : *(QScriptValue *) _qt5xhb_itemGetPtr(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QScriptEngineAgent * agent() const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_AGENT )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QScriptEngineAgent * ptr = obj->agent ();
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTENGINEAGENT", false );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QStringList availableExtensions() const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_AVAILABLEEXTENSIONS )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->availableExtensions () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void clearExceptions()
*/
HB_FUNC_STATIC( QSCRIPTENGINE_CLEAREXCEPTIONS )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->clearExceptions ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void collectGarbage()
*/
HB_FUNC_STATIC( QSCRIPTENGINE_COLLECTGARBAGE )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->collectGarbage ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QScriptContext * currentContext() const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_CURRENTCONTEXT )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QScriptContext * ptr = obj->currentContext ();
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTCONTEXT", false );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QScriptValue defaultPrototype(int metaTypeId) const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_DEFAULTPROTOTYPE )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      QScriptValue * ptr = new QScriptValue( obj->defaultPrototype ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QScriptValue evaluate(const QString & program, const QString & fileName = QString(), int lineNumber = 1)
*/
void QScriptEngine_evaluate1 ()
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QScriptValue * ptr = new QScriptValue( obj->evaluate ( PQSTRING(1), OPQSTRING(2,QString()), OPINT(3,1) ) );
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
  }
}

/*
QScriptValue evaluate(const QScriptProgram & program)
*/
void QScriptEngine_evaluate2 ()
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QScriptValue * ptr = new QScriptValue( obj->evaluate ( *PQSCRIPTPROGRAM(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
  }
}

//[1]QScriptValue evaluate(const QString & program, const QString & fileName = QString(), int lineNumber = 1)
//[2]QScriptValue evaluate(const QScriptProgram & program)

HB_FUNC_STATIC( QSCRIPTENGINE_EVALUATE )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && ISOPTCHAR(2) && ISOPTNUM(3) )
  {
    QScriptEngine_evaluate1();
  }
  else if( ISNUMPAR(1) && ISQSCRIPTPROGRAM(1) )
  {
    QScriptEngine_evaluate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QScriptValue globalObject() const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_GLOBALOBJECT )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QScriptValue * ptr = new QScriptValue( obj->globalObject () );
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool hasUncaughtException() const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_HASUNCAUGHTEXCEPTION )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->hasUncaughtException () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QScriptValue importExtension(const QString & extension)
*/
HB_FUNC_STATIC( QSCRIPTENGINE_IMPORTEXTENSION )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      QScriptValue * ptr = new QScriptValue( obj->importExtension ( PQSTRING(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QStringList importedExtensions() const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_IMPORTEDEXTENSIONS )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->importedExtensions () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void installTranslatorFunctions(const QScriptValue & object = QScriptValue())
*/
HB_FUNC_STATIC( QSCRIPTENGINE_INSTALLTRANSLATORFUNCTIONS )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && (ISQSCRIPTVALUE(1)||ISNIL(1)) )
    {
      obj->installTranslatorFunctions ( ISNIL(1)? QScriptValue() : *(QScriptValue *) _qt5xhb_itemGetPtr(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isEvaluating() const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_ISEVALUATING )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isEvaluating () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QScriptValue newArray(uint length = 0)
*/
HB_FUNC_STATIC( QSCRIPTENGINE_NEWARRAY )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
      QScriptValue * ptr = new QScriptValue( obj->newArray ( OPUINT(1,0) ) );
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QScriptValue newDate(const QDateTime & value)
*/
HB_FUNC_STATIC( QSCRIPTENGINE_NEWDATE )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQDATETIME(1) )
    {
      QScriptValue * ptr = new QScriptValue( obj->newDate ( *PQDATETIME(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QScriptValue newObject()
*/
void QScriptEngine_newObject1 ()
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QScriptValue * ptr = new QScriptValue( obj->newObject () );
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
  }
}

/*
QScriptValue newObject(QScriptClass * scriptClass, const QScriptValue & data = QScriptValue())
*/
void QScriptEngine_newObject2 ()
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QScriptValue * ptr = new QScriptValue( obj->newObject ( PQSCRIPTCLASS(1), ISNIL(2)? QScriptValue() : *(QScriptValue *) _qt5xhb_itemGetPtr(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
  }
}

//[1]QScriptValue newObject()
//[2]QScriptValue newObject(QScriptClass * scriptClass, const QScriptValue & data = QScriptValue())

HB_FUNC_STATIC( QSCRIPTENGINE_NEWOBJECT )
{
  if( ISNUMPAR(0) )
  {
    QScriptEngine_newObject1();
  }
  else if( ISBETWEEN(1,2) && ISQSCRIPTCLASS(1) && (ISQSCRIPTVALUE(2)||ISNIL(2))  )
  {
    QScriptEngine_newObject2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QScriptValue newQMetaObject(const QMetaObject * metaObject, const QScriptValue & ctor = QScriptValue())
*/
HB_FUNC_STATIC( QSCRIPTENGINE_NEWQMETAOBJECT )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISQMETAOBJECT(1) && (ISQSCRIPTVALUE(2)||ISNIL(2)) )
    {
      QScriptValue * ptr = new QScriptValue( obj->newQMetaObject ( PQMETAOBJECT(1), ISNIL(2)? QScriptValue() : *(QScriptValue *) _qt5xhb_itemGetPtr(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QScriptValue newQObject(QObject * object, ValueOwnership ownership = QtOwnership, const QObjectWrapOptions & options = 0)
*/
void QScriptEngine_newQObject1 ()
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QScriptValue * ptr = new QScriptValue( obj->newQObject ( PQOBJECT(1), ISNIL(2)? (QScriptEngine::ValueOwnership) QScriptEngine::QtOwnership : (QScriptEngine::ValueOwnership) hb_parni(2), ISNIL(3)? (QScriptEngine::QObjectWrapOptions) 0 : (QScriptEngine::QObjectWrapOptions) hb_parni(3) ) );
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
  }
}

/*
QScriptValue newQObject(const QScriptValue & scriptObject, QObject * qtObject, ValueOwnership ownership = QtOwnership, const QObjectWrapOptions & options = 0)
*/
void QScriptEngine_newQObject2 ()
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QScriptValue * ptr = new QScriptValue( obj->newQObject ( *PQSCRIPTVALUE(1), PQOBJECT(2), ISNIL(3)? (QScriptEngine::ValueOwnership) QScriptEngine::QtOwnership : (QScriptEngine::ValueOwnership) hb_parni(3), ISNIL(4)? (QScriptEngine::QObjectWrapOptions) 0 : (QScriptEngine::QObjectWrapOptions) hb_parni(4) ) );
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
  }
}

//[1]QScriptValue newQObject(QObject * object, ValueOwnership ownership = QtOwnership, const QObjectWrapOptions & options = 0)
//[2]QScriptValue newQObject(const QScriptValue & scriptObject, QObject * qtObject, ValueOwnership ownership = QtOwnership, const QObjectWrapOptions & options = 0)

HB_FUNC_STATIC( QSCRIPTENGINE_NEWQOBJECT )
{
  if( ISBETWEEN(1,3) && ISQOBJECT(1) && ISOPTNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    QScriptEngine_newQObject1();
  }
  else if( ISBETWEEN(2,4) && ISQSCRIPTVALUE(1) && ISQOBJECT(2) && ISOPTNUM(3) && (ISNUM(4)||ISNIL(4)) )
  {
    QScriptEngine_newQObject2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QScriptValue newRegExp(const QRegExp & regexp)
*/
void QScriptEngine_newRegExp1 ()
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QScriptValue * ptr = new QScriptValue( obj->newRegExp ( *PQREGEXP(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
  }
}

/*
QScriptValue newRegExp(const QString & pattern, const QString & flags)
*/
void QScriptEngine_newRegExp2 ()
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QScriptValue * ptr = new QScriptValue( obj->newRegExp ( PQSTRING(1), PQSTRING(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
  }
}

//[1]QScriptValue newRegExp(const QRegExp & regexp)
//[2]QScriptValue newRegExp(const QString & pattern, const QString & flags)

HB_FUNC_STATIC( QSCRIPTENGINE_NEWREGEXP )
{
  if( ISNUMPAR(1) && ISQREGEXP(1) )
  {
    QScriptEngine_newRegExp1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QScriptEngine_newRegExp2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QScriptValue newVariant(const QVariant & value)
*/
void QScriptEngine_newVariant1 ()
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QScriptValue * ptr = new QScriptValue( obj->newVariant ( *PQVARIANT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
  }
}

/*
QScriptValue newVariant(const QScriptValue & object, const QVariant & value)
*/
void QScriptEngine_newVariant2 ()
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QScriptValue * ptr = new QScriptValue( obj->newVariant ( *PQSCRIPTVALUE(1), *PQVARIANT(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
  }
}

//[1]QScriptValue newVariant(const QVariant & value)
//[2]QScriptValue newVariant(const QScriptValue & object, const QVariant & value)

HB_FUNC_STATIC( QSCRIPTENGINE_NEWVARIANT )
{
  if( ISNUMPAR(1) && ISQVARIANT(1) )
  {
    QScriptEngine_newVariant1();
  }
  else if( ISNUMPAR(2) && ISQSCRIPTVALUE(1) && ISQVARIANT(2) )
  {
    QScriptEngine_newVariant2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QScriptValue nullValue()
*/
HB_FUNC_STATIC( QSCRIPTENGINE_NULLVALUE )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QScriptValue * ptr = new QScriptValue( obj->nullValue () );
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void popContext()
*/
HB_FUNC_STATIC( QSCRIPTENGINE_POPCONTEXT )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->popContext ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int processEventsInterval() const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_PROCESSEVENTSINTERVAL )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->processEventsInterval () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QScriptContext * pushContext()
*/
HB_FUNC_STATIC( QSCRIPTENGINE_PUSHCONTEXT )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QScriptContext * ptr = obj->pushContext ();
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTCONTEXT", false );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void reportAdditionalMemoryCost(int size)
*/
HB_FUNC_STATIC( QSCRIPTENGINE_REPORTADDITIONALMEMORYCOST )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->reportAdditionalMemoryCost ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAgent(QScriptEngineAgent * agent)
*/
HB_FUNC_STATIC( QSCRIPTENGINE_SETAGENT )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQSCRIPTENGINEAGENT(1) )
    {
      obj->setAgent ( PQSCRIPTENGINEAGENT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDefaultPrototype(int metaTypeId, const QScriptValue & prototype)
*/
HB_FUNC_STATIC( QSCRIPTENGINE_SETDEFAULTPROTOTYPE )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISQSCRIPTVALUE(2) )
    {
      obj->setDefaultPrototype ( PINT(1), *PQSCRIPTVALUE(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setGlobalObject(const QScriptValue & object)
*/
HB_FUNC_STATIC( QSCRIPTENGINE_SETGLOBALOBJECT )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQSCRIPTVALUE(1) )
    {
      obj->setGlobalObject ( *PQSCRIPTVALUE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setProcessEventsInterval(int interval)
*/
HB_FUNC_STATIC( QSCRIPTENGINE_SETPROCESSEVENTSINTERVAL )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setProcessEventsInterval ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QScriptValue toObject(const QScriptValue & value)
*/
HB_FUNC_STATIC( QSCRIPTENGINE_TOOBJECT )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQSCRIPTVALUE(1) )
    {
      QScriptValue * ptr = new QScriptValue( obj->toObject ( *PQSCRIPTVALUE(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QScriptString toStringHandle(const QString & str)
*/
HB_FUNC_STATIC( QSCRIPTENGINE_TOSTRINGHANDLE )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      QScriptString * ptr = new QScriptString( obj->toStringHandle ( PQSTRING(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTSTRING", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QScriptValue uncaughtException() const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_UNCAUGHTEXCEPTION )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QScriptValue * ptr = new QScriptValue( obj->uncaughtException () );
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QStringList uncaughtExceptionBacktrace() const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_UNCAUGHTEXCEPTIONBACKTRACE )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->uncaughtExceptionBacktrace () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int uncaughtExceptionLineNumber() const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_UNCAUGHTEXCEPTIONLINENUMBER )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->uncaughtExceptionLineNumber () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QScriptValue undefinedValue()
*/
HB_FUNC_STATIC( QSCRIPTENGINE_UNDEFINEDVALUE )
{
  QScriptEngine * obj = (QScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QScriptValue * ptr = new QScriptValue( obj->undefinedValue () );
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
static QScriptSyntaxCheckResult checkSyntax(const QString & program)
*/
HB_FUNC_STATIC( QSCRIPTENGINE_CHECKSYNTAX )
{
    if( ISNUMPAR(1) && ISCHAR(1) )
  {
      QScriptSyntaxCheckResult * ptr = new QScriptSyntaxCheckResult( QScriptEngine::checkSyntax ( PQSTRING(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTSYNTAXCHECKRESULT", true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

void QScriptEngineSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QSCRIPTENGINE_ONSIGNALHANDLEREXCEPTION )
{
  QScriptEngineSlots_connect_signal( "signalHandlerException(QScriptValue)", "signalHandlerException(QScriptValue)" );
}

#pragma ENDDUMP
