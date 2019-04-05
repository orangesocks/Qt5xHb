%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork

$header

/*
enum QSsl::KeyType
*/
#define QSsl_PrivateKey                                              0
#define QSsl_PublicKey                                               1

/*
enum QSsl::EncodingFormat
*/
#define QSsl_Pem                                                     0
#define QSsl_Der                                                     1

/*
enum QSsl::KeyAlgorithm
*/
#define QSsl_Opaque                                                  0
#define QSsl_Rsa                                                     1
#define QSsl_Dsa                                                     2
#define QSsl_Ec                                                      3

/*
enum QSsl::AlternativeNameEntryType
*/
#define QSsl_EmailEntry                                              0
#define QSsl_DnsEntry                                                1

%% TODO: verificar
%% #if QT_DEPRECATED_SINCE(5,0)
%%     typedef AlternativeNameEntryType AlternateNameEntryType;
%% #endif

/*
enum QSsl::SslProtocol
*/
#define QSsl_SslV3                                                   0
#define QSsl_SslV2                                                   1
#define QSsl_TlsV1_0                                                 2
#define QSsl_TlsV1                                                   QSsl_TlsV1_0
#define QSsl_TlsV1_1                                                 3
#define QSsl_TlsV1_2                                                 4
#define QSsl_AnyProtocol                                             5
#define QSsl_TlsV1SslV3                                              6
#define QSsl_SecureProtocols                                         7
#define QSsl_TlsV1_0OrLater                                          8
#define QSsl_TlsV1_1OrLater                                          9
#define QSsl_TlsV1_2OrLater                                          10
#define QSsl_UnknownProtocol                                         -1

/*
enum QSsl::SslOption
flags QSsl::SslOptions
*/
#define QSsl_SslOptionDisableEmptyFragments                          0x01
#define QSsl_SslOptionDisableSessionTickets                          0x02
#define QSsl_SslOptionDisableCompression                             0x04
#define QSsl_SslOptionDisableServerNameIndication                    0x08
#define QSsl_SslOptionDisableLegacyRenegotiation                     0x10
#define QSsl_SslOptionDisableSessionSharing                          0x20
#define QSsl_SslOptionDisableSessionPersistence                      0x40
#define QSsl_SslOptionDisableServerCipherPreference                  0x80
