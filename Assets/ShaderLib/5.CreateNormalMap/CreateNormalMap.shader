Shader "Ascendashacker/CreateNormalMap"
{
	Properties
	{
		_MainTex("Texture", 2D) = "white" {}
		_DetailScale("DetailScale",float) = 0.5
		_HeightScale("HeightScale",float) = 1
	}
		SubShader
		{
			Tags { "RenderType" = "Opaque" }
			LOD 100
			//Blend SrcAlpha OneMinusSrcAlpha
			Pass
			{
				CGPROGRAM
				#pragma vertex vert
				#pragma fragment frag
				//#pragma enable_d3d11_debug_symbols  //需要断点调试的Shader加上的
				#include "UnityCG.cginc"
				#include "Lighting.cginc"
				struct appdata
				{
					float4 vertex : POSITION;
					float2 uv : TEXCOORD0;
				};

				struct v2f
				{
					float2 uv : TEXCOORD0;
					float4 vertex : SV_POSITION;
				};

				sampler2D _MainTex;
				float4 _MainTex_ST;//内置变量，贴图名称+ _ST
				float _DetailScale;
				float4 _MainTex_TexelSize;  //内置变量，贴图名+ _TexelSize :表示贴图的信息  可以取到贴图大小 float4(1/width,1/height,width,height)
				float _DeltaScale;
				float _HeightScale;

				//获取灰度值
				float GetGrayScaleColor(float3 color) {
					//return mul(float2x2(0.3,0.58,0.14,1),color);
					//return (color.r * 0.2136 + color.g * 0.7152 + color.b *0.0722);
					return (color.r * 0.299 + color.g * 0.587 + color.b *0.114);
				}

				//通过灰度获取法线，将取到的灰度值作为高度值
				float3 GetNormalByGrayScale(float2 uv) {
					//_MainTex_TexelSize 内置变量，取到贴图大小 float4(1/width,1/height,width,height); 
					float2 deltaU = float2(_MainTex_TexelSize.x*_DeltaScale,0); //delta值  中心差分法，采样中心两侧的点，控制法线生成的精度，越小精度越高。
					float h1_u = GetGrayScaleColor(tex2D(_MainTex, uv - deltaU).rgb); //中心点左侧点采样，获取灰度值
					float h2_u = GetGrayScaleColor(tex2D(_MainTex, uv + deltaU).rgb);//中心点右侧侧点采样，获取灰度值
					float3 tangent_u = float3(deltaU.x,0,(h2_u - h1_u)*_HeightScale);//切线

					float2 deltaV = float2(0,_MainTex_TexelSize.y *_DeltaScale);
					float h1_v = GetGrayScaleColor(tex2D(_MainTex, uv - deltaV).rgb);
					float h2_v = GetGrayScaleColor(tex2D(_MainTex, uv + deltaV).rgb);
					float3 tangent_v = float3(0,deltaV.y,(h2_v - h1_v)*_HeightScale);

					float3 normal = normalize(cross(tangent_v,tangent_u));//cross:叉乘   求垂直于这两个切线的法线向量。
					return normal;
				}

				v2f vert(appdata v)
				{
					v2f o;
					o.vertex = UnityObjectToClipPos(v.vertex);
					o.uv = TRANSFORM_TEX(v.uv, _MainTex);
					return o;
				}

				float3 frag(v2f i) : SV_Target
				{
					//fixed4 col = tex2D(_MainTex, i.uv);
					//float4 texColor = tex2D(_MainTex,i.uv);
					float3 normal = GetNormalByGrayScale(i.uv);
					normal.z *= -1;
					normal.xyz = normal.xyz *0.5 + 0.5;
					//float diffuse = saturate(dot(normal,normalize(_WorldSpaceLightPos0.xyz)));  //saturate:限制在0-1
					/*float3 color = normal*0.5 + 0.5;*/
					//return float4(color.xyz,1);
				/*	fixed4 color;
					color.rgb = texColor.rgb *diffuse *_LightColor0.rgb;*/
					return normal;
				}
					ENDCG
				}
		}
}
