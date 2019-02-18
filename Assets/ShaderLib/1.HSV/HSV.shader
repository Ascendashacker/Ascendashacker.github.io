Shader "Ascendashacker/HSV" {
	Properties{
		_Texture("Texture（漫反射贴图）", 2D) = "white" {}
		_Hue("Hue（色调）", Range(0,359)) = 0
		_Saturation("Saturation（饱和度）", Range(0,3)) = 1
		_Value("Value（明度）", Range(0,2)) = 1
		_Alpha("Alpha（不透明度）",Range(0,1)) = 1
	}
		SubShader{
			Tags { "Queue" = "Transparent"
			"RenderType" = "Opaque" }
			LOD 200

			//渲染背面
			Pass{
			Name"HSVShader"
			Tags{
			"LightMode" = "ForwardBase"
}
Blend SrcAlpha OneMinusSrcAlpha

			Cull Front
			ZTest On
			ZWrite On
			CGPROGRAM
#pragma vertex vert
#pragma fragment frag
#include "UnityCG.cginc"  //导入该cginc才能支持TRANSFORM_TEX

		sampler2D _Texture; float4 _Texture_ST;
		float _Hue;
		float _Saturation;
		float _Value;
		float _Alpha;
		struct VertexInput {
			float4 vertex : POSITION;
			float2 texcoord0 :TEXCOORD0;
		};
		struct VertexOutput {
			float4 pos :SV_POSITION;
			float2 texcoord0 :TEXCOORD0;
		};

		//RGB to HSV
		float3 RGBConvertToHSV(float3 rgb)
		{
			float R = rgb.x, G = rgb.y, B = rgb.z;
			float4 hsv;
			if (R == G && R == B)
			{
				hsv.x = 0;
				hsv.z = R;
				hsv.y = 0;
			}
			else
			{
				float max1 = max(R, max(G, B));
				float min1 = min(R, min(G, B));
				if (R == max1)
				{
					hsv.x = (G - B) / (max1 - min1);
				}
				if (G == max1)
				{
					hsv.x = 2 + (B - R) / (max1 - min1);
				}
				if (B == max1)
				{
					hsv.x = 4 + (R - G) / (max1 - min1);
				}
				hsv.x = hsv.x * 60.0;
				if (hsv.x < 0)
					hsv.x = hsv.x + 360;
				hsv.z = max1;
				hsv.y = (max1 - min1) / max1;
			}
			return hsv;
		}

		//HSV to RGB
		float3 HSVConvertToRGB(float3 hsv)
		{
			float R, G, B;
			float3 rgb;
			if (hsv.y == 0)
			{
				R = G = B = hsv.z;
			}
			else
			{
				hsv.x = hsv.x / 60.0;
				int i = (int)hsv.x;
				float f = hsv.x - (float)i;
				float a = hsv.z * (1 - hsv.y);
				float b = hsv.z * (1 - hsv.y * f);
				float c = hsv.z * (1 - hsv.y * (1 - f));
				if (i == 0)
				{
					R = hsv.z; G = c; B = a;
				}
				else if (i == 1) {
					R = b; G = hsv.z; B = a;
				}
				else if (i == 2) {
					R = a; G = hsv.z; B = c;
				}
				else if (i == 3) {
					R = a; G = b; B = hsv.z;
				}
				else if (i == 4) {
					R = c; G = a; B = hsv.z;
				}
				else
				{
					R = hsv.z; G = a; B = b;
				}
			}
			return float3(R, G, B);
		}
		VertexOutput vert(VertexInput input)
		{
			VertexOutput output;
			output.texcoord0 = input.texcoord0;
			//output.pos = mul(unity_ObjectToWorld, input.vertex);
			output.pos = UnityObjectToClipPos(input.vertex);
			return output;
		}
		float4 frag(VertexOutput IN) :COLOR{
			float4 c = tex2D(_Texture,TRANSFORM_TEX(IN.texcoord0,_Texture));
			float4 colorHSV;
			colorHSV.xyz = RGBConvertToHSV(c.xyz);   //转换为HSV
			colorHSV.x += _Hue; //调整偏移Hue值
			colorHSV.x = colorHSV.x % 360;    //超过360的值从0开始
			colorHSV.y *= _Saturation;  //调整饱和度
			colorHSV.z *= _Value;
			c.xyz = HSVConvertToRGB(colorHSV.xyz);   //将调整后的HSV，转换为RGB颜色
			c.a *= _Alpha;// *c.a;
			return c;
		}
			ENDCG
		}

			//渲染前面
			Pass{
				Name"HSVShader"
				Tags{
				"LightMode" = "ForwardBase"
			}
				Blend SrcAlpha OneMinusSrcAlpha

				Cull Back
				ZTest On
				ZWrite On
				CGPROGRAM
	#pragma vertex vert
	#pragma fragment frag
	#include "UnityCG.cginc"  //导入该cginc才能支持TRANSFORM_TEX

				sampler2D _Texture; float4 _Texture_ST;
			float _Hue;
			float _Saturation;
			float _Value;
			float _Alpha;
			struct VertexInput {
				float4 vertex : POSITION;
				float2 texcoord0 :TEXCOORD0;
			};
			struct VertexOutput {
				float4 pos :SV_POSITION;
				float2 texcoord0 :TEXCOORD0;
			};

			//RGB to HSV
			float3 RGBConvertToHSV(float3 rgb)
			{
				float R = rgb.x, G = rgb.y, B = rgb.z;
				float4 hsv;
				if (R == G && R == B)
				{
					hsv.x = 0;
					hsv.z = R;
					hsv.y = 0;
				}
				else
				{
					float max1 = max(R, max(G, B));
					float min1 = min(R, min(G, B));
					if (R == max1)
					{
						hsv.x = (G - B) / (max1 - min1);
					}
					if (G == max1)
					{
						hsv.x = 2 + (B - R) / (max1 - min1);
					}
					if (B == max1)
					{
						hsv.x = 4 + (R - G) / (max1 - min1);
					}
					hsv.x = hsv.x * 60.0;
					if (hsv.x < 0)
						hsv.x = hsv.x + 360;
					hsv.z = max1;
					hsv.y = (max1 - min1) / max1;
				}
				return hsv;
			}

			//HSV to RGB
			float3 HSVConvertToRGB(float3 hsv)
			{
				float R, G, B;
				float3 rgb;
				if (hsv.y == 0)
				{
					R = G = B = hsv.z;
				}
				else
				{
					hsv.x = hsv.x / 60.0;
					int i = (int)hsv.x;
					float f = hsv.x - (float)i;
					float a = hsv.z * (1 - hsv.y);
					float b = hsv.z * (1 - hsv.y * f);
					float c = hsv.z * (1 - hsv.y * (1 - f));
					if (i == 0)
					{
						R = hsv.z; G = c; B = a;
					}
					else if (i == 1) {
						R = b; G = hsv.z; B = a;
					}
					else if (i == 2) {
						R = a; G = hsv.z; B = c;
					}
					else if (i == 3) {
						R = a; G = b; B = hsv.z;
					}
					else if (i == 4) {
						R = c; G = a; B = hsv.z;
					}
					else
					{
						R = hsv.z; G = a; B = b;
					}
				}
				return float3(R, G, B);
			}
			VertexOutput vert(VertexInput input)
			{
				VertexOutput output;
				output.texcoord0 = input.texcoord0;
				//output.pos = mul(unity_ObjectToWorld, input.vertex);
				output.pos = UnityObjectToClipPos(input.vertex);
				return output;
			}
			float4 frag(VertexOutput IN) :COLOR{
				float4 c = tex2D(_Texture,TRANSFORM_TEX(IN.texcoord0,_Texture));
				float4 colorHSV;
				colorHSV.xyz = RGBConvertToHSV(c.xyz);   //转换为HSV
				colorHSV.x += _Hue; //调整偏移Hue值
				colorHSV.x = colorHSV.x % 360;    //超过360的值从0开始
				colorHSV.y *= _Saturation;  //调整饱和度
				colorHSV.z *= _Value;
				c.xyz = HSVConvertToRGB(colorHSV.xyz);   //将调整后的HSV，转换为RGB颜色
				c.a *= _Alpha;// *c.a;
				return c;
			}
				ENDCG
			}
		}

			FallBack "Diffuse"
}
