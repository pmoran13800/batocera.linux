// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying
#define COMPAT_ATTRIBUTE attribute
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     float _frame_rotation;
COMPAT_VARYING     vec4 _color1;
struct output_dummy {
    vec4 _color1;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _oPosition1;
vec4 _r0006;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 COL0;
COMPAT_VARYING vec4 TEX0;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec4 _oColor;
    vec2 _otexCoord;
    _r0006 = VertexCoord.x*MVPMatrix[0];
    _r0006 = _r0006 + VertexCoord.y*MVPMatrix[1];
    _r0006 = _r0006 + VertexCoord.z*MVPMatrix[2];
    _r0006 = _r0006 + VertexCoord.w*MVPMatrix[3];
    _oPosition1 = _r0006;
    _oColor = COLOR;
    _otexCoord = TexCoord.xy;
    gl_Position = _r0006;
    COL0 = COLOR;
    TEX0.xy = TexCoord.xy;
} 
#elif defined(FRAGMENT)

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     float _frame_rotation;
COMPAT_VARYING     vec4 _color1;
struct output_dummy {
    vec4 _color1;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec3 _TMP27;
vec3 _TMP28;
vec3 _TMP25;
vec3 _TMP26;
vec3 _TMP23;
vec3 _TMP24;
vec4 _TMP16;
vec4 _TMP15;
vec4 _TMP14;
vec4 _TMP13;
vec4 _TMP12;
vec4 _TMP11;
vec4 _TMP10;
vec4 _TMP9;
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
uniform sampler2D Texture;
input_dummy _IN1;
vec2 _c0036;
vec2 _c0038;
vec2 _c0040;
vec2 _c0042;
vec2 _c0046;
vec2 _c0048;
vec2 _c0050;
vec2 _c0052;
vec2 _c0054;
vec2 _c0056;
vec2 _c0058;
vec2 _c0060;
vec2 _c0062;
vec2 _c0064;
vec2 _c0066;
vec2 _c0068;
float _TMP69;
float _TMP73;
float _TMP77;
float _TMP81;
float _TMP85;
float _TMP89;
float _TMP93;
float _TMP97;
float _TMP101;
float _TMP105;
float _TMP109;
float _TMP113;
float _TMP117;
float _TMP121;
float _TMP125;
float _TMP129;
float _TMP133;
COMPAT_VARYING vec4 TEX0;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec2 _ps;
    vec2 _dx;
    vec2 _dy;
    vec2 _pixcoord;
    vec2 _fp;
    vec2 _d11;
    vec3 _E[9];
    vec3 _res;
    output_dummy _OUT;
    _ps = vec2(9.99899983E-01/TextureSize.x, 9.99899983E-01/TextureSize.y);
    _dx = vec2(_ps.x, 0.00000000E+00);
    _dy = vec2(0.00000000E+00, _ps.y);
    _pixcoord = TEX0.xy/_ps;
    _fp = fract(_pixcoord);
    _d11 = TEX0.xy - _fp*_ps;
    _c0036 = (_d11 - _dx) - _dy;
    _TMP0 = COMPAT_TEXTURE(Texture, _c0036);
    _c0038 = _d11 - _dy;
    _TMP1 = COMPAT_TEXTURE(Texture, _c0038);
    _c0040 = (_d11 + _dx) - _dy;
    _TMP2 = COMPAT_TEXTURE(Texture, _c0040);
    _c0042 = _d11 - _dx;
    _TMP3 = COMPAT_TEXTURE(Texture, _c0042);
    _TMP4 = COMPAT_TEXTURE(Texture, _d11);
    _c0046 = _d11 + _dx;
    _TMP5 = COMPAT_TEXTURE(Texture, _c0046);
    _c0048 = (_d11 - _dx) + _dy;
    _TMP6 = COMPAT_TEXTURE(Texture, _c0048);
    _c0050 = _d11 + _dy;
    _TMP7 = COMPAT_TEXTURE(Texture, _c0050);
    _c0052 = _d11 + _dx + _dy;
    _TMP8 = COMPAT_TEXTURE(Texture, _c0052);
    _c0054 = ((_d11 - _dx) - _dy) - _dy;
    _TMP9 = COMPAT_TEXTURE(Texture, _c0054);
    _c0056 = ((_d11 + _dx) - _dy) - _dy;
    _TMP10 = COMPAT_TEXTURE(Texture, _c0056);
    _c0058 = ((_d11 - _dx) - _dx) - _dy;
    _TMP11 = COMPAT_TEXTURE(Texture, _c0058);
    _c0060 = ((_d11 - _dx) - _dx) + _dy;
    _TMP12 = COMPAT_TEXTURE(Texture, _c0060);
    _c0062 = (_d11 + _dx + _dx) - _dy;
    _TMP13 = COMPAT_TEXTURE(Texture, _c0062);
    _c0064 = _d11 + _dx + _dx + _dy;
    _TMP14 = COMPAT_TEXTURE(Texture, _c0064);
    _c0066 = (_d11 - _dx) + _dy + _dy;
    _TMP15 = COMPAT_TEXTURE(Texture, _c0066);
    _c0068 = _d11 + _dx + _dy + _dy;
    _TMP16 = COMPAT_TEXTURE(Texture, _c0068);
    _E[2] = _TMP4.xyz;
    _E[1] = _TMP4.xyz;
    _E[0] = _TMP4.xyz;
    _E[5] = _TMP4.xyz;
    _E[3] = _TMP4.xyz;
    _E[8] = _TMP4.xyz;
    _E[7] = _TMP4.xyz;
    _E[6] = _TMP4.xyz;
    _TMP69 = dot(_TMP0.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP73 = dot(_TMP1.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP77 = dot(_TMP2.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP81 = dot(_TMP3.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP85 = dot(_TMP4.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP89 = dot(_TMP5.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP93 = dot(_TMP6.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP97 = dot(_TMP7.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP101 = dot(_TMP8.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP105 = dot(_TMP9.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP109 = dot(_TMP10.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP113 = dot(_TMP11.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP117 = dot(_TMP12.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP121 = dot(_TMP13.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP125 = dot(_TMP14.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP129 = dot(_TMP15.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP133 = dot(_TMP16.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    if (_TMP85 != _TMP97 && _TMP97 == _TMP89 && (_TMP85 != _TMP101 && (_TMP85 != _TMP73 || _TMP85 != _TMP81 || _TMP73 == _TMP109 && _TMP81 == _TMP117 || _TMP89 != _TMP73 && _TMP89 != _TMP77 || _TMP97 != _TMP81 && _TMP97 != _TMP93) || _TMP85 == _TMP93 && (_TMP101 == _TMP97 || _TMP85 == _TMP81 || _TMP97 != _TMP81) || _TMP85 == _TMP77 && (_TMP101 == _TMP97 || _TMP85 == _TMP73 || _TMP89 != _TMP73))) { 
        if (_TMP85 == _TMP77 && _TMP85 == _TMP81 && _TMP97 == _TMP93) { 
            _E[5] = (3.00000000E+00*_TMP4.xyz + _TMP5.xyz)*2.50000000E-01;
            _E[6] = _E[5];
            _E[7] = (_TMP4.xyz + _TMP5.xyz) - _E[5];
            _E[8] = _TMP7.xyz;
        } else {
            if (_TMP85 == _TMP93 && _TMP85 == _TMP73 && _TMP89 == _TMP77) { 
                _E[7] = (3.00000000E+00*_TMP4.xyz + _TMP7.xyz)*2.50000000E-01;
                _E[2] = _E[7];
                _E[5] = (_TMP4.xyz + _TMP7.xyz) - _E[7];
                _E[8] = _TMP5.xyz;
            } else {
                _E[8] = _TMP4.xyz + 8.75000000E-01*(_TMP5.xyz - _TMP4.xyz);
                _E[5] = (_TMP4.xyz + _TMP5.xyz) - _E[8];
                _E[7] = _E[5];
            } 
        } 
    } else {
        if (_TMP85 != _TMP97 && _TMP93 == _TMP85 && _TMP85 == _TMP77 && _TMP85 != _TMP101 && _TMP85 != _TMP89) { 
            _E[8] = _TMP4.xyz + 8.75000000E-01*(_TMP5.xyz - _TMP4.xyz);
            _E[5] = _TMP4.xyz + 1.25000000E-01*(_TMP5.xyz - _TMP4.xyz);
            _E[7] = _TMP4.xyz + 1.25000000E-01*(_TMP7.xyz - _TMP4.xyz);
        } 
    } 
    if (_TMP85 != _TMP89 && _TMP89 == _TMP73 && (_TMP85 != _TMP77 && (_TMP85 != _TMP81 || _TMP85 != _TMP97 || _TMP81 == _TMP113 && _TMP97 == _TMP133 || _TMP73 != _TMP81 && _TMP73 != _TMP69 || _TMP89 != _TMP97 && _TMP89 != _TMP101) || _TMP85 == _TMP101 && (_TMP77 == _TMP89 || _TMP85 == _TMP97 || _TMP89 != _TMP97) || _TMP85 == _TMP69 && (_TMP77 == _TMP89 || _TMP85 == _TMP81 || _TMP73 != _TMP81))) { 
        if (_TMP85 == _TMP69 && _TMP85 == _TMP97 && _TMP89 == _TMP101) { 
            _E[1] = (3.00000000E+00*_TMP4.xyz + _TMP1.xyz)*2.50000000E-01;
            _E[8] = _E[1];
            _E[5] = (_E[5] + _TMP1.xyz) - _E[1];
            _E[2] = _TMP5.xyz;
        } else {
            if (_TMP85 == _TMP101 && _TMP85 == _TMP81 && _TMP73 == _TMP69) { 
                _E[5] = (3.00000000E+00*_E[5] + _TMP5.xyz)*2.50000000E-01;
                _E[0] = _E[5];
                _E[1] = (_TMP4.xyz + _TMP5.xyz) - _E[5];
                _E[2] = _TMP1.xyz;
            } else {
                _E[2] = _E[2] + 8.75000000E-01*(_TMP1.xyz - _E[2]);
                _E[1] = (_TMP4.xyz + _TMP1.xyz) - _E[2];
                _E[5] = _E[1];
            } 
        } 
    } else {
        if (_TMP85 != _TMP89 && _TMP101 == _TMP85 && _TMP85 == _TMP69 && _TMP85 != _TMP77 && _TMP85 != _TMP73) { 
            _E[2] = _E[2] + 8.75000000E-01*(_TMP1.xyz - _E[2]);
            _E[1] = _TMP4.xyz + 1.25000000E-01*(_TMP1.xyz - _TMP4.xyz);
            _E[5] = _E[5] + 1.25000000E-01*(_TMP5.xyz - _E[5]);
        } 
    } 
    if (_TMP85 != _TMP73 && _TMP73 == _TMP81 && (_TMP85 != _TMP69 && (_TMP85 != _TMP97 || _TMP85 != _TMP89 || _TMP97 == _TMP129 && _TMP89 == _TMP121 || _TMP81 != _TMP97 && _TMP81 != _TMP93 || _TMP73 != _TMP89 && _TMP73 != _TMP77) || _TMP85 == _TMP77 && (_TMP69 == _TMP73 || _TMP85 == _TMP89 || _TMP73 != _TMP89) || _TMP85 == _TMP93 && (_TMP69 == _TMP73 || _TMP85 == _TMP97 || _TMP81 != _TMP97))) { 
        if (_TMP85 == _TMP93 && _TMP85 == _TMP89 && _TMP73 == _TMP77) { 
            _E[3] = (3.00000000E+00*_TMP4.xyz + _TMP3.xyz)*2.50000000E-01;
            _E[2] = _E[3];
            _E[1] = (_E[1] + _TMP3.xyz) - _E[3];
            _E[0] = _TMP1.xyz;
        } else {
            if (_TMP85 == _TMP77 && _TMP85 == _TMP97 && _TMP81 == _TMP93) { 
                _E[1] = (3.00000000E+00*_E[1] + _TMP1.xyz)*2.50000000E-01;
                _E[6] = _E[1];
                _E[3] = (_TMP4.xyz + _TMP1.xyz) - _E[1];
                _E[0] = _TMP3.xyz;
            } else {
                _E[0] = _E[0] + 8.75000000E-01*(_TMP3.xyz - _E[0]);
                _E[3] = (_TMP4.xyz + _TMP3.xyz) - _E[0];
                _E[1] = _E[3];
            } 
        } 
    } else {
        if (_TMP85 != _TMP73 && _TMP77 == _TMP85 && _TMP85 == _TMP93 && _TMP85 != _TMP69 && _TMP85 != _TMP81) { 
            _E[0] = _E[0] + 8.75000000E-01*(_TMP3.xyz - _E[0]);
            _E[3] = _TMP4.xyz + 1.25000000E-01*(_TMP3.xyz - _TMP4.xyz);
            _E[1] = _E[1] + 1.25000000E-01*(_TMP1.xyz - _E[1]);
        } 
    } 
    if (_TMP85 != _TMP81 && _TMP81 == _TMP97 && (_TMP85 != _TMP93 && (_TMP85 != _TMP89 || _TMP85 != _TMP73 || _TMP89 == _TMP125 && _TMP73 == _TMP105 || _TMP97 != _TMP89 && _TMP97 != _TMP101 || _TMP81 != _TMP73 && _TMP81 != _TMP69) || _TMP85 == _TMP69 && (_TMP93 == _TMP81 || _TMP85 == _TMP73 || _TMP81 != _TMP73) || _TMP85 == _TMP101 && (_TMP93 == _TMP81 || _TMP85 == _TMP89 || _TMP97 != _TMP89))) { 
        if (_TMP85 == _TMP101 && _TMP85 == _TMP73 && _TMP81 == _TMP69) { 
            _E[7] = (3.00000000E+00*_E[7] + _TMP7.xyz)*2.50000000E-01;
            _E[0] = _E[7];
            _E[3] = (_E[3] + _TMP7.xyz) - _E[7];
            _E[6] = _TMP3.xyz;
        } else {
            if (_TMP85 == _TMP69 && _TMP85 == _TMP89 && _TMP97 == _TMP101) { 
                _E[3] = (3.00000000E+00*_E[3] + _TMP3.xyz)*2.50000000E-01;
                _E[8] = _E[3];
                _E[7] = (_E[7] + _TMP3.xyz) - _E[3];
                _E[6] = _TMP7.xyz;
            } else {
                _E[6] = _E[6] + 8.75000000E-01*(_TMP7.xyz - _E[6]);
                _E[7] = (_E[7] + _TMP7.xyz) - _E[6];
                _E[3] = _E[7];
            } 
        } 
    } else {
        if (_TMP85 != _TMP81 && _TMP69 == _TMP85 && _TMP85 == _TMP101 && _TMP85 != _TMP93 && _TMP85 != _TMP97) { 
            _E[6] = _E[6] + 8.75000000E-01*(_TMP7.xyz - _E[6]);
            _E[7] = _E[7] + 1.25000000E-01*(_TMP7.xyz - _E[7]);
            _E[3] = _E[3] + 1.25000000E-01*(_TMP3.xyz - _E[3]);
        } 
    } 
    if (_fp.x < 3.33333343E-01) { 
        if (_fp.y < 3.33333343E-01) { 
            _TMP23 = _E[0];
        } else {
            if (_fp.y < 6.66666687E-01) { 
                _TMP24 = _E[3];
            } else {
                _TMP24 = _E[6];
            } 
            _TMP23 = _TMP24;
        } 
        _res = _TMP23;
    } else {
        if (_fp.x < 6.66666687E-01) { 
            if (_fp.y < 3.33333343E-01) { 
                _TMP25 = _E[1];
            } else {
                if (_fp.y < 6.66666687E-01) { 
                    _TMP26 = _TMP4.xyz;
                } else {
                    _TMP26 = _E[7];
                } 
                _TMP25 = _TMP26;
            } 
            _res = _TMP25;
        } else {
            if (_fp.y < 3.33333343E-01) { 
                _TMP27 = _E[2];
            } else {
                if (_fp.y < 6.66666687E-01) { 
                    _TMP28 = _E[5];
                } else {
                    _TMP28 = _E[8];
                } 
                _TMP27 = _TMP28;
            } 
            _res = _TMP27;
        } 
    } 
    _OUT._color1 = vec4(_res.x, _res.y, _res.z, 1.00000000E+00);
    FragColor = _OUT._color1;
    return;
} 
#endif