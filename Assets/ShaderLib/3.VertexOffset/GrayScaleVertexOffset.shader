Shader "Ascendashacker/GrayScaleVertexOffset" {
	Properties{
		_Texture("Texture（漫反射贴图）",2D) = "white"{}
		_Offset("_Offset（偏移量）", Vector) = (1024,1024,0,0)
	}
		SubShader{
		//Blend SrcAlpha OneMinusSrcAlpha
		Pass
	{
		Cull Off
		CGPROGRAM
#pragma vertex vert
#pragma fragment frag
#include "UnityCG.cginc"
			//与周围的像素偏差越大，就越有凹凸感。
	sampler2D _Texture; float4 _Texture_ST;
	float2 _Offset;
	float4 _MainTex_TexelSize;
	struct m2v
	{
		float4 vex : POSITION;
		float2 uv :TEXCOORD0;
		float3 normal : NORMAL;
	};
	struct v2f
	{
		float2 uv :TEXCOORD0;
		float4 position : SV_POSITION;
	};

	v2f vert(m2v v)
	{
		v2f f;
		f.position = UnityObjectToClipPos(v.vex);
		f.uv = v.uv;
		return f;
	}
	fixed4 frag(v2f f) : SV_Target
	{
		float2 offsetUV = float2(f.uv.x -1/ _Offset.x,f.uv.y -1/ _Offset.y);
		float4 offsetTexColor = tex2D(_Texture, offsetUV);
		float4 texColor = tex2D(_Texture,TRANSFORM_TEX(f.uv,_Texture));
		float4 newTexColor = texColor - offsetTexColor;
		float4 finalColor = dot(newTexColor,fixed3(0.3,0.59,0.11));
		//finalColor.b = 1;
		finalColor += float4(0.5,0.5,0.5,0);
		//finalColor.r = 0; finalColor.g = 0;
		return finalColor;
	}
		ENDCG
	}
	}
		FallBack "Diffuse"
}