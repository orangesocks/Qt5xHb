$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTEVENTDISPATCHER
#endif

CLASS QThread INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD eventDispatcher
   METHOD exit
   METHOD isFinished
   METHOD isRunning
   METHOD priority
   METHOD setEventDispatcher
   METHOD setPriority
   METHOD setStackSize
   METHOD stackSize
   METHOD event
   METHOD quit
   METHOD start
   METHOD terminate
   METHOD currentThread
   METHOD idealThreadCount
   METHOD msleep
   METHOD sleep
   METHOD usleep
   METHOD yieldCurrentThread

   METHOD onFinished
   METHOD onStarted

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QThread(QObject * parent = 0)
*/
HB_FUNC_STATIC( QTHREAD_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QThread * o = new QThread ( OPQOBJECT(1,0) );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QAbstractEventDispatcher * eventDispatcher() const
*/
HB_FUNC_STATIC( QTHREAD_EVENTDISPATCHER )
{
  QThread * obj = (QThread *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAbstractEventDispatcher * ptr = obj->eventDispatcher ();
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTEVENTDISPATCHER" );
  }
}

/*
void exit(int returnCode = 0)
*/
$method=|void|exit|int=0

/*
bool isFinished() const
*/
$method=|bool|isFinished|

/*
bool isRunning() const
*/
$method=|bool|isRunning|

/*
Priority priority() const
*/
HB_FUNC_STATIC( QTHREAD_PRIORITY )
{
  QThread * obj = (QThread *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->priority () );
  }
}

/*
void setEventDispatcher(QAbstractEventDispatcher * eventDispatcher)
*/
HB_FUNC_STATIC( QTHREAD_SETEVENTDISPATCHER )
{
  QThread * obj = (QThread *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQABSTRACTEVENTDISPATCHER(1) )
    {
      QAbstractEventDispatcher * par1 = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtr(1);
      obj->setEventDispatcher ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPriority(Priority priority)
*/
HB_FUNC_STATIC( QTHREAD_SETPRIORITY )
{
  QThread * obj = (QThread *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setPriority ( (QThread::Priority) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStackSize(uint stackSize)
*/
HB_FUNC_STATIC( QTHREAD_SETSTACKSIZE )
{
  QThread * obj = (QThread *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setStackSize ( (uint) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
uint stackSize() const
*/
HB_FUNC_STATIC( QTHREAD_STACKSIZE )
{
  QThread * obj = (QThread *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->stackSize () );
  }
}

/*
virtual bool event(QEvent * event)
*/
$method=|bool|event|QEvent *

/*
void quit()
*/
$method=|void|quit|

/*
void start(Priority priority = InheritPriority)
*/
HB_FUNC_STATIC( QTHREAD_START )
{
  QThread * obj = (QThread *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      int par1 = ISNIL(1)? (int) QThread::InheritPriority : hb_parni(1);
      obj->start ( (QThread::Priority) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void terminate()
*/
HB_FUNC_STATIC( QTHREAD_TERMINATE )
{
  QThread * obj = (QThread *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->terminate ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QThread * currentThread()
*/
HB_FUNC_STATIC( QTHREAD_CURRENTTHREAD )
{
  QThread * ptr = QThread::currentThread ();
  _qt5xhb_createReturnClass ( ptr, "QTHREAD" );
}

/*
static int idealThreadCount()
*/
HB_FUNC_STATIC( QTHREAD_IDEALTHREADCOUNT )
{
  RINT( QThread::idealThreadCount () );
}

/*
static void msleep(unsigned long msecs)
*/
HB_FUNC_STATIC( QTHREAD_MSLEEP )
{
  if( ISNUM(1) )
  {
    unsigned long par1 = hb_parnl(1);
    QThread::msleep ( par1 );
    hb_itemReturn( hb_stackSelfItem() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void sleep(unsigned long secs)
*/
HB_FUNC_STATIC( QTHREAD_SLEEP )
{
  if( ISNUM(1) )
  {
    unsigned long par1 = hb_parnl(1);
    QThread::sleep ( par1 );
    hb_itemReturn( hb_stackSelfItem() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void usleep(unsigned long usecs)
*/
HB_FUNC_STATIC( QTHREAD_USLEEP )
{
  if( ISNUM(1) )
  {
    unsigned long par1 = hb_parnl(1);
    QThread::usleep ( par1 );
    hb_itemReturn( hb_stackSelfItem() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void yieldCurrentThread()
*/
HB_FUNC_STATIC( QTHREAD_YIELDCURRENTTHREAD )
{
  QThread::yieldCurrentThread ();
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP