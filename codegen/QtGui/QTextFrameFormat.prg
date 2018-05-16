%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QTEXTLENGTH
#endif

$beginClassFrom=QTextFormat

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD setPosition
   METHOD position
   METHOD setBorder
   METHOD border
   METHOD setBorderBrush
   METHOD borderBrush
   METHOD setBorderStyle
   METHOD borderStyle
   METHOD setMargin
   METHOD margin
   METHOD setTopMargin
   METHOD topMargin
   METHOD setBottomMargin
   METHOD bottomMargin
   METHOD setLeftMargin
   METHOD leftMargin
   METHOD setRightMargin
   METHOD rightMargin
   METHOD setPadding
   METHOD padding
   METHOD setWidth
   METHOD width
   METHOD setHeight
   METHOD height
   METHOD setPageBreakPolicy
   METHOD pageBreakPolicy

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTextFrameFormat()
$constructor=|new|

$deleteMethod

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=void setPosition(Position f)
$method=|void|setPosition|QTextFrameFormat::Position

$prototype=Position position() const
$method=|QTextFrameFormat::Position|position|

$prototype=void setBorder(qreal border)
$method=|void|setBorder|qreal

$prototype=qreal border() const
$method=|qreal|border|

$prototype=void setBorderBrush(const QBrush &brush)
$method=|void|setBorderBrush|const QBrush &

$prototype=QBrush borderBrush() const
$method=|QBrush|borderBrush|

$prototype=void setBorderStyle(BorderStyle style)
$method=|void|setBorderStyle|QTextFrameFormat::BorderStyle

$prototype=BorderStyle borderStyle() const
$method=|QTextFrameFormat::BorderStyle|borderStyle|

$prototype=void setMargin(qreal margin)
$method=|void|setMargin|qreal

$prototype=qreal margin() const
$method=|qreal|margin|

$prototype=void setTopMargin(qreal margin)
$method=|void|setTopMargin|qreal

$prototype=qreal topMargin() const
$method=|qreal|topMargin|

$prototype=void setBottomMargin(qreal margin)
$method=|void|setBottomMargin|qreal

$prototype=qreal bottomMargin() const
$method=|qreal|bottomMargin|

$prototype=void setLeftMargin(qreal margin)
$method=|void|setLeftMargin|qreal

$prototype=qreal leftMargin() const
$method=|qreal|leftMargin|

$prototype=void setRightMargin(qreal margin)
$method=|void|setRightMargin|qreal

$prototype=qreal rightMargin() const
$method=|qreal|rightMargin|

$prototype=void setPadding(qreal padding)
$method=|void|setPadding|qreal

$prototype=qreal padding() const
$method=|qreal|padding|

$prototype=void setWidth(qreal width)
$internalMethod=|void|setWidth,setWidth1|qreal

$prototype=void setWidth(const QTextLength &length)
$internalMethod=|void|setWidth,setWidth2|const QTextLength &

//[1]void setWidth(qreal width)
//[2]void setWidth(const QTextLength &length)

HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETWIDTH )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTextFrameFormat_setWidth1();
  }
  else if( ISNUMPAR(1) && ISQTEXTLENGTH(1) )
  {
    QTextFrameFormat_setWidth2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QTextLength width() const
$method=|QTextLength|width|

$prototype=void setHeight(qreal height)
$internalMethod=|void|setHeight,setHeight1|qreal

$prototype=void setHeight(const QTextLength &height)
$internalMethod=|void|setHeight,setHeight2|const QTextLength &

//[1]void setHeight(qreal height)
//[2]void setHeight(const QTextLength &height)

HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETHEIGHT )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTextFrameFormat_setHeight1();
  }
  else if( ISNUMPAR(1) && ISQTEXTLENGTH(1) )
  {
    QTextFrameFormat_setHeight2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QTextLength height() const
$method=|QTextLength|height|

$prototype=void setPageBreakPolicy(PageBreakFlags flags)
$method=|void|setPageBreakPolicy|QTextFrameFormat::PageBreakFlags

$prototype=PageBreakFlags pageBreakPolicy() const
$method=|QTextFrameFormat::PageBreakFlags|pageBreakPolicy|

#pragma ENDDUMP
