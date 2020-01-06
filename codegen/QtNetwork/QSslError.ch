%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork

$header

/*
enum QSslError::SslError
*/
#define QSslError_NoError                                            0
#define QSslError_UnableToGetIssuerCertificate                       1
#define QSslError_UnableToDecryptCertificateSignature                2
#define QSslError_UnableToDecodeIssuerPublicKey                      3
#define QSslError_CertificateSignatureFailed                         4
#define QSslError_CertificateNotYetValid                             5
#define QSslError_CertificateExpired                                 6
#define QSslError_InvalidNotBeforeField                              7
#define QSslError_InvalidNotAfterField                               8
#define QSslError_SelfSignedCertificate                              9
#define QSslError_SelfSignedCertificateInChain                       10
#define QSslError_UnableToGetLocalIssuerCertificate                  11
#define QSslError_UnableToVerifyFirstCertificate                     12
#define QSslError_CertificateRevoked                                 13
#define QSslError_InvalidCaCertificate                               14
#define QSslError_PathLengthExceeded                                 15
#define QSslError_InvalidPurpose                                     16
#define QSslError_CertificateUntrusted                               17
#define QSslError_CertificateRejected                                18
#define QSslError_SubjectIssuerMismatch                              19
#define QSslError_AuthorityIssuerSerialNumberMismatch                20
#define QSslError_NoPeerCertificate                                  21
#define QSslError_HostNameMismatch                                   22
#define QSslError_NoSslSupport                                       23
#define QSslError_CertificateBlacklisted                             24
#define QSslError_UnspecifiedError                                   -1
