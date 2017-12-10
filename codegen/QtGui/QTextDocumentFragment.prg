$header

#include "hbclass.ch"

CLASS QTextDocumentFragment

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isEmpty
   METHOD toPlainText
   METHOD toHtml
   METHOD fromPlainText
   METHOD fromHtml

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

$prototype=QTextDocumentFragment()
$internalConstructor=|new1|

$prototype=QTextDocumentFragment(const QTextDocument *document)
$internalConstructor=|new2|const QTextDocument *

$prototype=QTextDocumentFragment(const QTextCursor &range)
$internalConstructor=|new3|const QTextCursor &

$prototype=QTextDocumentFragment(const QTextDocumentFragment &rhs)
$internalConstructor=|new4|const QTextDocumentFragment &

//[1]QTextDocumentFragment()
//[2]QTextDocumentFragment(const QTextDocument *document)
//[3]QTextDocumentFragment(const QTextCursor &range)
//[4]QTextDocumentFragment(const QTextDocumentFragment &rhs)

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTextDocumentFragment_new1();
  }
  else if( ISNUMPAR(1) && ISQTEXTDOCUMENT(1) )
  {
    QTextDocumentFragment_new2();
  }
  else if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    QTextDocumentFragment_new3();
  }
  else if( ISNUMPAR(1) && ISQTEXTDOCUMENTFRAGMENT(1) )
  {
    QTextDocumentFragment_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool isEmpty() const
$method=|bool|isEmpty|

$prototype=QString toPlainText() const
$method=|QString|toPlainText|

$prototype=QString toHtml(const QByteArray &encoding = QByteArray()) const
$method=|QString|toHtml|const QByteArray &=QByteArray()

$prototype=static QTextDocumentFragment fromPlainText(const QString &plainText)
$staticMethod=|QTextDocumentFragment|fromPlainText|const QString &

$prototype=static QTextDocumentFragment fromHtml(const QString &html)
$staticMethod=|QTextDocumentFragment|fromHtml,fromHtml1|const QString &

$prototype=static QTextDocumentFragment fromHtml(const QString &html, const QTextDocument *resourceProvider)
$staticMethod=|QTextDocumentFragment|fromHtml,fromHtml2|const QString &,const QTextDocument *

//[1]static QTextDocumentFragment fromHtml(const QString &html)
//[2]static QTextDocumentFragment fromHtml(const QString &html, const QTextDocument *resourceProvider)

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_FROMHTML )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTextDocumentFragment_fromHtml1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQTEXTDOCUMENT(2) )
  {
    QTextDocumentFragment_fromHtml2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$extraMethods

#pragma ENDDUMP
