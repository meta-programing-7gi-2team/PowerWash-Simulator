//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/Universal Render Pipeline/LutBuilderHdr" {
Properties {
}
SubShader {
 LOD 100
 Tags { "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" }
 Pass {
  Name "LutBuilderHdr"
  LOD 100
  Tags { "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" }
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 50215
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_TONEMAP_ACES" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
Local Keywords { "_TONEMAP_ACES" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_TONEMAP_NEUTRAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
Local Keywords { "_TONEMAP_NEUTRAL" }
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
Local Keywords { "_TONEMAP_ACES" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
Local Keywords { "_TONEMAP_ACES" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_TONEMAP_NEUTRAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "STEREO_INSTANCING_ON" }
Local Keywords { "_TONEMAP_NEUTRAL" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}