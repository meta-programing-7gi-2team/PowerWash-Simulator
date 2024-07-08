//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "URP_SpongeBob_Light" {
Properties {
_AlphaCutoff ("Alpha Cutoff ", Range(0, 1)) = 0.5
_EmissionColor ("Emission Color", Color) = (1,1,1,1)
[ASEBegin] _VFX_Spongebob_BuzLight ("VFX_Spongebob_BuzLight", 2D) = "white" { }
_ExtraLight_BuzLight ("ExtraLight_BuzLight", 2D) = "white" { }
_ExtraLight_BuzLight_2 ("ExtraLight_BuzLight_2", 2D) = "white" { }
_FinalMask_BuzLight ("FinalMask_BuzLight", 2D) = "white" { }
_OpacityMultiplier ("OpacityMultiplier", Range(0, 2.5)) = 0.75
_BuzLight_Speed ("BuzLight_Speed", Vector) = (0.25,0,0,0)
[ASEEnd] _BuzLight_2_Speed ("BuzLight_2_Speed", Vector) = (0.15,0,0,0)
_texcoord ("", 2D) = "white" { }
}
SubShader {
 Tags { "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" }
 Pass {
  Name "Forward"
  Tags { "LIGHTMODE" = "UniversalForward" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" }
  Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
  ZWrite Off
  GpuProgramID 4760
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
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
}
}
 Pass {
  Name "ShadowCaster"
  Tags { "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" }
  ColorMask 0 0
  GpuProgramID 128201
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
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
Keywords { "_CASTING_PUNCTUAL_LIGHT_SHADOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" "_CASTING_PUNCTUAL_LIGHT_SHADOW" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "DepthOnly"
  Tags { "LIGHTMODE" = "DepthOnly" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" }
  ColorMask 0 0
  GpuProgramID 194434
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
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
}
}
}
Fallback "Hidden/InternalErrorShader"
CustomEditor "UnityEditor.ShaderGraph.PBRMasterGUI"
}