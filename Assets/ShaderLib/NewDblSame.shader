// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Custom/NewDblSame" {
	Properties{
		_Diffuse("Diffuse", 2D) = "white" {}
		_Offset("Offset",Range(-10,10)) = 0
		_DiffuseContrast("DiffuseContrast", Range(-10, 10)) = 0
		_Diffuse_color("Diffuse_color", Color) = (1,1,1,1)
		_Diffuse_Brightness("Diffuse_Brightness", Range(0.01, 5)) = 1
		_Diffuse_Rotator("Diffuse_Rotator", Range(-180, 180)) = 0
		[MaterialToggle] _DiffuseFlipHorizontal("DiffuseFlipHorizontal", Float) = 0
		[MaterialToggle] _DiffuseFlipVertical("DiffuseFlipVertical", Float) = 0
	}
		SubShader{
			Tags
			{
				"Queue" = "Transparent"
				"RenderType" = "Opaque"
			}
			LOD 200

			pass {
				ZWrite On
				ZTest On
				Blend SrcAlpha OneMinusSrcAlpha
				Cull Off
				CGPROGRAM
#pragma vertex vert
#pragma fragment frag
#include "UnityCG.cginc"
#include "AutoLight.cginc"
#include "Lighting.cginc"
#pragma target 3.0
				sampler2D _Diffuse; float4 _Diffuse_ST;
				float _DiffuseContrast;
				fixed4 _Diffuse_color;
				float _Diffuse_Brightness;
				float _Diffuse_Rotator;
				fixed _DiffuseFlipVertical;
				fixed _DiffuseFlipHorizontal;
				float _Offset;
				struct VertextInput {
					float4 vertex :POSITION; //顶点位置
					float3 normal :NORMAL;  //法线向量坐标
					float2 texcoord0:TEXCOORD0; //纹理坐标
					};
				struct VertexOutput {
					float4 position : SV_POSITION; //像素位置
					float3 normal :NORMAL;
					float2 texcoord0:TEXCOORD0;
				};
				VertexOutput vert(VertextInput input) {
					VertexOutput output;
					//output.position = UnityObjectToClipPos(input.vertext);
					output.position =UnityObjectToClipPos(input.vertex); //转到裁剪空间
					//output.position.y += _Offset;
					//output.normal = mul(float4(input.normal,0),unity_WorldToObject).xyz;
					output.normal = UnityObjectToWorldNormal(input.normal);
					output.texcoord0 = input.texcoord0;
					return output;
				}
				inline fixed4 GetGray(fixed4 inColor)
				{
					return dot(inColor, fixed4(0.3, 0.6, 0.1, 1.0));
				}
				fixed4 frag(VertexOutput input) :COLOR
				{
					fixed4 diffusevar = tex2D(_Diffuse,TRANSFORM_TEX(input.texcoord0,_Diffuse));
					diffusevar *= _Diffuse_color;
					
					//对比度算法1：
					/*float3 avgColor = float3(0.5,0.5,0.5);
					fixed3 finalColor = lerp(avgColor,diffusevar, _DiffuseContrast) *_Diffuse_Brightness;*/
					//对比度算法2：
					//fixed3 finalColor = diffusevar*(1 - _DiffuseContrast) / (1 - 2 * _DiffuseContrast);
					//对比度算法3：
					//fixed3 finalColor = GetGray(fixed4(diffusevar.xyz,1.0)).xyz;
					//对比度算法4：
					//fixed3 finalColor = diffusevar.r *0.299 + diffusevar.g*0.587 + diffusevar.b*0.114;
					//对比度算法5：
					fixed gray = (diffusevar.r + diffusevar.g + diffusevar.b) / 3;
					//fixed3 finalColor =fixed3(gray, gray, gray);
					//饱和度：
					fixed3 finalColor = diffusevar.xyz +(diffusevar.xyz - gray) *_DiffuseContrast;
					return fixed4(finalColor.xyz, diffusevar.a);
				}
				
			
				ENDCG
			}

		}
			FallBack "Diffuse"
}
