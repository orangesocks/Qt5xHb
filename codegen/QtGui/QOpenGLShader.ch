%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

/*
enum QOpenGLShader::ShaderTypeBit
flags QOpenGLShader::ShaderType
*/
#define QOpenGLShader_Vertex                                         0x0001
#define QOpenGLShader_Fragment                                       0x0002
#define QOpenGLShader_Geometry                                       0x0004
#define QOpenGLShader_TessellationControl                            0x0008
#define QOpenGLShader_TessellationEvaluation                         0x0010
#define QOpenGLShader_Compute                                        0x0020
