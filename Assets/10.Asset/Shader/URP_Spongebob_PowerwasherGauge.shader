//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "URP_Spongebob_PowerwasherGauge" {
Properties {
_AlphaCutoff ("Alpha Cutoff ", Range(0, 1)) = 0.5
_EmissionColor ("Emission Color", Color) = (1,1,1,1)
[ASEBegin] _BaseColour ("Base Colour", 2D) = "white" { }
_ToggleFOV ("_ToggleFOV", Range(0, 1)) = 0
_EmissiveColour ("Emissive Colour", Color) = (0,0,0,0)
_FlipbookRows ("Flipbook Rows", Float) = 2
_FlipbookColumns ("Flipbook Columns", Float) = 5
[ASEEnd] _FlipbookFrame ("Flipbook Frame", Float) = 0
}
SubShader {
 Tags { "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" }
 Pass {
  Name "Forward"
  Tags { "LIGHTMODE" = "UniversalForward" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" }
  Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
  ZWrite Off
  GpuProgramID 39676
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_OFF" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MIXED_LIGHTING_SUBTRACTIVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "LIGHTMAP_SHADOW_MIXING" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_SHADOWMASK" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP2" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_EXP" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "FOG_LINEAR" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRLIGHTMAP_COMBINED" "LIGHTMAP_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "ShadowCaster"
  Tags { "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" }
  ColorMask 0 0
  GpuProgramID 89749
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_CASTING_PUNCTUAL_LIGHT_SHADOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_CASTING_PUNCTUAL_LIGHT_SHADOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_CASTING_PUNCTUAL_LIGHT_SHADOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" "_CASTING_PUNCTUAL_LIGHT_SHADOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "_CASTING_PUNCTUAL_LIGHT_SHADOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" "_CASTING_PUNCTUAL_LIGHT_SHADOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_CASTING_PUNCTUAL_LIGHT_SHADOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" "_CASTING_PUNCTUAL_LIGHT_SHADOW" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_CASTING_PUNCTUAL_LIGHT_SHADOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_CASTING_PUNCTUAL_LIGHT_SHADOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_CASTING_PUNCTUAL_LIGHT_SHADOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" "_CASTING_PUNCTUAL_LIGHT_SHADOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "_CASTING_PUNCTUAL_LIGHT_SHADOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" "_CASTING_PUNCTUAL_LIGHT_SHADOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_CASTING_PUNCTUAL_LIGHT_SHADOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" "_CASTING_PUNCTUAL_LIGHT_SHADOW" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "DepthOnly"
  Tags { "LIGHTMODE" = "DepthOnly" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" }
  ColorMask 0 0
  GpuProgramID 171708
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "Universal2D"
  Tags { "LIGHTMODE" = "Universal2D" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" }
  Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
  ZWrite Off
  GpuProgramID 310137
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "DepthNormals"
  Tags { "LIGHTMODE" = "DepthNormals" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" }
  GpuProgramID 339081
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
}
Fallback "Hidden/InternalErrorShader"
CustomEditor "UnityEditor.ShaderGraph.PBRMasterGUI"
}