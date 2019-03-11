Shader "Ascendashacker/SaturationAndContrast" {
	Properties{
		_Color("Color", Color) = (1,1,1,1)
		_MainTex("Albedo (RGB)", 2D) = "white" {}
		_Contrast("Contrast",Float) = 0
		_Saturation("Saturation",Float) = 0
	}
		SubShader{
			Tags { "RenderType" = "Opaque" }
			LOD 200
			Pass{
			CGPROGRAM

#pragma target 3.0
#pragma vertex vert
#pragma fragment frag
#include "UnityCG.cginc"
		sampler2D _MainTex; float4 _MainTex_ST;
		float _Saturation;
		float _Contrast;
		struct VertexInput {
			float4 uv:TEXCOORD0;
			float4 vertex :POSITION;
		};
		struct VertexOutput {
			float4 uv:TEXCOORD0;
			float4 pos :SV_POSITION;
		};
		fixed4 _Color;
		//获取灰度值
		float GetGray(float3 texColor) {
			return texColor.r *0.299 + texColor.g*0.587 + texColor.b*0.114;
		}
		//获取饱和度
		float3 GetSaturation(float3 texColor) {
			fixed average = (texColor.r + texColor.g + texColor.b) / 3;
			texColor.rgb += (texColor.rgb - average) * _Saturation;
			return texColor;
		}
		VertexOutput vert(VertexInput input) {
			VertexOutput output;
			output.uv = input.uv;
			output.pos = UnityObjectToClipPos(input.vertex);
			return output;
		}

		float4 frag(VertexOutput input) :COLOR {
			float4 texColor = tex2D(_MainTex,TRANSFORM_TEX(input.uv, _MainTex));
			float gray = GetGray(texColor.xyz);
			texColor.xyz = GetSaturation(texColor.xyz);
			float4 finalColor = texColor* _Color;
			return (finalColor + (gray - 0.5)* _Contrast);
		}
		ENDCG
}

		}
			FallBack "Diffuse"
}
