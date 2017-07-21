$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPROCESSENVIRONMENT
REQUEST QBYTEARRAY
#endif

CLASS QProcess INHERIT QIODevice

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD closeReadChannel
   METHOD closeWriteChannel
   METHOD environment
   METHOD error
   METHOD exitCode
   METHOD exitStatus
   METHOD nativeArguments
   METHOD processChannelMode
   METHOD processEnvironment
   METHOD readAllStandardError
   METHOD readAllStandardOutput
   METHOD readChannel
   METHOD setEnvironment
   METHOD setNativeArguments
   METHOD setProcessChannelMode
   METHOD setProcessEnvironment
   METHOD setReadChannel
   METHOD setStandardErrorFile
   METHOD setStandardInputFile
   METHOD setStandardOutputFile
   METHOD setStandardOutputProcess
   METHOD setWorkingDirectory
   METHOD start
   METHOD state
   METHOD waitForFinished
   METHOD waitForStarted
   METHOD workingDirectory
   METHOD atEnd
   METHOD bytesAvailable
   METHOD bytesToWrite
   METHOD canReadLine
   METHOD close
   METHOD isSequential
   METHOD waitForBytesWritten
   METHOD waitForReadyRead
   METHOD kill
   METHOD terminate
   METHOD execute
   METHOD startDetached
   METHOD systemEnvironment
   METHOD open
   METHOD program
   METHOD setProgram
   METHOD arguments
   METHOD setArguments
   METHOD readChannelMode
   METHOD setReadChannelMode
   METHOD inputChannelMode
   METHOD setInputChannelMode
   METHOD processId
   METHOD nullDevice

   METHOD onError
   METHOD onFinished
   METHOD onReadyReadStandardError
   METHOD onReadyReadStandardOutput
   METHOD onStarted
   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
explicit QProcess ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QPROCESS_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QProcess * o = new QProcess ( OPQOBJECT(1,0) );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void closeReadChannel ( ProcessChannel channel )
*/
$method=|void|closeReadChannel|QProcess::ProcessChannel

/*
void closeWriteChannel ()
*/
$method=|void|closeWriteChannel|

/*
QStringList environment () const
*/
$method=|QStringList|environment|

/*
QProcess::ProcessError error () const
*/
$method=|QProcess::ProcessError|error|

/*
int exitCode () const
*/
$method=|int|exitCode|

/*
QProcess::ExitStatus exitStatus () const
*/
$method=|QProcess::ExitStatus|exitStatus|

/*
QString nativeArguments () const
*/
HB_FUNC_STATIC( QPROCESS_NATIVEARGUMENTS )
{
#if defined(Q_OS_WIN)
  QProcess * obj = (QProcess *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->nativeArguments () );
  }
#endif
}

/*
ProcessChannelMode processChannelMode () const
*/
$method=|QProcess::ProcessChannelMode|processChannelMode|

/*
QProcessEnvironment processEnvironment () const
*/
HB_FUNC_STATIC( QPROCESS_PROCESSENVIRONMENT )
{
  QProcess * obj = (QProcess *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QProcessEnvironment * ptr = new QProcessEnvironment( obj->processEnvironment () );
    _qt5xhb_createReturnClass ( ptr, "QPROCESSENVIRONMENT", true );
  }
}

/*
QByteArray readAllStandardError ()
*/
HB_FUNC_STATIC( QPROCESS_READALLSTANDARDERROR )
{
  QProcess * obj = (QProcess *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->readAllStandardError () );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
QByteArray readAllStandardOutput ()
*/
HB_FUNC_STATIC( QPROCESS_READALLSTANDARDOUTPUT )
{
  QProcess * obj = (QProcess *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->readAllStandardOutput () );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
ProcessChannel readChannel () const
*/
$method=|QProcess::ProcessChannel|readChannel|

/*
void setEnvironment ( const QStringList & environment )
*/
$method=|void|setEnvironment|const QStringList &

/*
void setNativeArguments ( const QString & arguments )
*/
HB_FUNC_STATIC( QPROCESS_SETNATIVEARGUMENTS )
{
#if defined(Q_OS_WIN)
  QProcess * obj = (QProcess *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setNativeArguments ( PQSTRING(1) );
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
void setProcessChannelMode ( ProcessChannelMode mode )
*/
$method=|void|setProcessChannelMode|QProcess::ProcessChannelMode

/*
void setProcessEnvironment ( const QProcessEnvironment & environment )
*/
$method=|void|setProcessEnvironment|const QProcessEnvironment &

/*
void setReadChannel ( ProcessChannel channel )
*/
$method=|void|setReadChannel|QProcess::ProcessChannel

/*
void setStandardErrorFile ( const QString & fileName, OpenMode mode = Truncate )
*/
HB_FUNC_STATIC( QPROCESS_SETSTANDARDERRORFILE )
{
  QProcess * obj = (QProcess *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISOPTNUM(2) )
    {
      int par2 = ISNIL(2)? (int) QIODevice::Truncate : hb_parni(2);
      obj->setStandardErrorFile ( PQSTRING(1), (QIODevice::OpenMode) par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStandardInputFile ( const QString & fileName )
*/
$method=|void|setStandardInputFile|const QString &

/*
void setStandardOutputFile ( const QString & fileName, OpenMode mode = Truncate )
*/
HB_FUNC_STATIC( QPROCESS_SETSTANDARDOUTPUTFILE )
{
  QProcess * obj = (QProcess *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISOPTNUM(2) )
    {
      int par2 = ISNIL(2)? (int) QIODevice::Truncate : hb_parni(2);
      obj->setStandardOutputFile ( PQSTRING(1), (QIODevice::OpenMode) par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStandardOutputProcess ( QProcess * destination )
*/
$method=|void|setStandardOutputProcess|QProcess *

/*
void setWorkingDirectory ( const QString & dir )
*/
$method=|void|setWorkingDirectory|const QString &

/*
void start(const QString &program, const QStringList &arguments, OpenMode mode = ReadWrite)
*/
void QProcess_start1 ()
{
  QProcess * obj = (QProcess *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par3 = ISNIL(3)? (int) QIODevice::ReadWrite : hb_parni(3);
    obj->start ( PQSTRING(1), PQSTRINGLIST(2), (QIODevice::OpenMode) par3 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void start(const QString &command, OpenMode mode = ReadWrite)
*/
void QProcess_start2 ()
{
  QProcess * obj = (QProcess *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par2 = ISNIL(2)? (int) QIODevice::ReadWrite : hb_parni(2);
    obj->start ( PQSTRING(1), (QIODevice::OpenMode) par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void start(OpenMode mode = ReadWrite)
*/
void QProcess_start3 ()
{
  QProcess * obj = (QProcess *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = ISNIL(1)? (int) QIODevice::ReadWrite : hb_parni(1);
    obj->start ( (QIODevice::OpenMode) par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void start(const QString &program, const QStringList &arguments, OpenMode mode = ReadWrite)
//[2]void start(const QString &command, OpenMode mode = ReadWrite)
//[3]void start(OpenMode mode = ReadWrite)

HB_FUNC_STATIC( QPROCESS_START )
{
  if( ISBETWEEN(2,3) && ISCHAR(1) && ISARRAY(2) && ISOPTNUM(3) )
  {
    QProcess_start1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QProcess_start2();
  }
  else if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QProcess_start3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QProcess::ProcessState state () const
*/
$method=|QProcess::ProcessState|state|

/*
bool waitForFinished ( int msecs = 30000 )
*/
$method=|bool|waitForFinished|int=30000

/*
bool waitForStarted ( int msecs = 30000 )
*/
$method=|bool|waitForStarted|int=30000

/*
QString workingDirectory () const
*/
$method=|QString|workingDirectory|

/*
bool atEnd () const
*/
$method=|bool|atEnd|

/*
qint64 bytesAvailable () const
*/
$method=|qint64|bytesAvailable|

/*
qint64 bytesToWrite () const
*/
$method=|qint64|bytesToWrite|

/*
bool canReadLine () const
*/
$method=|bool|canReadLine|

/*
void close ()
*/
$method=|void|close|

/*
bool isSequential () const
*/
$method=|bool|isSequential|

/*
virtual bool waitForBytesWritten ( int msecs = 30000 )
*/
$method=|bool|waitForBytesWritten|int=30000

/*
virtual bool waitForReadyRead ( int msecs = 30000 )
*/
$method=|bool|waitForReadyRead|int=30000

/*
void kill ()
*/
$method=|void|kill|

/*
void terminate ()
*/
$method=|void|terminate|

/*
static int execute ( const QString & program, const QStringList & arguments )
*/
void QProcess_execute1 ()
{
  RINT( QProcess::execute ( PQSTRING(1), PQSTRINGLIST(2) ) );
}

/*
static int execute ( const QString & command )
*/
void QProcess_execute2 ()
{
  RINT( QProcess::execute ( PQSTRING(1) ) );
}

//[1]int execute ( const QString & program, const QStringList & arguments )
//[2]int execute ( const QString & program )

HB_FUNC_STATIC( QPROCESS_EXECUTE )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    QProcess_execute1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QProcess_execute2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static bool startDetached ( const QString & program, const QStringList & arguments, const QString & workingDirectory, qint64 * pid = 0 )
*/
void QProcess_startDetached1 ()
{
  qint64 * par4 = (qint64 *) _qt5xhb_itemGetPtr(4); // TODO: corrigir
  RBOOL( QProcess::startDetached ( PQSTRING(1), PQSTRINGLIST(2), PQSTRING(3), par4 ) );
}

/*
static bool startDetached ( const QString & program, const QStringList & arguments )
*/
void QProcess_startDetached2 ()
{
  RBOOL( QProcess::startDetached ( PQSTRING(1), PQSTRINGLIST(2) ) );
}

/*
static bool startDetached ( const QString & program )
*/
void QProcess_startDetached3 ()
{
  RBOOL( QProcess::startDetached ( PQSTRING(1) ) );
}

//[1]bool startDetached ( const QString & program, const QStringList & arguments, const QString & workingDirectory, qint64 * pid = 0 )
//[2]bool startDetached ( const QString & program, const QStringList & arguments )
//[3]bool startDetached ( const QString & program )

HB_FUNC_STATIC( QPROCESS_STARTDETACHED )
{
  if( ISBETWEEN(3,4) && ISCHAR(1) && ISARRAY(2) && ISCHAR(3) && ISOPTNUM(4) )
  {
    QProcess_startDetached1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    QProcess_startDetached2();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QProcess_startDetached3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QStringList systemEnvironment ()
*/
$staticMethod=|QStringList|systemEnvironment|

/*
bool open(OpenMode mode = ReadWrite) Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QPROCESS_OPEN )
{
  QProcess * obj = (QProcess *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      int par1 = ISNIL(1)? (int) QIODevice::ReadWrite : hb_parni(1);
      RBOOL( obj->open ( (QIODevice::OpenMode) par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString program() const
*/
$method=|QString|program|

/*
void setProgram(const QString &program)
*/
$method=|void|setProgram|const QString &

/*
QStringList arguments() const
*/
$method=|QStringList|arguments|

/*
void setArguments(const QStringList & arguments)
*/
$method=|void|setArguments|const QStringList &

/*
ProcessChannelMode readChannelMode() const
*/
$method=|QProcess::ProcessChannelMode|readChannelMode|

/*
void setReadChannelMode(ProcessChannelMode mode)
*/
$method=|void|setReadChannelMode|QProcess::ProcessChannelMode

/*
InputChannelMode inputChannelMode() const
*/
$method=|QProcess::InputChannelMode|inputChannelMode|

/*
void setInputChannelMode(InputChannelMode mode)
*/
$method=|void|setInputChannelMode|QProcess::InputChannelMode

/*
qint64 processId() const
*/
$method=|qint64|processId|

/*
static QString nullDevice()
*/
$staticMethod=|QString|nullDevice|

#pragma ENDDUMP