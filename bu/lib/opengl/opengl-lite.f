\ {nodoc}
\ ==============================================================================
\ ForestLib
\ OpenGL bindings (selected)
\ ========================= copyright 2014 Roger Levy ==========================

\ 5/8/13
\ support for extensions is not included yet ( will update to use allegro_gl )

: OPENGL32 ;

warning off

LIBRARY OpenGL32

\ Matrix
Function: glMatrixMode ( mode -- )
Function: glLoadIdentity ( -- )
Function: glPushMatrix ( -- )
Function: glPopMatrix ( -- )
Function: glRotatef ( deg x y z -- )
: glRotatef ( f: deg x y z -- )  4sf glRotatef ;
Function: glTranslatef ( x y z -- )
: glTranslatef ( f: x y z -- ) 3sf glTranslatef ;
Function: glScalef ( x y z -- )
: glScalef ( f: x y z -- ) 3sf glScalef ;

Function: glScaled ( x . y . z . -- )
: glScaled 3df glScaled ;

Function: glLoadMatrixd ( a -- )
Function: glLoadMatrixf ( a -- )
Function: glMultMatrixd ( a -- )
Function: glMultMatrixf ( a -- )
Function: glFrustum ( left . right . top . btm . near . far . -- )
: glFrustum  6df glFrustum ;
Function: glOrtho ( left . right . top . btm . near . far . -- )
: glOrtho  6df glOrtho ;

\ General
Function: glClipPlane ( GLenum-plane GLdouble-*equation -- )    \ equation is 4 double floats
Function: glColorMaterial ( face mode -- )
Function: glDisable ( caps -- )
Function: glEnable ( caps -- )
Function: glViewport ( ix iy icx icy -- )
Function: glBegin ( mode -- )
Function: glEnd ( -- )
Function: glDrawBuffer   (  GLenum-mode -- )

\ Material
Function: glMaterialf  (  GLenum-face GLenum-pname GLfloat-param -- )
: glMaterialf 1sf glMaterialf ;
Function: glMateriali  (  GLenum-face GLenum-pname GLint-param -- )
Function: glMaterialfv  (  GLenum-face GLenum-pname addr -- )
Function: glMaterialiv  (  GLenum-face GLenum-pname addr -- )

\ Textures
Function: glPixelStorei ( param Value -- )
Function: glPixelStoref ( param Value -- )
: glPixelStoref 1sf glPixelStoref ;
Function: glPixelTransferf ( param Value -- )
: glPixelTransferf   1sf glPixelTransferf ;
Function: glPixelTransferi ( param Value -- )
Function: glGenTextures ( n addr -- )
Function: glDeleteTextures ( n addr -- )
Function: glBindTexture ( target texture -- )
Function: glTexParameteri ( mode param Value -- )
Function: glTexParameterf ( mode param Value -- )
: glTexParameterf 1sf glTexParameterf ;
Function: glTexParameterfv   (  GLenum-target GLenum-pname GLfloat-*params -- )
Function: glTexParameteriv   (  GLenum-target GLenum-pname GLint-*params -- )
Function: glTexEnvi ( target param Value -- )
Function: glTexEnvf ( target param Value -- )
: glTexEnvf   1sf glTexEnvf ;
Function: glTexEnvfv  (  GLenum-target GLenum-pname GLfloat-*params -- )
Function: glTexEnviv   (  GLenum-target GLenum-pname GLint-*params -- )
Function: glTexGendv   (  GLenum-coord GLenum-pname GLdouble-*params -- )
Function: glTexGenfv   (  GLenum-coord GLenum-pname GLfloat-*params -- )
Function: glTexGeniv   (  GLenum-coord GLenum-pname GLint-*params -- )
Function: glTexImage1D  ( target level internal w border format type addr -- )
Function: glTexImage2D ( target level internal w h border format type addr -- )
Function: glTexSubImage2D ( target level x y w h format type addr -- )

Function: glTexCoord1i ( n -- )
Function: glTexCoord2i ( n n -- )
Function: glTexCoord3i ( n n n -- )
Function: glTexCoord1f ( n -- )
: glTexCoord1f  1sf glTexCoord1f ;
Function: glTexCoord2f ( n n -- )
: glTexCoord2f  2sf glTexCoord2f ;
Function: glTexCoord3f ( n n n -- )
: glTexCoord3f  3sf glTexCoord3f ;
Function: glTexCoord3i ( n n n -- )
Function: glTexCoord1iv ( a -- )
Function: glTexCoord1fv ( a -- )
Function: glTexCoord1dv ( a -- )
Function: glTexCoord2iv ( a -- )
Function: glTexCoord2fv ( a -- )
Function: glTexCoord2dv ( a -- )
Function: glTexCoord3iv ( a -- )
Function: glTexCoord3fv ( a -- )
Function: glTexCoord3dv ( a -- )

Function: glAreTexturesResident  ( GLsizei-n  GLuint-*textures GLboolean-*residences -- GLBoolean )
Function: glPrioritizeTextures (  GLsizei-n GLuint-*textures GLclampf-*priorities -- )

\ Attributes
Function: glPushAttrib ( mask -- )
Function: glPushClientAttrib ( mask -- )
Function: glPopAttrib ( -- )
Function: glPopClientAttrib ( -- )

\ Blending
Function: glAlphaFunc ( func ref -- )
: glAlphaFunc   1sf glAlphaFunc ;
Function: glBlendFunc ( source dest -- )
Function: glLogicOp ( n -- )

\ Scissor
Function: glScissor ( x y w h -- )

\ Depth buffer
Function: glDepthFunc ( func -- )
Function: glDepthMask ( flag -- )
Function: glDepthRange ( near near far far -- )
: glDepthRange   2df glDepthRange ;

\ Drawing
Function: glCullFace ( mode -- )
Function: glPolygonOffset ( factor units -- )
: glPolygonOffset   2sf glPolygonOffset ;
Function: glPolygonMode ( facemode mode -- )
Function: glColorMask  (  GLboolean-red GLboolean-green GLboolean-blue GLboolean-alpha -- )

Function: glColor3ubv ( a -- )
Function: glColor4ubv ( a -- )
Function: glColor3ub ( r g b -- )
Function: glColor4ub ( r g b a -- )
Function: glColor3fv ( addr -- )
Function: glColor4fv ( addr -- )
Function: glColor3f ( r g b -- )
: glColor3f   3sf glColor3f ;
Function: glColor4f ( r g b a -- )
: glColor4f   4sf glColor4f ;

Function: glVertex2i ( x y -- )
Function: glVertex3i ( x y z -- )
Function: glVertex2f ( x y -- )
: glVertex2f   2sf glVertex2f ;
Function: glVertex3f ( x y z -- )
: glVertex3f   3sf glVertex3f ;
Function: glVertex2iv ( a -- )
Function: glVertex2dv ( addr -- )
Function: glVertex2sv ( addr -- )
Function: glVertex2fv ( addr -- )
Function: glVertex3iv ( a -- )
Function: glVertex3fv ( addr -- )
Function: glVertex3sv ( addr -- )
Function: glVertex3dv ( addr -- )

Function: glFrontFace ( mode -- )
Function: glLineStipple ( factor pattern -- )
Function: glLineWidth ( width -- )
: glLineWidth   1sf glLineWidth ;
Function: glPolygonStipple ( &mask -- )


\ Edge flags - ommitted

\ Evaluators
Function: glEvalCoord1f ( gl-float -- )
: glEvalCoord1f 1sf glEvalCoord1f ;
Function: glEvalCoord2f ( gl-float gl-float -- )
: glEvalCoord2f 2sf glEvalCoord2f ;
Function: glEvalCoord1dv ( addr -- )
Function: glEvalCoord2dv ( addr -- )
Function: glEvalCoord1fv ( addr -- )
Function: glEvalCoord2fv ( addr -- )
Function: glEvalMesh1 (  GLenum-mode GLint-i1 GLint-i2 -- )
Function: glEvalMesh2 ( GLenum-mode GLint-i1 GLint-i2 GLint-j1 GLint-j2 -- )
Function: glEvalPoint1 (  GLint-i -- )
Function: glEvalPoint2 (  GLint-i GLint-j -- )
Function: glMap2d   (  GLenum-target GLdouble-u1 . GLdouble-u2 . GLint-ustride GLint-uorder GLdouble-v1 . GLdouble-v2 . GLint-vstride GLint-vorder GLdouble-*points -- )
: glMap2d  >r >r >r 2df 2>r 2>r >r >r 4df r> r> 2r> 2r> r> r> r> glMap2d ;
Function: glMap2f   (  GLenum-target GLfloat-u1 GLfloat-u2 GLint-ustride GLint-uorder GLfloat-v1 GLfloat-v2 GLint-vstride GLint-vorder GLfloat-*points -- )
: glMap2f  >r >r >r 1sf 2>r >r >r 4sf r> r> 2r> r> r> r> glMap2f ;
Function: glMap1d   (  GLenum-target GLdouble-u1 . GLdouble-u2 . GLint-stride GLint-order GLdouble-*points -- )
: glMap1d  >r >r >r 2df r> r> r> glMap1d ;
Function: glMap1f   (  GLenum-target GLfloat-u1 GLfloat-u2 GLint-stride GLint-order GLfloat-*points -- )
: glMap1f   >r >r >r 2sf r> r> r> glMap1f ;
Function: glMapGrid1d  (  GLint-un  GLdouble-u1  GLdouble-u2 -- )
Function: glMapGrid1f  (  GLint-un  GLfloat-u1  GLfloat-u2 -- )
Function: glMapGrid2d  (  GLint-un  GLdouble-u1  GLdouble-u2  GLint-vn  GLdouble-v1 GLdouble-v2 -- )
Function: glMapGrid2f  (  GLint-un GLfloat-u1  GLfloat-u2  GLint-vn  GLfloat-v1 GLfloat-v2 -- )
: glMapGrid1d   2df glMapGrid1d ;
: glMapGrid1f   2sf glMapGrid1f ;
: glMapGrid2d   2df 2>r 2>r >r 2df 2r> 2r> r> glMapGrid2d ;
: glMapGrid2f   2sf 2>r >r 2sf 2r> r> glMapGrid2f ;

\ Vertex arrays
Function: glEnableClientState ( mode -- )
Function: glDisableClientState ( mode -- )
Function: glVertexPointer ( size type stride addr -- )
Function: glNormalPointer ( type stride addr -- )
Function: glColorPointer ( size type stride addr -- )
Function: glTexCoordPointer ( size type stride addr -- )
Function: glEdgeFlagPointer ( type stride addr -- )
Function: glArrayElement ( n -- )
Function: glInterleavedArrays  (  GLenum-format GLsizei-stride GLvoid-*pointer -- )
Function: glNormalPointer (  GLenum-type GLsizei-stride GLvoid-*pointer -- )
Function: glDrawArrays   (  GLenum-mode GLint-first GLsizei-count -- )
Function: glDrawElements ( primitive count type addr -- )


\ Lighting & Fog
Function: glLightModeli ( pname param -- )
Function: glLightModelf ( pname param -- )
: glLightModelf   1sf glLightModelf ;
Function: glLightModeliv ( pname addr -- )
Function: glLightModelfv ( pname addr -- )
Function: glShadeModel ( mode -- )
Function: glLightiv ( light param addr -- )
Function: glLightfv ( light param addr -- )
Function: glLightf  (  GLenum-light GLenum-pname GLfloat-param -- )
: glLightf  1sf glLightf ;
Function: glLighti  (  GLenum-light GLenum-pname GLint-param -- )
Function: glColorMaterial ( param n -- )
Function: glNormal3s ( X Y Z -- )
Function: glNormal3i ( X Y Z -- )
Function: glNormal3f ( X Y Z -- )
Function: glNormal3fv  (  addr -- )
Function: glNormal3iv  (  addr -- )
Function: glNormal3sv  (  addr -- )
: glNormal3f  3sf  glNormal3f ;
Function: glFogf ( param Value -- )
: glFogf   1sf  glFogf ;
Function: glFogi (  GLenum-pname GLint-param -- )

\ Depth buffer
Function: glClearDepth   (  GLclampd-depth.1 GLclampd-depth.2 -- )
: glClearDepth   1df glClearDepth ;

\ Stencil buffer
Function: glClearStencil  (  GLint-s -- )
Function: glStencilFunc ( func ref mask -- )
Function: glStencilMask ( mask -- )
Function: glStencilOp ( fail zfail zpass -- )

\ Copy Pixels
Function: glCopyTexImage1D   (  GLenum-target GLint-level GLenum-internalformat GLint-x GLint-y GLsizei-width GLint-border -- )
Function: glCopyTexImage2D   (  GLenum-target GLint-level GLenum-internalformat GLint-x GLint-y GLsizei-width GLsizei-height GLint-border -- )
Function: glCopyPixels (  GLint-x GLint-y GLsizei-width GLsizei-height GLenum-type -- )
Function: glCopyTexSubImage1D   (  GLenum-target GLint-level GLint-xoffset GLint-x GLint-y GLsizei-width -- )
Function: glCopyTexSubImage2D   (  GLenum-target GLint-level GLint-xoffset GLint-yoffset GLint-x GLint-y GLsizei-width -- )
Function: glReadBuffer ( mode -- )

\ Read Pixels
Function: glReadPixels   (   x y width height format type &Pixels -- )

\ Draw Pixels
Function: glDrawPixels   (   width height format type &Pixels -- )

\ "Get" functions
Function: glGetClipPlane (  GLenum-plane GLdouble-*equation -- )
Function: glGetString ( n -- a )
Function: glGetError ( -- n )
Function: glGetMapdv   (  GLenum-target GLenum-query GLdouble-*v -- )
Function: glGetMapiv   (  GLenum-target GLenum-query GLfloat-*v -- )
Function: glGetMapfv   (  GLenum-target GLenum-query GLint-*v -- )
Function: glGetLightiv (  GLenum-light GLenum-pname GLfloat-*params -- )
Function: glGetLightfv (  GLenum-light GLenum-pname GLint-*params -- )
Function: glGetBooleanv ( param addr -- )
Function: glGetIntegerv ( param addr -- )
Function: glGetFloatv ( param addr -- )
Function: glGetDoublev ( param addr -- )

Function: glGetMaterialfv (  GLenum-face GLenum-pname GLfloat-*params -- )
Function: glGetMaterialiv (  GLenum-face GLenum-pname GLint-*params -- )
Function: glGetPixelMapfv (  GLenum-mmap GLfloat- *Values -- )
Function: glGetPixelMapuiv   (  GLenum-map GLuint-*Values -- )
Function: glGetPixelMapusv   (  GLenum-map GLushort-*Values -- )
Function: glGetPointerv   (  GLenum-pname GLvoid*-*params -- )
Function: glGetPolygonStipple   (  GLubyte-*mask -- )
Function: glGetString   (  GLenum-name -- addr )
Function: glGetTexEnvfv  (  GLenum-target GLenum-pname GLfloat-*params -- )
Function: glGetTexEnviv   (  GLenum-target GLenum-pname GLint-*params -- )
Function: glGetTexGendv   (  GLenum-coord GLenum-pname GLdouble-*params -- )
Function: glGetTexGenfv   (  GLenum-coord GLenum-pname GLfloat-*params -- )
Function: glGetTexGeniv   (  GLenum-coord GLenum-pname GLint-*params -- )
Function: glGetTexImage  (   target level format type Pixels -- )
Function: glGetTexLevelParameterfv (  GLenum-target GLint-level GLenum-pname GLfloat-*params -- )
Function: glGetTexLevelParameteriv (  GLenum-target GLint-level GLenum-pname GLint-*params -- )
Function: glGetTexParameterfv   (  GLenum-target GLenum-pname GLfloat-*params -- )
Function: glGetTexParameteriv   (  GLenum-target GLenum-pname GLint-*params -- )

\ "Is" functions
Function: glIsEnabled (  GLenum-cap -- flag )
Function: glIsList   (  GLuint-list -- flag )
Function: glIsTexture   (  GLuint-tex -- flag )

\ OpenGL 1.1 constants are automatically found by the SwiftForth compiler
\  Here are the constants for versions 1.2 through 2.1, from glext.h

\ #fndef GL_VERSION_1_2
#define GL_UNSIGNED_BYTE_3_3_2            $8032
#define GL_UNSIGNED_SHORT_4_4_4_4         $8033
#define GL_UNSIGNED_SHORT_5_5_5_1         $8034
#define GL_UNSIGNED_INT_8_8_8_8           $8035
#define GL_UNSIGNED_INT_10_10_10_2        $8036
#define GL_TEXTURE_BINDING_3D             $806A
#define GL_PACK_SKIP_IMAGES               $806B
#define GL_PACK_IMAGE_HEIGHT              $806C
#define GL_UNPACK_SKIP_IMAGES             $806D
#define GL_UNPACK_IMAGE_HEIGHT            $806E
#define GL_TEXTURE_3D                     $806F
#define GL_PROXY_TEXTURE_3D               $8070
#define GL_TEXTURE_DEPTH                  $8071
#define GL_TEXTURE_WRAP_R                 $8072
#define GL_MAX_3D_TEXTURE_SIZE            $8073
#define GL_UNSIGNED_BYTE_2_3_3_REV        $8362
#define GL_UNSIGNED_SHORT_5_6_5           $8363
#define GL_UNSIGNED_SHORT_5_6_5_REV       $8364
#define GL_UNSIGNED_SHORT_4_4_4_4_REV     $8365
#define GL_UNSIGNED_SHORT_1_5_5_5_REV     $8366
#define GL_UNSIGNED_INT_8_8_8_8_REV       $8367
#define GL_UNSIGNED_INT_2_10_10_10_REV    $8368
#define GL_BGR                            $80E0
#define GL_BGRA                           $80E1
#define GL_MAX_ELEMENTS_VERTICES          $80E8
#define GL_MAX_ELEMENTS_INDICES           $80E9
#define GL_CLAMP_TO_EDGE                  $812F
#define GL_TEXTURE_MIN_LOD                $813A
#define GL_TEXTURE_MAX_LOD                $813B
#define GL_TEXTURE_BASE_LEVEL             $813C
#define GL_TEXTURE_MAX_LEVEL              $813D
#define GL_SMOOTH_POINT_SIZE_RANGE        $0B12
#define GL_SMOOTH_POINT_SIZE_GRANULARITY  $0B13
#define GL_SMOOTH_LINE_WIDTH_RANGE        $0B22
#define GL_SMOOTH_LINE_WIDTH_GRANULARITY  $0B23
#define GL_ALIASED_LINE_WIDTH_RANGE       $846E
\ #endif

\ \ #fndef GL_VERSION_1_2_DEPRECATED
\ #define GL_RESCALE_NORMAL                 $803A
\ #define GL_LIGHT_MODEL_COLOR_CONTROL      $81F8
\ #define GL_SINGLE_COLOR                   $81F9
\ #define GL_SEPARATE_SPECULAR_COLOR        $81FA
\ #define GL_ALIASED_POINT_SIZE_RANGE       $846D
\ \ #endif

\ #fndef GL_ARB_imaging
#define GL_CONSTANT_COLOR                 $8001
#define GL_ONE_MINUS_CONSTANT_COLOR       $8002
#define GL_CONSTANT_ALPHA                 $8003
#define GL_ONE_MINUS_CONSTANT_ALPHA       $8004
#define GL_BLEND_COLOR                    $8005
#define GL_FUNC_ADD                       $8006
#define GL_MIN                            $8007
#define GL_MAX                            $8008
#define GL_BLEND_EQUATION                 $8009
#define GL_FUNC_SUBTRACT                  $800A
#define GL_FUNC_REVERSE_SUBTRACT          $800B
\ #endif

\ #fndef GL_VERSION_1_3
#define GL_TEXTURE0                       $84C0
#define GL_ACTIVE_TEXTURE                 $84E0
#define GL_MULTISAMPLE                    $809D
#define GL_SAMPLE_ALPHA_TO_COVERAGE       $809E
#define GL_SAMPLE_ALPHA_TO_ONE            $809F
#define GL_SAMPLE_COVERAGE                $80A0
#define GL_SAMPLE_BUFFERS                 $80A8
#define GL_SAMPLES                        $80A9
#define GL_SAMPLE_COVERAGE_VALUE          $80AA
#define GL_SAMPLE_COVERAGE_INVERT         $80AB
#define GL_TEXTURE_CUBE_MAP               $8513
#define GL_TEXTURE_BINDING_CUBE_MAP       $8514
#define GL_TEXTURE_CUBE_MAP_POSITIVE_X    $8515
#define GL_TEXTURE_CUBE_MAP_NEGATIVE_X    $8516
#define GL_TEXTURE_CUBE_MAP_POSITIVE_Y    $8517
#define GL_TEXTURE_CUBE_MAP_NEGATIVE_Y    $8518
#define GL_TEXTURE_CUBE_MAP_POSITIVE_Z    $8519
#define GL_TEXTURE_CUBE_MAP_NEGATIVE_Z    $851A
#define GL_PROXY_TEXTURE_CUBE_MAP         $851B
#define GL_MAX_CUBE_MAP_TEXTURE_SIZE      $851C
#define GL_COMPRESSED_RGB                 $84ED
#define GL_COMPRESSED_RGBA                $84EE
#define GL_TEXTURE_COMPRESSION_HINT       $84EF
#define GL_TEXTURE_COMPRESSED_IMAGE_SIZE  $86A0
#define GL_TEXTURE_COMPRESSED             $86A1
#define GL_NUM_COMPRESSED_TEXTURE_FORMATS $86A2
#define GL_COMPRESSED_TEXTURE_FORMATS     $86A3
#define GL_CLAMP_TO_BORDER                $812D

\ #fndef GL_VERSION_1_4
#define GL_BLEND_DST_RGB                  $80C8
#define GL_BLEND_SRC_RGB                  $80C9
#define GL_BLEND_DST_ALPHA                $80CA
#define GL_BLEND_SRC_ALPHA                $80CB
#define GL_POINT_FADE_THRESHOLD_SIZE      $8128
#define GL_DEPTH_component16              $81A5
#define GL_DEPTH_component24              $81A6
#define GL_DEPTH_component32              $81A7
#define GL_MIRRORED_REPEAT                $8370
#define GL_MAX_TEXTURE_LOD_BIAS           $84FD
#define GL_TEXTURE_LOD_BIAS               $8501
#define GL_INCR_WRAP                      $8507
#define GL_DECR_WRAP                      $8508
#define GL_TEXTURE_DEPTH_SIZE             $884A
#define GL_TEXTURE_COMPARE_MODE           $884C
#define GL_TEXTURE_COMPARE_FUNC           $884D
\ #endif

\ #fndef GL_VERSION_1_5
#define GL_BUFFER_SIZE                    $8764
#define GL_BUFFER_USAGE                   $8765
#define GL_QUERY_COUNTER_BITS             $8864
#define GL_CURRENT_QUERY                  $8865
#define GL_QUERY_RESULT                   $8866
#define GL_QUERY_RESULT_AVAILABLE         $8867
#define GL_ARRAY_BUFFER                   $8892
#define GL_ELEMENT_ARRAY_BUFFER           $8893
#define GL_ARRAY_BUFFER_BINDING           $8894
#define GL_ELEMENT_ARRAY_BUFFER_BINDING   $8895
#define GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING $889F
#define GL_READ_ONLY                      $88B8
#define GL_WRITE_ONLY                     $88B9
#define GL_READ_WRITE                     $88BA
#define GL_BUFFER_ACCESS                  $88BB
#define GL_BUFFER_MAPPED                  $88BC
#define GL_BUFFER_MAP_POINTER             $88BD
#define GL_STREAM_DRAW                    $88E0
#define GL_STREAM_READ                    $88E1
#define GL_STREAM_COPY                    $88E2
#define GL_STATIC_DRAW                    $88E4
#define GL_STATIC_READ                    $88E5
#define GL_STATIC_COPY                    $88E6
#define GL_DYNAMIC_DRAW                   $88E8
#define GL_DYNAMIC_READ                   $88E9
#define GL_DYNAMIC_COPY                   $88EA
#define GL_SAMPLES_PASSED                 $8914
\ #endif


\ #fndef GL_VERSION_2_0
#define GL_BLEND_EQUATION_RGB             $8009
#define GL_VERTEX_ATTRIB_ARRAY_ENABLED    $8622
#define GL_VERTEX_ATTRIB_ARRAY_SIZE       $8623
#define GL_VERTEX_ATTRIB_ARRAY_STRIDE     $8624
#define GL_VERTEX_ATTRIB_ARRAY_TYPE       $8625
#define GL_CURRENT_VERTEX_ATTRIB          $8626
#define GL_VERTEX_PROGRAM_POINT_SIZE      $8642
#define GL_VERTEX_ATTRIB_ARRAY_POINTER    $8645
#define GL_STENCIL_BACK_FUNC              $8800
#define GL_STENCIL_BACK_FAIL              $8801
#define GL_STENCIL_BACK_PASS_DEPTH_FAIL   $8802
#define GL_STENCIL_BACK_PASS_DEPTH_PASS   $8803
#define GL_MAX_DRAW_BUFFERS               $8824
#define GL_DRAW_BUFFER0                   $8825
#define GL_DRAW_BUFFER1                   $8826
#define GL_DRAW_BUFFER2                   $8827
#define GL_DRAW_BUFFER3                   $8828
#define GL_DRAW_BUFFER4                   $8829
#define GL_DRAW_BUFFER5                   $882A
#define GL_DRAW_BUFFER6                   $882B
#define GL_DRAW_BUFFER7                   $882C
#define GL_DRAW_BUFFER8                   $882D
#define GL_DRAW_BUFFER9                   $882E
#define GL_DRAW_BUFFER10                  $882F
#define GL_DRAW_BUFFER11                  $8830
#define GL_DRAW_BUFFER12                  $8831
#define GL_DRAW_BUFFER13                  $8832
#define GL_DRAW_BUFFER14                  $8833
#define GL_DRAW_BUFFER15                  $8834
#define GL_BLEND_EQUATION_ALPHA           $883D
#define GL_MAX_VERTEX_ATTRIBS             $8869
#define GL_VERTEX_ATTRIB_ARRAY_NORMALIZED $886A
#define GL_MAX_TEXTURE_IMAGE_UNITS        $8872
#define GL_FRAGMENT_SHADER                $8B30
#define GL_VERTEX_SHADER                  $8B31
#define GL_MAX_FRAGMENT_UNIFORM_componentS $8B49
#define GL_MAX_VERTEX_UNIFORM_componentS  $8B4A
#define GL_MAX_VARYING_FLOATS             $8B4B
#define GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS $8B4C
#define GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS $8B4D
#define GL_SHADER_TYPE                    $8B4F
#define GL_FLOAT_VEC2                     $8B50
#define GL_FLOAT_VEC3                     $8B51
#define GL_FLOAT_VEC4                     $8B52
#define GL_INT_VEC2                       $8B53
#define GL_INT_VEC3                       $8B54
#define GL_INT_VEC4                       $8B55
#define GL_BOOL                           $8B56
#define GL_BOOL_VEC2                      $8B57
#define GL_BOOL_VEC3                      $8B58
#define GL_BOOL_VEC4                      $8B59
#define GL_FLOAT_MAT2                     $8B5A
#define GL_FLOAT_MAT3                     $8B5B
#define GL_FLOAT_MAT4                     $8B5C
#define GL_SAMPLER_1D                     $8B5D
#define GL_SAMPLER_2D                     $8B5E
#define GL_SAMPLER_3D                     $8B5F
#define GL_SAMPLER_CUBE                   $8B60
#define GL_SAMPLER_1D_SHADOW              $8B61
#define GL_SAMPLER_2D_SHADOW              $8B62
#define GL_DELETE_STATUS                  $8B80
#define GL_compile_STATUS                 $8B81
#define GL_LINK_STATUS                    $8B82
#define GL_VALIDATE_STATUS                $8B83
#define GL_INFO_LOG_LENGTH                $8B84
#define GL_ATTACHED_SHADERS               $8B85
#define GL_ACTIVE_UNIFORMS                $8B86
#define GL_ACTIVE_UNIFORM_MAX_LENGTH      $8B87
#define GL_SHADER_SOURCE_LENGTH           $8B88
#define GL_ACTIVE_ATTRIBUTES              $8B89
#define GL_ACTIVE_ATTRIBUTE_MAX_LENGTH    $8B8A
#define GL_FRAGMENT_SHADER_DERIVATIVE_HINT $8B8B
#define GL_SHADING_LANGUAGE_VERSION       $8B8C
#define GL_CURRENT_PROGRAM                $8B8D
#define GL_POINT_SPRITE_COORD_ORIGIN      $8CA0
#define GL_LOWER_LEFT                     $8CA1
#define GL_UPPER_LEFT                     $8CA2
#define GL_STENCIL_BACK_REF               $8CA3
#define GL_STENCIL_BACK_VALUE_MASK        $8CA4
#define GL_STENCIL_BACK_WRITEMASK         $8CA5
\ #endif

\ #fndef GL_VERSION_2_1
#define GL_pixel_PACK_BUFFER              $88EB
#define GL_pixel_UNPACK_BUFFER            $88EC
#define GL_pixel_PACK_BUFFER_BINDING      $88ED
#define GL_pixel_UNPACK_BUFFER_BINDING    $88EF
#define GL_FLOAT_MAT2x3                   $8B65
#define GL_FLOAT_MAT2x4                   $8B66
#define GL_FLOAT_MAT3x2                   $8B67
#define GL_FLOAT_MAT3x4                   $8B68
#define GL_FLOAT_MAT4x2                   $8B69
#define GL_FLOAT_MAT4x3                   $8B6A
#define GL_SRGB                           $8C40
#define GL_SRGB8                          $8C41
#define GL_SRGB_ALPHA                     $8C42
#define GL_SRGB8_ALPHA8                   $8C43
#define GL_COMPRESSED_SRGB                $8C48
#define GL_COMPRESSED_SRGB_ALPHA          $8C49
\ #endif


warning on
