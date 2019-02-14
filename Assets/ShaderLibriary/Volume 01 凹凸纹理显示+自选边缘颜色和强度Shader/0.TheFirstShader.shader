
//-----------------------------------------------【Shader说明】----------------------------------------------
//     Shader功能：   凹凸纹理显示+自选边缘颜色和强度
//     使用语言：   Shaderlab
//     开发所用IDE版本：Unity4.5 06f 、Monodevelop   
//     2014年11月2日  Created by 浅墨    
//     更多内容或交流请访问浅墨的博客：http://blog.csdn.net/poem_qianmo
//---------------------------------------------------------------------------------------------------------------------


Shader "浅墨Shader编程/0.TheFirstShader" 
{
	//-------------------------------【属性】-----------------------------------------
	Properties 
	{
		_MainTex ("【纹理】Texture", 2D) = "white" {}
		_BumpMap ("【凹凸纹理】Bumpmap", 2D) = "bump" {}
		_RimColor ("【边缘颜色】Rim Color", Color) = (0.17,0.36,0.81,0.0)
		_RimPower ("【边缘颜色强度】Rim Power", Range(0.6,9.0)) = 1.0
	}

	//----------------------------【开始一个子着色器】---------------------------
	SubShader 
	{
		//渲染类型为Opaque，不透明
		Tags { "RenderType" = "Opaque" }

		//-------------------开始CG着色器编程语言段-----------------
		CGPROGRAM

		//使用兰伯特光照模式
		#pragma surface surf Lambert
		//输入结构
		struct Input 
		{
			float2 uv_MainTex;//纹理贴图:命名和uv_无关，没有内置字段
			float2 uv_BumpMap;//法线贴图:命名和uv_无关，没有内置字段
			float3 viewDir;//观察方向,和命名有关 定义为viewDir，系统会默认这个是观察方向 然后自动赋值，这些应该和使用兰伯特光照模式有关
		};

		//变量声明
		sampler2D _MainTex;//主纹理
		sampler2D _BumpMap;//凹凸纹理
		float4 _RimColor;//边缘颜色
		float _RimPower;//边缘颜色强度

		//表面着色函数的编写
		void surf (Input IN, inout SurfaceOutput o)
		{
			//表面反射颜色为纹理颜色
			o.Albedo = tex2D (_MainTex, IN.uv_MainTex).rgb;
			//表面法线为凹凸纹理的颜色
			o.Normal = UnpackNormal (tex2D (_BumpMap, IN.uv_BumpMap));
			/*
			saturate:如果 x 小于0，返回 0；如果 x大于 1，返回1；否则，返回x。  
			normalize：归一化向量
			dot(A,B)：返回A 和 B的点积(dot product)。参数A 和 B 可以是标量，也可以是向量（输入参数方面，点积和叉积函数有很大不同）.dot满足交换律dot(a,b) =dot(b,a)
			*/
			half rim = 1.0 - saturate(dot (normalize(IN.viewDir), o.Normal));//边缘颜色 ,因为normal是单位向量，所以要对观察方向进行归一化，对于颜色一般可以直接用half储存。
			//边缘颜色强度

			o.Emission = _RimColor.rgb * pow (rim, _RimPower); //pow:求次方
		}

		//-------------------结束CG着色器编程语言段------------------
		ENDCG
	} 

	//“备胎”为普通漫反射
	Fallback "Diffuse"
}
