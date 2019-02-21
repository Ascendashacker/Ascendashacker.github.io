# 顶点偏移
### 效果展示
![vertexOffset.gif](https://i.loli.net/2019/02/20/5c6d577c1fa37.gif)
### 项目需要对贴图指定部位进行偏移
![vertexOffset1.gif](https://i.loli.net/2019/02/21/5c6e119dc459d.gif)


### 代码实现
### 核心代码块
```
v2f vert(m2v v)
	{
		v2f f;
		v.vex.xyz += v.normal * _Offset* abs(cos(_Time.x*_OffsetFrequency));//  v.normal：沿法线方向偏移  abs：绝对值函数  _Time:内置时间函数，cos：三角函数
		f.position = UnityObjectToClipPos(v.vex);
		f.uv = v.uv;
		return f;
	}
```
```
Shader "Ascendashacker/VertexOffset" {
	Properties{
		_Texture("Texture（漫反射贴图）",2D) = "white"{}
		_Offset("_Offset（偏移量）", float) = 1
		_OffsetFrequency("OffsetFrequency(偏移频率)",float) = 1
	}
		SubShader{
		Blend SrcAlpha OneMinusSrcAlpha
		//渲染背面
		Pass
	{
		Cull Front
		ZWrite Off
		ZTest On
		CGPROGRAM
#pragma vertex vert
#pragma fragment frag
#include "UnityCG.cginc"
	float _Offset;
	sampler2D _Texture; float4 _Texture_ST;
	float _OffsetFrequency;
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
	//RGB to HSV
	inline float3 RGBConvertToHSV(float3 rgb)
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
	inline float3 HSVConvertToRGB(float3 hsv)
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

	v2f vert(m2v v)
	{
		v2f f;
		v.vex.xyz += v.normal * _Offset* abs(cos(_Time.x*_OffsetFrequency));//  v.normal：沿法线方向偏移  abs：绝对值函数  _Time:内置时间函数，cos：三角函数
		f.position = UnityObjectToClipPos(v.vex);
		f.uv = v.uv;
		return f;
	}
	fixed4 frag(v2f f) : SV_Target
	{
		float4 texColor = tex2D(_Texture,TRANSFORM_TEX(f.uv,_Texture));
		float4 colorHSV;
		colorHSV.xyz = RGBConvertToHSV(texColor.xyz);   //转换为HSV
		colorHSV.x += _Time.x* 2000; //调整偏移Hue值
		colorHSV.x = colorHSV.x % 360;    //超过360的值从0开始
		texColor.xyz = HSVConvertToRGB(colorHSV.xyz);   //将调整后的HSV，转换为RGB颜色
		return texColor;
	}
		ENDCG
	}
			Pass
	{
		Cull Back
		ZWrite Off
		ZTest On
		CGPROGRAM
#pragma vertex vert
#pragma fragment frag
#include "UnityCG.cginc"
		float _Offset;
	sampler2D _Texture; float4 _Texture_ST;
	float _OffsetFrequency;
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
	//RGB to HSV
	inline float3 RGBConvertToHSV(float3 rgb)
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
	inline float3 HSVConvertToRGB(float3 hsv)
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
	v2f vert(m2v v)
	{
		v2f f;
		v.vex.xyz += v.normal * _Offset* abs(cos(_Time.x*_OffsetFrequency));//  v.normal：沿法线方向偏移  abs：绝对值函数  _Time:内置时间函数，cos：三角函数
		f.position = UnityObjectToClipPos(v.vex);
		f.uv = v.uv;
		return f;
	}
	fixed4 frag(v2f f) : SV_Target
	{
		float4 texColor = tex2D(_Texture,TRANSFORM_TEX(f.uv,_Texture));
		float4 colorHSV;
		colorHSV.xyz = RGBConvertToHSV(texColor.xyz);   //转换为HSV
		colorHSV.x += _Time.x * 1500; //调整偏移Hue值
		colorHSV.x = colorHSV.x % 360;    //超过360的值从0开始
		texColor.xyz = HSVConvertToRGB(colorHSV.xyz);   //将调整后的HSV，转换为RGB颜色
		return texColor;
	}
		ENDCG
	}
	}
		FallBack "Diffuse"
}
```
