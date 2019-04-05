%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

/*
enum QCameraExposure::FlashMode
flags QCameraExposure::FlashModes
*/
#define QCameraExposure_FlashAuto                                    0x1
#define QCameraExposure_FlashOff                                     0x2
#define QCameraExposure_FlashOn                                      0x4
#define QCameraExposure_FlashRedEyeReduction                         0x8
#define QCameraExposure_FlashFill                                    0x10
#define QCameraExposure_FlashTorch                                   0x20
#define QCameraExposure_FlashVideoLight                              0x40
#define QCameraExposure_FlashSlowSyncFrontCurtain                    0x80
#define QCameraExposure_FlashSlowSyncRearCurtain                     0x100
#define QCameraExposure_FlashManual                                  0x200

/*
enum QCameraExposure::ExposureMode
*/
#define QCameraExposure_ExposureAuto                                 0
#define QCameraExposure_ExposureManual                               1
#define QCameraExposure_ExposurePortrait                             2
#define QCameraExposure_ExposureNight                                3
#define QCameraExposure_ExposureBacklight                            4
#define QCameraExposure_ExposureSpotlight                            5
#define QCameraExposure_ExposureSports                               6
#define QCameraExposure_ExposureSnow                                 7
#define QCameraExposure_ExposureBeach                                8
#define QCameraExposure_ExposureLargeAperture                        9
#define QCameraExposure_ExposureSmallAperture                        10
#define QCameraExposure_ExposureAction                               11
#define QCameraExposure_ExposureLandscape                            12
#define QCameraExposure_ExposureNightPortrait                        13
#define QCameraExposure_ExposureTheatre                              14
#define QCameraExposure_ExposureSunset                               15
#define QCameraExposure_ExposureSteadyPhoto                          16
#define QCameraExposure_ExposureFireworks                            17
#define QCameraExposure_ExposureParty                                18
#define QCameraExposure_ExposureCandlelight                          19
#define QCameraExposure_ExposureBarcode                              20
#define QCameraExposure_ExposureModeVendor                           1000

/*
enum QCameraExposure::MeteringMode
*/
#define QCameraExposure_MeteringMatrix                               1
#define QCameraExposure_MeteringAverage                              2
#define QCameraExposure_MeteringSpot                                 3
