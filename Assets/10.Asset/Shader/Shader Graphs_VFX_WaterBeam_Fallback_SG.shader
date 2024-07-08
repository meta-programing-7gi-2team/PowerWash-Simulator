//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Shader Graphs/VFX_WaterBeam_Fallback_SG" {
Properties {
_Fresnel_Bias ("FresnelBias", Float) = 0
_ColorA ("ColorA", Color) = (1,1,1,0)
_Length ("Length", Float) = 1
_FresnelScale ("FresnelScale", Float) = 2
_Fresnel_Power ("FresnelPower", Float) = 8
_Displacement ("Displacement", 2D) = "grey" { }
_Alphamask ("Alphamask", 2D) = "white" { }
_Offset ("Offset", Float) = 0.1
_Opacity ("Opacity", Float) = 0.2
_Refraction ("Refraction", Float) = 0.32
_DepthOffRadiusNear ("(DepthOff) RadiusNear", Float) = 2.75
_DepthOffRadiusFar ("(DepthOff) RadiusFar", Float) = 2.95
unity_Lightmaps ("unity_Lightmaps", 2DArray) = "" { }
unity_LightmapsInd ("unity_LightmapsInd", 2DArray) = "" { }
unity_ShadowMasks ("unity_ShadowMasks", 2DArray) = "" { }
[KeywordEnum(ON, OFF)] _DEPTH ("Depth", Float) = 0
}
SubShader {
 Tags { "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
 Pass {
  Name "Pass"
  Tags { "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
  Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
  ZWrite Off
  GpuProgramID 63549
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "ShadowCaster"
  Tags { "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
  Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
  ColorMask 0 0
  GpuProgramID 124714
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "DepthOnly"
  Tags { "LIGHTMODE" = "DepthOnly" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
  Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
  ColorMask 0 0
  GpuProgramID 185691
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "DepthNormals"
  Tags { "LIGHTMODE" = "DepthNormals" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
  Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
  GpuProgramID 200091
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
}
}
}
SubShader {
 Tags { "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
 Pass {
  Name "Pass"
  Tags { "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
  Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
  ZWrite Off
  GpuProgramID 310194
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "ShadowCaster"
  Tags { "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
  Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
  ColorMask 0 0
  GpuProgramID 372229
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "DepthOnly"
  Tags { "LIGHTMODE" = "DepthOnly" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
  Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
  ColorMask 0 0
  GpuProgramID 426713
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "DepthNormals"
  Tags { "LIGHTMODE" = "DepthNormals" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
  Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
  GpuProgramID 494109
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
Local Keywords { "_DEPTH_OFF" }
"// shader disassembly not supported on DXBC"
}
}
}
}
Fallback "Hidden/Shader Graph/FallbackError"
}