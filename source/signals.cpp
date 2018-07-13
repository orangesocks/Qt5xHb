/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "signals.h"

static Signals *s_signals = NULL;

/*
  constructor
*/
Signals::Signals(QObject *parent) : QObject(parent)
{
  mutex = new QMutex();
}

/*
  destructor
*/
Signals::~Signals()
{
  Signals_release_codeblocks ();
  delete mutex;
}

/*
  Conecta um determinado sinal com um objeto
  Par�metro 1: ponteiro para o objeto
  Par�metro 2: assinatura do sinal
  Par�metro 3: codeblock
  Retorna .t. se a conex�o foi bem sucedida ou .f. se falhou
  Fun��o de uso interno, n�o deve ser usada nas aplica��es do
  usu�rio
*/

bool Signals_connect_signal ( QObject * object, QString signal, PHB_ITEM codeblock )
{
  int i;
  // cria objeto da classe Signals, caso n�o tenha sido criado
  if( s_signals == NULL )
  {
    s_signals = new Signals(QCoreApplication::instance());
  }
  // verifica se j� est� na lista
  int found = -1;
  for (i = 0; i < s_signals->list1.size(); ++i)
  {
    if( ( (QObject *) s_signals->list1.at(i) == (QObject *) object ) && ( s_signals->list2.at(i) == signal ) && ( (bool) s_signals->list4.at(i) == true ) )
    {
      found = i;
      //hb_itemRelease( codeblock );
      break;
    }
  }
  bool ret = false;
  // se nao encontrado na lista, adiciona
  if( found == -1 )
  {
    // procura por posi��o livre
    i = s_signals->list4.indexOf( false );
    if( i == -1 ) // nao encontrou posicao livre
    {
      // adiciona sinal na lista de sinais
      s_signals->list1 << object;
      s_signals->list2 << signal;
      s_signals->list3 << codeblock;
      s_signals->list4 << true;
    }
    else // encontrou posicao livre
    {
      // coloca na posi��o livre
      s_signals->list1[i] = object;
      s_signals->list2[i] = signal;
      s_signals->list3[i] = codeblock;
      s_signals->list4[i] = true;
    }
    ret = true;
  }
  // retorna o resultado da opera��o
  //hb_retl( ret );
  return ret;
}

/*
  Desconecta um determinado sinal
  Par�metro 1: ponteiro para o objeto
  Par�metro 2: assinatura do sinal
  Retorna .t. se a desconex�o foi bem sucedida ou .f. se falhou
  Fun��o de uso interno, n�o deve ser usada nas aplica��es do
  usu�rio
*/

bool Signals_disconnect_signal ( QObject * object, QString signal )
{
  int i;
  // cria objeto da classe Signals, caso n�o tenha sido criado
  if( s_signals == NULL )
  {
    s_signals = new Signals(QCoreApplication::instance());
  }
  bool ret = false;
  // remove sinal da lista de sinais
  for (i = 0; i < s_signals->list1.size(); ++i)
  {
    if( (QObject *) s_signals->list1.at(i) == (QObject *) object )
    {
      if( ( s_signals->list2.at(i) == signal ) && ( (bool) s_signals->list4.at(i) == true ) )
      {
        hb_itemRelease( (PHB_ITEM) s_signals->list3.at(i) );
        s_signals->list1[i] = NULL;
        s_signals->list2[i] = "";
        s_signals->list3[i] = NULL;
        s_signals->list4[i] = false;
        ret = true;
      }
    }
  }
  // retorna o resultado da opera��o
  //hb_retl( ret );
  return ret;
}

/*
  Verifica se um determinado sinal do objeto especificado est� conectado
  Par�metro 1: ponteiro para o objeto
  Par�metro 2: assinatura do sinal
  Retorna .t. se existe uma conex�o ativa ou .f. caso n�o exista
  Fun��o de uso interno, n�o deve ser usada nas aplica��es do
  usu�rio
*/

bool Signals_is_signal_connected ( QObject * object, QString signal )
{
  // cria objeto da classe Signals, caso n�o tenha sido criado
  if( s_signals == NULL )
  {
    s_signals = new Signals(QCoreApplication::instance());
  }
  // valor de retorno
  bool found = false;
  // verifica se j� est� na lista
  //int i;
  for (int i = 0; i < s_signals->list1.size(); ++i)
  {
    if( ( (QObject *) s_signals->list1.at(i) == (QObject *) object ) && ( s_signals->list2.at(i) == signal ) && ( (bool) s_signals->list4.at(i) == true ) )
    {
      found = true;
      break;
    }
  }
  return found;
}

/*
  Retorna o codeblock de um determinado objeto e sinal
*/

PHB_ITEM Signals_return_codeblock ( QObject * object, QString signal )
{
  // cria objeto da classe Signals, caso n�o tenha sido criado
  if( s_signals == NULL )
  {
    s_signals = new Signals(QCoreApplication::instance());
  }
  int i;
  int found = -1;
  // localiza sinal na lista de sinais
  for (i = 0; i < s_signals->list1.size(); ++i)
  {
    if( ( (QObject *) s_signals->list1.at(i) == (QObject *) object ) && ( s_signals->list2.at(i) == signal ) && ( (bool) s_signals->list4.at(i) == true ) )
    {
      found = i;
      break;
    }
  }
  // retorna o resultado da opera��o
  if( found != -1 )
  {
    return (PHB_ITEM) s_signals->list3.at(found);
  }
  else
  {
    return NULL;
  }
}

/*
  Libera todos os codeblocks relacionados com sinais
*/

void Signals_release_codeblocks ()
{
  if( s_signals )
  {
    for (int i = 0; i < s_signals->list1.size(); ++i)
    {
      if( (bool) s_signals->list4.at(i) == true )
      {
        hb_itemRelease((PHB_ITEM) s_signals->list3.at(i) );
        s_signals->list1[i] = NULL;
        s_signals->list2[i] = "";
        s_signals->list3[i] = NULL;
        s_signals->list4[i] = false;
      }
    }
  }
}

/*
  Libera todos os codeblocks relacionados com sinais do objeto 'obj'
  NOTA: c�digo obsoleto (REMOVER)
*/

/*
void Signals_disconnect_all_signals (QObject * obj)
{
  if( s )
  {
    // percorre toda a lista de sinais
    for (int i = 0; i < ->list1.size(); ++i)
    {
      // elimina sinais ativos (true) ligados ao objeto (obj)
      if( ( (QObject *) s->list1.at(i) == (QObject *) obj ) && ( (bool) s->list4.at(i) == true ) )
      {
        hb_itemRelease( (PHB_ITEM) s->list3.at(i) );
        s->list1[i] = NULL;
        s->list2[i] = "";
        s->list3[i] = NULL;
        s->list4[i] = false;
      }
    }
  }
}
*/

/*
  Libera todos os codeblocks relacionados com sinais do objeto 'obj',
  incluindo os sinais ligados aos filhos, netos, bisnetos, etc... (se children = true).
  NOTA: o sinal "destroyed(QObject*)" n�o � liberado, pois se fosse n�o seria executado
  na destrui��o do objeto. Este sinal � liberado automaticamente ap�s sua execu��o, pois
  a destrui��o de um objeto ocorre apenas uma vez.
*/

void Signals_disconnect_all_signals (QObject * obj, bool children)
{
  if( s_signals )
  {
    if( !children )
    {
      // percorre toda a lista de sinais
      for (int i = 0; i < s_signals->list1.size(); ++i)
      {
        // elimina sinais ativos (true) ligados ao objeto (obj)
        if( ( (QObject *) s_signals->list1.at(i) == (QObject *) obj ) &&
            ( s_signals->list2.at(i) != "destroyed(QObject*)" ) &&
            ( (bool) s_signals->list4.at(i) == true ) )
        {
          hb_itemRelease( (PHB_ITEM) s_signals->list3.at(i) );
          s_signals->list1[i] = NULL;
          s_signals->list2[i] = "";
          s_signals->list3[i] = NULL;
          s_signals->list4[i] = false;
        }
      }
    }
    else
    {
      // obt�m a lista de filhos, netos, bisnetos, etc...
      QList<QObject *> list = obj->findChildren<QObject *>();
      // adiciona o pai na lista
      list << obj;
      // percorre toda a lista de objetos
      for (int i = 0; i < list.size(); ++i)
      {
        // percorre toda a lista de sinais
        for (int ii = 0; ii < s_signals->list1.size(); ++ii)
        {
          // elimina sinais ativos (true) ligados ao objeto list.at(i)
          if( ( (QObject *) s_signals->list1.at(ii) == (QObject *) list.at(i) ) &&
              ( s_signals->list2.at(ii) != "destroyed(QObject*)" ) &&
              ( (bool) s_signals->list4.at(ii) == true ) )
          {
            hb_itemRelease( (PHB_ITEM) s_signals->list3.at(ii) );
            s_signals->list1[ii] = NULL;
            s_signals->list2[ii] = "";
            s_signals->list3[ii] = NULL;
            s_signals->list4[ii] = false;
          }
        }
      }
    }
  }
}

/*
  conecta/desconecta sinais e retorna resultado (true/false) (para uso nas classes Q*Slots)
*/
bool Signals_connection_disconnection ( QObject * s, QString signal, QString slot )
{
  // cria objeto da classe Signals, caso n�o tenha sido criado
  if( s_signals == NULL )
  {
    s_signals = new Signals(QCoreApplication::instance());
  }

  bool ret = false;

  s_signals->mutex->lock();

  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object,
                               object->metaObject()->method(object->metaObject()->indexOfMethod(QMetaObject::normalizedSignature(signal.toLatin1().constData()))),
                               s,
                               s->metaObject()->method(s->metaObject()->indexOfMethod(QMetaObject::normalizedSignature(slot.toLatin1().constData())))
                             );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
        }
        else
        {
          hb_itemRelease( codeblock );
        }
      }
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    ret = object->disconnect( object,
                              object->metaObject()->method(object->metaObject()->indexOfMethod(QMetaObject::normalizedSignature(signal.toLatin1().constData()))),
                              s,
                              s->metaObject()->method(s->metaObject()->indexOfMethod(QMetaObject::normalizedSignature(slot.toLatin1().constData())))
                            );
    if( ret )
    {
      Signals_disconnect_signal( object, signal ); // se desconectado, remove
    }
  }

  s_signals->mutex->unlock();

  return ret;
}

/*
  Retorna o tamanho da lista de sinais.
  Aten��o: est� fun��o n�o faz parte da API p�blica, podendo
  ser removida ou sofrer modifica��es futuramente.
*/

HB_FUNC( QTXHB_SIGNALS_SIZE )
{
  if( s_signals )
  {
    hb_retni( s_signals->list1.size() );
  }
  else
  {
    hb_retni( 0 );
  }
}

/*
  Retorna o n�mero de sinais ativos na lista de sinais.
  Aten��o: est� fun��o n�o faz parte da API p�blica, podendo
  ser removida ou sofrer modifica��es futuramente.
*/

HB_FUNC( QTXHB_SIGNALS_SIZE_ACTIVE )
{
  if( s_signals )
  {
    // inicializa contador
    int count = 0;
    // percorre toda a lista de sinais
    for (int i = 0; i < s_signals->list1.size(); ++i)
    {
      if( s_signals->list4.at(i) )
      {
        ++count;
      }
    }
    hb_retni( count );
  }
  else
  {
    hb_retni( 0 );
  }
}

PHB_ITEM Signals_return_object ( void * ptr, const char * classname )
{
  PHB_DYNS pDynSym = hb_dynsymFindName( classname );

  PHB_ITEM pObject = hb_itemNew( NULL );

  if( pDynSym )
  {
    hb_vmPushDynSym( pDynSym );
    hb_vmPushNil();
    hb_vmDo( 0 );
    hb_itemCopy( pObject, hb_stackReturnItem() );
    PHB_ITEM pItem = hb_itemNew( NULL );
    hb_itemPutPtr( pItem, (void *) ptr );
    hb_objSendMsg( pObject, "_POINTER", 1, pItem );
    hb_itemRelease( pItem );
  }
  else
  {
    hb_errRT_BASE( EG_NOFUNC, 1001, NULL, classname, HB_ERR_ARGS_BASEPARAMS );
  }

  return pObject;
}

PHB_ITEM Signals_return_qobject ( QObject * ptr, const char * classname )
{
  PHB_DYNS pDynSym = NULL;

  if( ptr )
  {
    pDynSym = hb_dynsymFindName( (const char *) ptr->metaObject()->className() );
  }

  if( !pDynSym )
  {
    pDynSym = hb_dynsymFindName( classname );
  }

  PHB_ITEM pObject = hb_itemNew( NULL );

  if( pDynSym )
  {
    hb_vmPushDynSym( pDynSym );
    hb_vmPushNil();
    hb_vmDo( 0 );
    hb_itemCopy( pObject, hb_stackReturnItem() );
    PHB_ITEM pItem = hb_itemNew( NULL );
    hb_itemPutPtr( pItem, (void *) ptr );
    hb_objSendMsg( pObject, "_POINTER", 1, pItem );
    hb_itemRelease( pItem );
  }
  else
  {
    hb_errRT_BASE( EG_NOFUNC, 1001, NULL, classname, HB_ERR_ARGS_BASEPARAMS );
  }

  return pObject;
}
