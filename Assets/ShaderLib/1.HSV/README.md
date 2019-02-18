# 色相（HSV）调节功能
### 前言
- HSV(Hue, Saturation, Value)是根据颜色的直观特性由A. R. Smith在1978年创建的一种颜色空间, 也称六角锥体模型(Hexcone Model)。
- 这个模型中颜色的参数分别是：色调（H），饱和度（S），明度（V）。

### 颜色模型
#### HSV颜色模型：
- ###### 色调H
 用角度度量，取值范围为0°～360°，从红色开始按逆时针方向计算，红色为0°，绿色为120°,蓝色为240°。它们的补色是：黄色为60°，青色为180°,品红为300°；
- ###### 饱和度S
饱和度S表示颜色接近光谱色的程度。一种颜色，可以看成是某种光谱色与白色混合的结果。其中光谱色所占的比例愈大，颜色接近光谱色的程度就愈高，颜色的饱和度也就愈高。饱和度高，颜色则深而艳。光谱色的白光成分为0，饱和度达到最高。通常取值范围为0%～100%，值越大，颜色越饱和。
- ###### 明度V
明度表示颜色明亮的程度，对于光源色，明度值与发光体的光亮度有关；对于物体色，此值和物体的透射比或反射比有关。通常取值范围为0%（黑）到100%（白）。
RGB和CMY颜色模型都是面向硬件的，而HSV（Hue Saturation Value）颜色模型是面向用户的。
HSV模型的三维表示从RGB立方体演化而来。设想从RGB沿立方体对角线的白色顶点向黑色顶点观察，就可以看到立方体的六边形外形。六边形边界表示色彩，水平轴表示纯度，明度沿垂直轴测量。

#### RGB颜色模型：
- RGB是从颜色发光的原理来设计定的，通俗点说它的颜色混合方式就好像有红、绿、蓝三盏灯，当它们的光相互叠合的时候，色彩相混，而亮度却等于两者亮度之总和，越混合亮度越高，即加法混合。

- 红、绿、蓝三个颜色通道每种色各分为256阶亮度，在0时“灯”最弱——是关掉的，而在255时“灯”最亮。当三色灰度数值相同时，产生不同灰度值的灰色调，即三色灰度都为0时，是最暗的黑色调；三色灰度都为255时，是最亮的白色调。

- 在电脑中，RGB的所谓“多少”就是指亮度，并使用整数来表示。通常情况下，RGB各有256级亮度，用数字表示为从0、1、2...直到255。注意虽然数字最高是255，但0也是数值之一，因此共256级。

### 效果展示
#### 色调（Hue）调节
![HSV1.gif](https://i.loli.net/2019/02/18/5c6a51a0c6836.gif)

#### 饱和度（Saturation）调节
![HSV2.gif](https://i.loli.net/2019/02/18/5c6a52abc0c74.gif)

#### 明亮度（Value）调节
![HSV3.gif](https://i.loli.net/2019/02/18/5c6a533087597.gif)

#### 透明度（Alpha）调节
![HSV4.gif](https://i.loli.net/2019/02/18/5c6a53c49dde2.gif)

### 代码实现
```
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

```
