Shader "Ascendashacker/BasicLightModel"
{
	Properties
	{
		_MainTex ("Texture", 2D) = "white" {}
		_SpecularColor("SpecularColor",Color) = (1,1,1,1)
		_Gloss("Gloss",float) = 1
	}
	SubShader
	{
		Tags { "RenderType"="Opaque" }
		LOD 100

		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			struct appdata  //应用阶段 输出到几何阶段
			{
				float4 vertex : POSITION;//模型顶点信息
				float2 uv : TEXCOORD0; //模型第一套uv信息
				float3 normal :NORMAL; //模型法线信息
				float4 tangent:TANGENT;
			};

			struct v2f  //几何阶段   输出到光栅阶段
			{
				float2 uv : TEXCOORD0;//第一套uv信息
				float4 vertex : SV_POSITION;//顶点信息
				float4 posWorld :TEXCOORD1; //世界空间顶点坐标
				float3 normalDir:TEXCOORD2; //法线世界空间坐标
			};

			sampler2D _MainTex;
			float4 _MainTex_ST;
			fixed4 _SpecularColor;
			float _Gloss;
			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.uv = TRANSFORM_TEX(v.uv, _MainTex);  //调节tilling和offset，从模型空间转到剪裁空间
				o.normalDir = UnityObjectToWorldNormal(v.normal); //法线从模型空间转到世界空间，并归一化。
				o.posWorld = mul(unity_ObjectToWorld,v.vertex);  //mul:向量和矩阵相乘。 unity_ObjectToWorld：模型空间转世界空间矩阵
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				float3 normalDir = normalize(i.normalDir);
				float3 lightDir = normalize(_WorldSpaceLightPos0.xyz);
				float3 viewDir = normalize(_WorldSpaceCameraPos - i.posWorld);
				fixed4 col = tex2D(_MainTex, i.uv);
				//fixed4 diffuse = col * max(0, dot(normalDir,lightDir));
				fixed4 diffuse = col * (dot(normalDir, lightDir) + 0.5)*0.5;
				float3 reflectDir = reflect(-lightDir,normalDir);
				fixed4 specular = _LightColor0 * _SpecularColor * pow(max(0, dot(reflectDir, viewDir)), _Gloss);
				fixed4 finalColor = diffuse + UNITY_LIGHTMODEL_AMBIENT + specular;
				return diffuse;
			}
			ENDCG
		}
	}
}
