
Shader "浅墨Shader编程/0.Shader框架示例"
{
	//-------------------------------【属性】-----------------------------------------
	Properties
	{
		//纹理   //EyeLinear
		_MainTex("基本纹理",2D)="White"{TexGen ObjectLinear}//TexGen ObjectLinear:http://blog.sina.com.cn/s/blog_89d90b7c0102vfg2.html
	}

	//---------------------------------【子着色器1】----------------------------------
	SubShader
	{
		//----------------通道---------------
		Pass
		{
			//设置纹理为属性中选择的纹理
			SetTexture[_MainTex]{combine texture}
		}

	}

	//---------------------------------【备胎】----------------------------------------
	//备胎设为Unity自带的普通漫反射
	Fallback "Diffuse"
}




