$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSTRINGREF
REQUEST QREGULAREXPRESSION
#endif

CLASS QRegularExpressionMatch

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD captured
   METHOD capturedEnd
   METHOD capturedLength
   METHOD capturedRef
   METHOD capturedStart
   METHOD capturedTexts
   METHOD hasMatch
   METHOD hasPartialMatch
   METHOD isValid
   METHOD lastCapturedIndex
   METHOD matchOptions
   METHOD matchType
   METHOD regularExpression
   METHOD swap

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QRegularExpressionMatch(const QRegularExpressionMatch & match)
*/
$constructor=|new|const QRegularExpressionMatch &

$deleteMethod

/*
QString captured(int nth = 0) const
*/
$internalMethod=|QString|captured,captured1|int=0

/*
QString captured(const QString & name) const
*/
$internalMethod=|QString|captured,captured2|const QString &

//[1]QString captured(int nth = 0) const
//[2]QString captured(const QString & name) const

HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_CAPTURED )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QRegularExpressionMatch_captured1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QRegularExpressionMatch_captured2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int capturedEnd(int nth = 0) const
*/
$internalMethod=|int|capturedEnd,capturedEnd1|int=0

/*
int capturedEnd(const QString & name) const
*/
$internalMethod=|int|capturedEnd,capturedEnd2|const QString &

//[1]int capturedEnd(int nth = 0) const
//[2]int capturedEnd(const QString & name) const

HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_CAPTUREDEND )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QRegularExpressionMatch_capturedEnd1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QRegularExpressionMatch_capturedEnd2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int capturedLength(int nth = 0) const
*/
$internalMethod=|int|capturedLength,capturedLength1|int=0

/*
int capturedLength(const QString & name) const
*/
$internalMethod=|int|capturedLength,capturedLength2|const QString &

//[1]int capturedLength(int nth = 0) const
//[2]int capturedLength(const QString & name) const

HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_CAPTUREDLENGTH )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QRegularExpressionMatch_capturedLength1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QRegularExpressionMatch_capturedLength2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QStringRef capturedRef(int nth = 0) const
*/
$internalMethod=|QStringRef|capturedRef,capturedRef1|int=0

/*
QStringRef capturedRef(const QString & name) const
*/
$internalMethod=|QStringRef|capturedRef,capturedRef2|const QString &

//[1]QStringRef capturedRef(int nth = 0) const
//[2]QStringRef capturedRef(const QString & name) const

HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_CAPTUREDREF )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QRegularExpressionMatch_capturedRef1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QRegularExpressionMatch_capturedRef2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int capturedStart(int nth = 0) const
*/
$internalMethod=|int|capturedStart,capturedStart1|int=0

/*
int capturedStart(const QString & name) const
*/
$internalMethod=|int|capturedStart,capturedStart2|const QString &

//[1]int capturedStart(int nth = 0) const
//[2]int capturedStart(const QString & name) const

HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_CAPTUREDSTART )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QRegularExpressionMatch_capturedStart1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QRegularExpressionMatch_capturedStart2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QStringList capturedTexts() const
*/
$method=|QStringList|capturedTexts|

/*
bool hasMatch() const
*/
$method=|bool|hasMatch|

/*
bool hasPartialMatch() const
*/
$method=|bool|hasPartialMatch|

/*
bool isValid() const
*/
$method=|bool|isValid|

/*
int lastCapturedIndex() const
*/
$method=|int|lastCapturedIndex|

/*
QRegularExpression::MatchOptions matchOptions() const
*/
$method=|QRegularExpression::MatchOptions|matchOptions|

/*
QRegularExpression::MatchType matchType() const
*/
$method=|QRegularExpression::MatchType|matchType|

/*
QRegularExpression regularExpression() const
*/
$method=|QRegularExpression|regularExpression|

/*
void swap(QRegularExpressionMatch & other)
*/
$method=|void|swap|QRegularExpressionMatch &

$extraMethods

#pragma ENDDUMP