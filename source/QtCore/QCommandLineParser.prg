/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOMMANDLINEOPTION
#endif

CLASS QCommandLineParser

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setSingleDashWordOptionMode
   METHOD addOption
   METHOD addVersionOption
   METHOD addHelpOption
   METHOD setApplicationDescription
   METHOD applicationDescription
   METHOD addPositionalArgument
   METHOD clearPositionalArguments
   METHOD process
   METHOD parse
   METHOD errorText
   METHOD isSet
   METHOD value
   METHOD values
   METHOD positionalArguments
   METHOD optionNames
   METHOD unknownOptionNames
   METHOD showHelp
   METHOD helpText

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCommandLineParser
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QCommandLineParser>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QCommandLineParser>
#endif
#endif

/*
QCommandLineParser()
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( ISNUMPAR(0) )
  {
    QCommandLineParser * o = new QCommandLineParser ();
    _qt5xhb_returnNewObject( o, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QCOMMANDLINEPARSER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
void setSingleDashWordOptionMode(SingleDashWordOptionMode parsingMode)
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_SETSINGLEDASHWORDOPTIONMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setSingleDashWordOptionMode ( (QCommandLineParser::SingleDashWordOptionMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool addOption(const QCommandLineOption &commandLineOption)
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_ADDOPTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQCOMMANDLINEOPTION(1) )
    {
      RBOOL( obj->addOption ( *PQCOMMANDLINEOPTION(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QCommandLineOption addVersionOption()
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_ADDVERSIONOPTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QCommandLineOption * ptr = new QCommandLineOption( obj->addVersionOption () );
      _qt5xhb_createReturnClass ( ptr, "QCOMMANDLINEOPTION", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QCommandLineOption addHelpOption()
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_ADDHELPOPTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QCommandLineOption * ptr = new QCommandLineOption( obj->addHelpOption () );
      _qt5xhb_createReturnClass ( ptr, "QCOMMANDLINEOPTION", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setApplicationDescription(const QString &description)
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_SETAPPLICATIONDESCRIPTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setApplicationDescription ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QString applicationDescription() const
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_APPLICATIONDESCRIPTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->applicationDescription () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void addPositionalArgument(const QString &name, const QString &description, const QString &syntax = QString())
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_ADDPOSITIONALARGUMENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(2,3) && ISCHAR(1) && ISCHAR(2) && ISOPTCHAR(3) )
    {
      obj->addPositionalArgument ( PQSTRING(1), PQSTRING(2), OPQSTRING(3,QString()) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void clearPositionalArguments()
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_CLEARPOSITIONALARGUMENTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->clearPositionalArguments ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void process(const QStringList &arguments)
*/
void QCommandLineParser_process1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->process ( PQSTRINGLIST(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void process(const QCoreApplication &app)
*/
void QCommandLineParser_process2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->process ( *PQCOREAPPLICATION(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

//[1]void process(const QStringList &arguments)
//[2]void process(const QCoreApplication &app)

HB_FUNC_STATIC( QCOMMANDLINEPARSER_PROCESS )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QCommandLineParser_process1();
  }
  else if( ISNUMPAR(1) && ISQCOREAPPLICATION(1) )
  {
    QCommandLineParser_process2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool parse(const QStringList &arguments)
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_PARSE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
      RBOOL( obj->parse ( PQSTRINGLIST(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QString errorText() const
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_ERRORTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->errorText () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
bool isSet(const QString &name) const
*/
void QCommandLineParser_isSet1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RBOOL( obj->isSet ( PQSTRING(1) ) );
  }
#endif
}

/*
bool isSet(const QCommandLineOption &option) const
*/
void QCommandLineParser_isSet2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RBOOL( obj->isSet ( *PQCOMMANDLINEOPTION(1) ) );
  }
#endif
}

//[1]bool isSet(const QString &name) const
//[2]bool isSet(const QCommandLineOption &option) const

HB_FUNC_STATIC( QCOMMANDLINEPARSER_ISSET )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QCommandLineParser_isSet1();
  }
  else if( ISNUMPAR(1) && ISQCOMMANDLINEOPTION(1) )
  {
    QCommandLineParser_isSet2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString value(const QString &name) const
*/
void QCommandLineParser_value1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RQSTRING( obj->value ( PQSTRING(1) ) );
  }
#endif
}

/*
QString value(const QCommandLineOption &option) const
*/
void QCommandLineParser_value2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RQSTRING( obj->value ( *PQCOMMANDLINEOPTION(1) ) );
  }
#endif
}

//[1]QString value(const QString &name) const
//[2]QString value(const QCommandLineOption &option) const

HB_FUNC_STATIC( QCOMMANDLINEPARSER_VALUE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QCommandLineParser_value1();
  }
  else if( ISNUMPAR(1) && ISQCOMMANDLINEOPTION(1) )
  {
    QCommandLineParser_value2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QStringList values(const QString &name) const
*/
void QCommandLineParser_values1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RQSTRINGLIST( obj->values ( PQSTRING(1) ) );
  }
#endif
}

/*
QStringList values(const QCommandLineOption &option) const
*/
void QCommandLineParser_values2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RQSTRINGLIST( obj->values ( *PQCOMMANDLINEOPTION(1) ) );
  }
#endif
}

//[1]QStringList values(const QString &name) const
//[2]QStringList values(const QCommandLineOption &option) const

HB_FUNC_STATIC( QCOMMANDLINEPARSER_VALUES )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QCommandLineParser_values1();
  }
  else if( ISNUMPAR(1) && ISQCOMMANDLINEOPTION(1) )
  {
    QCommandLineParser_values2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QStringList positionalArguments() const
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_POSITIONALARGUMENTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->positionalArguments () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QStringList optionNames() const
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_OPTIONNAMES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->optionNames () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QStringList unknownOptionNames() const
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_UNKNOWNOPTIONNAMES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->unknownOptionNames () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
Q_NORETURN void showHelp(int exitCode = 0)
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_SHOWHELP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
      obj->showHelp ( OPINT(1,0) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QString helpText() const
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_HELPTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->helpText () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

HB_FUNC_STATIC( QCOMMANDLINEPARSER_NEWFROM )
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

HB_FUNC_STATIC( QCOMMANDLINEPARSER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QCOMMANDLINEPARSER_NEWFROM );
}

HB_FUNC_STATIC( QCOMMANDLINEPARSER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QCOMMANDLINEPARSER_NEWFROM );
}

HB_FUNC_STATIC( QCOMMANDLINEPARSER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QCOMMANDLINEPARSER_SETSELFDESTRUCTION )
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
