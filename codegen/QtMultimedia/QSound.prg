$header

#include "hbclass.ch"

CLASS QSound INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD loops
   METHOD loopsRemaining
   METHOD setLoops
   METHOD fileName
   METHOD isFinished
   METHOD stop
   METHOD play1
   METHOD play2
   METHOD play

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QSound(const QString& filename, QObject* parent = 0)
*/
HB_FUNC_STATIC( QSOUND_NEW )
{
  QSound * o = new QSound ( PQSTRING(1), OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
int loops() const
*/
HB_FUNC_STATIC( QSOUND_LOOPS )
{
  QSound * obj = (QSound *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->loops () );
  }
}


/*
int loopsRemaining() const
*/
HB_FUNC_STATIC( QSOUND_LOOPSREMAINING )
{
  QSound * obj = (QSound *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->loopsRemaining () );
  }
}


/*
void setLoops(int)
*/
HB_FUNC_STATIC( QSOUND_SETLOOPS )
{
  QSound * obj = (QSound *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLoops ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString fileName() const
*/
HB_FUNC_STATIC( QSOUND_FILENAME )
{
  QSound * obj = (QSound *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->fileName () );
  }
}


/*
bool isFinished() const
*/
HB_FUNC_STATIC( QSOUND_ISFINISHED )
{
  QSound * obj = (QSound *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isFinished () );
  }
}


/*
void stop()
*/
HB_FUNC_STATIC( QSOUND_STOP )
{
  QSound * obj = (QSound *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void play()
*/
HB_FUNC_STATIC( QSOUND_PLAY1 )
{
  QSound * obj = (QSound *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->play ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void play(const QString& filename)
*/
HB_FUNC_STATIC( QSOUND_PLAY2 )
{
  QSound::play ( PQSTRING(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void play()
//[2]static void play(const QString& filename)

HB_FUNC_STATIC( QSOUND_PLAY )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSOUND_PLAY1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSOUND_PLAY2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}


#pragma ENDDUMP
