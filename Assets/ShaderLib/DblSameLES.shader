// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.25 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.25;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:0,trmd:0,grmd:1,uamb:True,mssp:True,bkdf:True,hqlp:True,rprd:True,enco:True,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4476,x:33352,y:32293,varname:node_4476,prsc:2|diff-6313-OUT,spec-5697-OUT,gloss-2029-OUT,normal-2475-OUT,emission-6203-OUT,amdfl-5046-OUT,amspl-5046-OUT,clip-5989-A;n:type:ShaderForge.SFN_Tex2d,id:4923,x:30530,y:29865,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:_Diffuse,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-9150-OUT;n:type:ShaderForge.SFN_Tex2d,id:217,x:30533,y:31639,ptovrint:False,ptlb:Specular,ptin:_Specular,varname:_Specular,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-683-OUT;n:type:ShaderForge.SFN_Tex2d,id:5665,x:31063,y:32238,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:_Normal,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-683-OUT;n:type:ShaderForge.SFN_Tex2d,id:5989,x:32180,y:33372,ptovrint:False,ptlb:Alpha,ptin:_Alpha,varname:_Alpha,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-6067-OUT;n:type:ShaderForge.SFN_Rotator,id:1147,x:29113,y:29671,varname:node_1147,prsc:2|UVIN-5767-UVOUT,ANG-9073-OUT;n:type:ShaderForge.SFN_Slider,id:3590,x:28416,y:29656,ptovrint:False,ptlb:Diffuse_Rotator,ptin:_Diffuse_Rotator,varname:_Diffuse_Rotator,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-180,cur:0,max:180;n:type:ShaderForge.SFN_Color,id:1883,x:30984,y:30177,ptovrint:False,ptlb:Diffuse_color,ptin:_Diffuse_color,varname:_Diffuse_color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1851211,c2:0.7867647,c3:0.7867647,c4:1;n:type:ShaderForge.SFN_Multiply,id:5262,x:31208,y:30241,varname:node_5262,prsc:2|A-3209-OUT,B-1883-RGB;n:type:ShaderForge.SFN_Rotator,id:4841,x:28976,y:32229,varname:node_4841,prsc:2|UVIN-1277-UVOUT,ANG-2497-OUT;n:type:ShaderForge.SFN_Multiply,id:9103,x:31741,y:31801,varname:node_9103,prsc:2|A-5753-OUT,B-4787-RGB;n:type:ShaderForge.SFN_Rotator,id:9472,x:30745,y:33444,varname:node_9472,prsc:2|UVIN-6289-UVOUT,ANG-976-OUT;n:type:ShaderForge.SFN_TexCoord,id:5767,x:28919,y:29639,varname:node_5767,prsc:2,uv:0;n:type:ShaderForge.SFN_TexCoord,id:1277,x:28775,y:32229,varname:node_1277,prsc:2,uv:0;n:type:ShaderForge.SFN_TexCoord,id:6289,x:30514,y:33372,varname:node_6289,prsc:2,uv:0;n:type:ShaderForge.SFN_Pi,id:7610,x:28503,y:29733,varname:node_7610,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7162,x:28733,y:29782,varname:node_7162,prsc:2|A-3590-OUT,B-7610-OUT;n:type:ShaderForge.SFN_Slider,id:1301,x:28179,y:32340,ptovrint:False,ptlb:Specular_Normal_Rotator,ptin:_Specular_Normal_Rotator,varname:_Diffuse_Rotator_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-180,cur:0,max:180;n:type:ShaderForge.SFN_Pi,id:9318,x:28266,y:32417,varname:node_9318,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9647,x:28529,y:32349,varname:node_9647,prsc:2|A-1301-OUT,B-9318-OUT;n:type:ShaderForge.SFN_Fresnel,id:9142,x:31995,y:30494,varname:node_9142,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4617,x:32202,y:30673,varname:node_4617,prsc:2|A-4312-OUT,B-3646-OUT;n:type:ShaderForge.SFN_Slider,id:1527,x:29954,y:33419,ptovrint:False,ptlb:Alpha_Rotator,ptin:_Alpha_Rotator,varname:_Specular_Normal_Rotator_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-180,cur:0,max:180;n:type:ShaderForge.SFN_Pi,id:5274,x:30041,y:33496,varname:node_5274,prsc:2;n:type:ShaderForge.SFN_Multiply,id:856,x:30353,y:33521,varname:node_856,prsc:2|A-1527-OUT,B-5274-OUT;n:type:ShaderForge.SFN_Color,id:4787,x:31399,y:31916,ptovrint:False,ptlb:Specular_color,ptin:_Specular_color,varname:_Diffuse_color_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:8205,x:32216,y:32678,ptovrint:False,ptlb:Emssion,ptin:_Emssion,varname:node_8205,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Color,id:9907,x:32216,y:32765,ptovrint:False,ptlb:EmessionColor,ptin:_EmessionColor,varname:node_9907,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Tex2d,id:7311,x:31009,y:30542,ptovrint:False,ptlb:shadow,ptin:_shadow,varname:node_7311,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-2471-OUT;n:type:ShaderForge.SFN_TexCoord,id:1640,x:30484,y:30524,varname:node_1640,prsc:2,uv:0;n:type:ShaderForge.SFN_SwitchProperty,id:2471,x:30714,y:30675,ptovrint:False,ptlb:UV_Set,ptin:_UV_Set,varname:node_2471,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-1640-UVOUT,B-9510-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:9510,x:30481,y:30665,varname:node_9510,prsc:2,uv:1;n:type:ShaderForge.SFN_Multiply,id:6937,x:31851,y:30742,varname:node_6937,prsc:2|A-3646-OUT,B-8436-OUT;n:type:ShaderForge.SFN_AmbientLight,id:5080,x:31733,y:32950,varname:node_5080,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5046,x:32216,y:32910,varname:node_5046,prsc:2|A-5080-RGB,B-8061-OUT,C-8253-RGB;n:type:ShaderForge.SFN_LightColor,id:8253,x:31719,y:33211,varname:node_8253,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3646,x:31545,y:30388,varname:node_3646,prsc:2|A-5262-OUT,B-2173-OUT;n:type:ShaderForge.SFN_Slider,id:2173,x:31129,y:30412,ptovrint:False,ptlb:Diffuse_Brightness,ptin:_Diffuse_Brightness,varname:node_2173,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.01,cur:1,max:5;n:type:ShaderForge.SFN_Multiply,id:5697,x:32085,y:31881,varname:node_5697,prsc:2|A-5861-OUT,B-758-OUT;n:type:ShaderForge.SFN_Slider,id:758,x:31591,y:32017,ptovrint:False,ptlb:Specular_Brightness,ptin:_Specular_Brightness,varname:_Diffuse_Brightenss_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.01,cur:0.01,max:5;n:type:ShaderForge.SFN_Append,id:2695,x:31371,y:32247,varname:node_2695,prsc:2|A-5665-R,B-5665-G;n:type:ShaderForge.SFN_LightAttenuation,id:8061,x:31732,y:33087,varname:node_8061,prsc:2;n:type:ShaderForge.SFN_Desaturate,id:9995,x:30826,y:31672,varname:node_9995,prsc:2|COL-217-RGB,DES-1446-OUT;n:type:ShaderForge.SFN_Multiply,id:8436,x:31438,y:30637,varname:node_8436,prsc:2|A-7311-RGB,B-1183-OUT;n:type:ShaderForge.SFN_Slider,id:1183,x:31104,y:30726,ptovrint:False,ptlb:ShadowBrightness,ptin:_ShadowBrightness,varname:node_1183,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.01,cur:1,max:5;n:type:ShaderForge.SFN_Multiply,id:65,x:31617,y:32384,varname:node_65,prsc:2|A-2695-OUT,B-6341-OUT;n:type:ShaderForge.SFN_Append,id:2475,x:31918,y:32522,varname:node_2475,prsc:2|A-65-OUT,B-5665-B;n:type:ShaderForge.SFN_ValueProperty,id:6341,x:31288,y:32450,ptovrint:False,ptlb:Bump_Height,ptin:_Bump_Height,varname:node_6341,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.3;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:3209,x:30984,y:29991,varname:node_3209,prsc:2|IN-4923-RGB,IMIN-4013-OUT,IMAX-183-OUT,OMIN-8167-OUT,OMAX-4425-OUT;n:type:ShaderForge.SFN_Vector1,id:8167,x:30792,y:30101,varname:node_8167,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:4425,x:30792,y:30158,varname:node_4425,prsc:2,v1:1;n:type:ShaderForge.SFN_OneMinus,id:183,x:30530,y:30063,varname:node_183,prsc:2|IN-4013-OUT;n:type:ShaderForge.SFN_Slider,id:4013,x:30141,y:30022,ptovrint:False,ptlb:DiffuseContrast,ptin:_DiffuseContrast,varname:node_4013,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-0.5,cur:0,max:0.3;n:type:ShaderForge.SFN_Append,id:9150,x:30174,y:29763,varname:node_9150,prsc:2|A-152-OUT,B-7982-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:152,x:29928,y:29707,ptovrint:False,ptlb:DiffuseFlipHorizontal,ptin:_DiffuseFlipHorizontal,varname:node_152,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-2972-R,B-2071-OUT;n:type:ShaderForge.SFN_Multiply,id:2071,x:29638,y:29667,varname:node_2071,prsc:2|A-4853-OUT,B-2972-R;n:type:ShaderForge.SFN_ComponentMask,id:2972,x:29393,y:29760,varname:node_2972,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-1147-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:6045,x:29393,y:29933,varname:node_6045,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-1147-UVOUT;n:type:ShaderForge.SFN_Vector1,id:4853,x:29418,y:29610,varname:node_4853,prsc:2,v1:-1;n:type:ShaderForge.SFN_Multiply,id:252,x:29669,y:30016,varname:node_252,prsc:2|A-6045-G,B-893-OUT;n:type:ShaderForge.SFN_Vector1,id:893,x:29433,y:30113,varname:node_893,prsc:2,v1:-1;n:type:ShaderForge.SFN_SwitchProperty,id:7982,x:29883,y:29936,ptovrint:False,ptlb:DiffuseFlipVertical,ptin:_DiffuseFlipVertical,varname:node_7982,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-6045-G,B-252-OUT;n:type:ShaderForge.SFN_OneMinus,id:7931,x:31049,y:31798,varname:node_7931,prsc:2|IN-5641-OUT;n:type:ShaderForge.SFN_Slider,id:5641,x:30810,y:32029,ptovrint:False,ptlb:SpecularContrast,ptin:_SpecularContrast,varname:_DiffuseContrast_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-0.5,cur:0,max:0.3;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:5753,x:31420,y:31735,varname:node_5753,prsc:2|IN-9995-OUT,IMIN-5641-OUT,IMAX-7931-OUT,OMIN-6584-OUT,OMAX-6560-OUT;n:type:ShaderForge.SFN_Vector1,id:6584,x:31169,y:31882,varname:node_6584,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:6560,x:31169,y:31939,varname:node_6560,prsc:2,v1:1;n:type:ShaderForge.SFN_Append,id:683,x:30009,y:32152,varname:node_683,prsc:2|A-2918-OUT,B-1846-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:2918,x:29728,y:32119,ptovrint:False,ptlb:SpecularNormalFlipHorizontal,ptin:_SpecularNormalFlipHorizontal,varname:_DiffuseFlipHorizontal_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-9409-R,B-1581-OUT;n:type:ShaderForge.SFN_Multiply,id:1581,x:29438,y:32079,varname:node_1581,prsc:2|A-5619-OUT,B-9409-R;n:type:ShaderForge.SFN_ComponentMask,id:9409,x:29193,y:32172,varname:node_9409,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-4841-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:8467,x:29193,y:32345,varname:node_8467,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-4841-UVOUT;n:type:ShaderForge.SFN_Vector1,id:5619,x:29218,y:32022,varname:node_5619,prsc:2,v1:-1;n:type:ShaderForge.SFN_Multiply,id:2501,x:29469,y:32428,varname:node_2501,prsc:2|A-8467-G,B-5824-OUT;n:type:ShaderForge.SFN_Vector1,id:5824,x:29233,y:32525,varname:node_5824,prsc:2,v1:-1;n:type:ShaderForge.SFN_SwitchProperty,id:1846,x:29683,y:32348,ptovrint:False,ptlb:SpecularNormalFlipVertical,ptin:_SpecularNormalFlipVertical,varname:_DiffuseFlipVertical_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-8467-G,B-2501-OUT;n:type:ShaderForge.SFN_Append,id:6067,x:31719,y:33352,varname:node_6067,prsc:2|A-3763-OUT,B-9180-OUT;n:type:ShaderForge.SFN_Multiply,id:7298,x:31225,y:33282,varname:node_7298,prsc:2|A-6573-OUT,B-5594-R;n:type:ShaderForge.SFN_ComponentMask,id:5594,x:30980,y:33375,varname:node_5594,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-9472-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:9683,x:30980,y:33548,varname:node_9683,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-9472-UVOUT;n:type:ShaderForge.SFN_Vector1,id:6573,x:31005,y:33225,varname:node_6573,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:802,x:31256,y:33631,varname:node_802,prsc:2|A-9683-G,B-9165-OUT;n:type:ShaderForge.SFN_Vector1,id:9165,x:31020,y:33728,varname:node_9165,prsc:2,v1:-1;n:type:ShaderForge.SFN_SwitchProperty,id:9180,x:31470,y:33551,ptovrint:False,ptlb:AlphaFlipVertical,ptin:_AlphaFlipVertical,varname:_DiffuseFlipVertical_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-9683-G,B-802-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:3763,x:31470,y:33391,ptovrint:False,ptlb:AlphaFlipHorizontal,ptin:_AlphaFlipHorizontal,varname:node_3763,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-5594-R,B-7298-OUT;n:type:ShaderForge.SFN_Slider,id:2029,x:31936,y:32300,ptovrint:False,ptlb:Roughness,ptin:_Roughness,varname:node_2029,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Negate,id:1610,x:32164,y:30494,varname:node_1610,prsc:2|IN-9142-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:8874,x:32339,y:30911,ptovrint:False,ptlb:Fresnel,ptin:_Fresnel,varname:node_8874,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4617-OUT,B-6937-OUT;n:type:ShaderForge.SFN_Add,id:6313,x:32536,y:31215,varname:node_6313,prsc:2|A-8874-OUT,B-6937-OUT;n:type:ShaderForge.SFN_Divide,id:9073,x:28919,y:29809,varname:node_9073,prsc:2|A-7162-OUT,B-1675-OUT;n:type:ShaderForge.SFN_Vector1,id:1675,x:28733,y:29941,varname:node_1675,prsc:2,v1:180;n:type:ShaderForge.SFN_Divide,id:2497,x:28677,y:32446,varname:node_2497,prsc:2|A-9647-OUT,B-4629-OUT;n:type:ShaderForge.SFN_Vector1,id:4629,x:28492,y:32578,varname:node_4629,prsc:2,v1:180;n:type:ShaderForge.SFN_Divide,id:976,x:30514,y:33537,varname:node_976,prsc:2|A-856-OUT,B-966-OUT;n:type:ShaderForge.SFN_Vector1,id:966,x:30353,y:33669,varname:node_966,prsc:2,v1:180;n:type:ShaderForge.SFN_Slider,id:1446,x:30424,y:31851,ptovrint:False,ptlb:SpeDesIntensity,ptin:_SpeDesIntensity,varname:node_1446,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Multiply,id:6203,x:32462,y:32707,varname:node_6203,prsc:2|A-8205-OUT,B-9907-RGB;n:type:ShaderForge.SFN_Sqrt,id:5861,x:31914,y:31769,varname:node_5861,prsc:2|IN-9103-OUT;n:type:ShaderForge.SFN_Color,id:3598,x:32095,y:30271,ptovrint:False,ptlb:FresnelColor,ptin:_FresnelColor,varname:node_3598,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:4312,x:32370,y:30474,varname:node_4312,prsc:2|A-3598-RGB,B-1610-OUT;proporder:4923-4013-1883-2173-3590-152-7982-217-1446-5641-4787-758-1301-2918-1846-5665-6341-5989-1527-9180-3763-7311-1183-2471-8205-9907-2029-8874-3598;pass:END;sub:END;*/
/// <summary>
/// 功能描述(Description)：	蕾丝材质
///	公司(Company)：			厦门启尚科技有限公司
/// 作者(Author)：			tengfei.yao@qishon.com
/// 日期(Create Date)：		2018/02/26 17:40:15
/// </summary>
Shader "QS/DblSameLES" {
    Properties {
		/*[MaterialToggle]_ShadowAffectDiffuse("ShadowAffectDiffuse?",Float) = 0
		[MaterialToggle]_WithoutContrast("WithoutContrast?",Float) = 0
		[MaterialToggle]_IsNormalMap("IsNormalMap?",Float) = 0*/
        _Diffuse ("Diffuse", 2D) = "white" {}
        _DiffuseContrast ("DiffuseContrast", Range(-0.5, 0.3)) = 0
        _Diffuse_color ("Diffuse_color", Color) = (1,1,1,1)
        _Diffuse_Brightness ("Diffuse_Brightness", Range(0.01, 5)) = 1
        _Diffuse_Rotator ("Diffuse_Rotator", Range(-180, 180)) = 0
        [MaterialToggle] _DiffuseFlipHorizontal ("DiffuseFlipHorizontal", Float ) = 0
        [MaterialToggle] _DiffuseFlipVertical ("DiffuseFlipVertical", Float ) = 0
        _Specular ("Specular", 2D) = "white" {}
        _SpeDesIntensity ("SpeDesIntensity", Range(0, 1)) = 1
        _SpecularContrast ("SpecularContrast", Range(-0.5, 0.3)) = 0
        _Specular_color ("Specular_color", Color) = (0,0,0,1)
        _Specular_Brightness ("Specular_Brightness", Range(0.01, 5)) = 0.01
        _Specular_Normal_Rotator ("Specular_Normal_Rotator", Range(-180, 180)) = 0
        [MaterialToggle] _SpecularNormalFlipHorizontal ("SpecularNormalFlipHorizontal", Float ) = 0
        [MaterialToggle] _SpecularNormalFlipVertical ("SpecularNormalFlipVertical", Float ) = 0
        _Normal ("Normal", 2D) = "bump" {}
        _Bump_Height ("Bump_Height", Float ) = 0.3
        _Alpha ("Alpha", 2D) = "white" {}
		_Opacity("Opacity", Range(-1,1)) = 0    //不透明度
        _Alpha_Rotator ("Alpha_Rotator", Range(-180, 180)) = 0
		[MaterialToggle] _AlphaFlipHorizontal("AlphaFlipHorizontal", Float) = 0
        [MaterialToggle] _AlphaFlipVertical ("AlphaFlipVertical", Float ) = 0
        _shadow ("shadow", 2D) = "white" {}
		_ShadowBrightness("ShadowBrightness", Range(0.01, 5)) = 1
		[MaterialToggle] _UV_Set("UV_Set", Float) = 0
		_Emssion("Emssion", Float) = 0
		_EmessionColor("EmessionColor", Color) = (0,0,0,1)
		_Roughness("Roughness", Range(0, 1)) = 1
		[MaterialToggle] _Fresnel("Fresnel", Float) = 0
		_FresnelColor("FresnelColor", Color) = (0,0,0,1)
		[HideInInspector]_Cutoff("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
			"Queue"= "Transparent"
            "RenderType"="Opaque"
        }
        LOD 200
//			Pass{
//			ZWrite On
//			ColorMask 0 //该pass不写入任何颜色通道
//}
Pass{
			Name "FORWARD"
			Tags{
			"LightMode" = "ForwardBase"
		}
			ZWrite Off
			ZTest On
			Blend SrcAlpha OneMinusSrcAlpha
			Cull Front
			//ColorMask 0
			//Offset -1,-1
			CGPROGRAM
#pragma vertex vert
#pragma fragment frag
#define UNITY_PASS_FORWARDBASE
#define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
#define _GLOSSYENV 1
#include "UnityCG.cginc"
#include "AutoLight.cginc"
#include "Lighting.cginc"
#include "UnityPBSLighting.cginc"
#include "UnityStandardBRDF.cginc"
#pragma multi_compile_fwdbase_fullshadows
#pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
#pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
#pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
#pragma exclude_renderers xbox360 xboxone ps3 ps4 psp2 
#pragma target 3.0
			uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
		uniform sampler2D _Specular; uniform float4 _Specular_ST;
		uniform sampler2D _Normal; uniform float4 _Normal_ST;
		uniform sampler2D _Alpha; uniform float4 _Alpha_ST;
		uniform float _Diffuse_Rotator;
		uniform float4 _Diffuse_color;
		uniform float _Specular_Normal_Rotator;
		uniform float _Alpha_Rotator;
		uniform float _Opacity;
		uniform float4 _Specular_color;
		uniform float _Emssion;
		uniform float4 _EmessionColor;
		uniform sampler2D _shadow; uniform float4 _shadow_ST;
		uniform fixed _UV_Set;
		uniform float _Diffuse_Brightness;
		uniform float _Specular_Brightness;
		uniform float _ShadowBrightness;
		uniform float _Bump_Height;
		uniform float _DiffuseContrast;
		uniform fixed _DiffuseFlipHorizontal;
		uniform fixed _DiffuseFlipVertical;
		uniform float _SpecularContrast;
		uniform fixed _SpecularNormalFlipHorizontal;
		uniform fixed _SpecularNormalFlipVertical;
		uniform fixed _AlphaFlipVertical;
		uniform fixed _AlphaFlipHorizontal;
		uniform float _Roughness;
		uniform fixed _Fresnel;
		uniform float _SpeDesIntensity;
		uniform float4 _FresnelColor;
		float _WithoutContrast;
		float _ShadowAffectDiffuse;
		float _IsNormalMap;
		struct VertexInput {
			float4 vertex : POSITION;
			float3 normal : NORMAL;
			float4 tangent : TANGENT;
			float2 texcoord0 : TEXCOORD0;
			float2 texcoord1 : TEXCOORD1;
			float2 texcoord2 : TEXCOORD2;
		};
		struct VertexOutput {
			float4 pos : SV_POSITION;
			float2 uv0 : TEXCOORD0;
			float2 uv1 : TEXCOORD1;
			float2 uv2 : TEXCOORD2;
			float4 posWorld : TEXCOORD3;
			float3 normalDir : TEXCOORD4;
			float3 tangentDir : TEXCOORD5;
			float3 bitangentDir : TEXCOORD6;
			LIGHTING_COORDS(7,8)
#if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
				float4 ambientOrLightmapUV : TEXCOORD9;
#endif
		};
		VertexOutput vert(VertexInput v) {
			VertexOutput o = (VertexOutput)0;
			o.uv0 = v.texcoord0;
			o.uv1 = v.texcoord1;
			o.uv2 = v.texcoord2;
#ifdef LIGHTMAP_ON
			o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
			o.ambientOrLightmapUV.zw = 0;
#endif
#ifdef DYNAMICLIGHTMAP_ON
			o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
#endif
			o.normalDir = UnityObjectToWorldNormal(v.normal);
			o.tangentDir = normalize(mul(unity_ObjectToWorld, float4(v.tangent.xyz, 0.0)).xyz);
			o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
			o.posWorld = mul(unity_ObjectToWorld, v.vertex);
			float3 lightColor = _LightColor0.rgb;
			o.pos = UnityObjectToClipPos(v.vertex);
			TRANSFER_VERTEX_TO_FRAGMENT(o)
				return o;
		}
		float4 frag(VertexOutput i, float facing : VFACE) : COLOR{ //, float facing : VFACE
			float isFrontFace = (facing >= 0 ? 1 : 0);  //facing 改变摄像机的朝向，若背对摄像机则不做渲染
		float faceSign = (facing >= 0 ? 1 : -1);
		i.normalDir = normalize(i.normalDir);   //顶点的法线方向做归一化处理
		i.normalDir *= faceSign;   //乘以facing朝向
		float3x3 tangentTransform = float3x3(i.tangentDir, i.bitangentDir, i.normalDir);  //三维矩阵（切线方向，双切线方向，法线方向）
		float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);  //观察方向，世界空间的相机-模型顶点的世界空间坐标
		float node_4841_ang = ((_Specular_Normal_Rotator*3.141592654) / 180.0);   //法线和高光旋转值 *pi/180
		float node_4841_spd = 1.0;
		float node_4841_cos = cos(node_4841_spd*node_4841_ang);  //cos旋转角度
		float node_4841_sin = sin(node_4841_spd*node_4841_ang);  //sin旋转角度
		float2 node_4841_piv = float2(0.5,0.5);   //旋转锚点
		float2 node_4841 = (mul(i.uv0 - node_4841_piv,float2x2(node_4841_cos, -node_4841_sin, node_4841_sin, node_4841_cos)) + node_4841_piv);  //    二阶矩阵（cos,-sin,sin,cos）
		float2 node_9409 = node_4841.rg;
		float2 node_8467 = node_4841.rg;
		float2 node_683 = float2(lerp(node_9409.r, ((-1.0)*node_9409.r), _SpecularNormalFlipHorizontal),lerp(node_8467.g, (node_8467.g*(-1.0)), _SpecularNormalFlipVertical));  //通过线性插值，水平/竖直翻转
																																												//如果法线贴图格式为normalmap
		float3 _Normal_var = tex2D(_Normal, TRANSFORM_TEX(node_683, _Normal));  //TRANSFORM_TEX:通过系统内置的方法与ST关联
		_Normal_var.xyz = _Normal_var.xyz * 2 - 1;
		/*	if (_IsNormalMap==1)
		{
		_Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_683, _Normal)));
		}*/
		float3 normalLocal = float3((float2(_Normal_var.r,_Normal_var.g)*_Bump_Height),_Normal_var.b);   // 只对法线的rg进行改变强度//法线只存在法线贴图的rg通道？或通过rg通道可以推断出b通道？
		float3 normalDirection = normalize(mul(normalLocal, tangentTransform));  // Perturbed normals  //法线方向 -- 归一化 ，本地法线方向  通过 法线和切线的矩阵进行变换
		float3 viewReflectDirection = reflect(-viewDirection, normalDirection);   //观察角度的反射方向，也就是跑到眼睛里面光的方向
		float node_9472_ang = ((_Alpha_Rotator*3.141592654) / 180.0);
		float node_9472_spd = 1.0;
		float node_9472_cos = cos(node_9472_spd*node_9472_ang);
		float node_9472_sin = sin(node_9472_spd*node_9472_ang);
		float2 node_9472_piv = float2(0.5,0.5);    //piv 是贴图纹理的中心
		float2 node_9472 = (mul(i.uv0 - node_9472_piv,float2x2(node_9472_cos, -node_9472_sin, node_9472_sin, node_9472_cos)) + node_9472_piv);
		float2 node_5594 = node_9472.rg;
		float2 node_9683 = node_9472.rg;
		float2 node_6067 = float2(lerp(node_5594.r, (-1 * node_5594.r), _AlphaFlipHorizontal),lerp(node_9683.g, (node_9683.g*(-1.0)), _AlphaFlipVertical));
		float4 _Alpha_var = tex2D(_Alpha,TRANSFORM_TEX(node_6067, _Alpha));
		//clip(_Alpha_var.a - 0.5);    //裁剪
		float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);    //光的位置， 归一化世界空间下的光的坐标
		float3 lightColor = _LightColor0.rgb;    //光的颜色
		float3 halfDirection = normalize(viewDirection + lightDirection);   //
																			////// Lighting:
		float attenuation = LIGHT_ATTENUATION(i);
		float3 attenColor = attenuation * _LightColor0.xyz;
		float Pi = 3.141592654;
		float InvPi = 0.31830988618;
		///////// Gloss:
		float gloss = 1.0 - _Roughness; // Convert roughness to gloss
		float specPow = exp2(gloss * 10.0 + 1.0);
		/////// GI Data:
		UnityLight light;
#ifdef LIGHTMAP_OFF
		light.color = lightColor;
		light.dir = lightDirection;
		light.ndotl = LambertTerm(normalDirection, light.dir);
#else
		light.color = half3(0.f, 0.f, 0.f);
		light.ndotl = 0.0f;
		light.dir = half3(0.f, 0.f, 0.f);
#endif
		/* UnityGIInput d;
		d.light = light;
		d.worldPos = i.posWorld.xyz;
		d.worldViewDir = viewDirection;
		d.atten = attenuation;
		#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
		d.ambient = 0;
		d.lightmapUV = i.ambientOrLightmapUV;
		#else
		d.ambient = i.ambientOrLightmapUV;
		#endif
		d.boxMax[0] = unity_SpecCube0_BoxMax;
		d.boxMin[0] = unity_SpecCube0_BoxMin;
		d.probePosition[0] = unity_SpecCube0_ProbePosition;
		d.probeHDR[0] = unity_SpecCube0_HDR;
		d.boxMax[1] = unity_SpecCube1_BoxMax;
		d.boxMin[1] = unity_SpecCube1_BoxMin;
		d.probePosition[1] = unity_SpecCube1_ProbePosition;
		d.probeHDR[1] = unity_SpecCube1_HDR;*/
		UnityGIInput d;
		d.light = light;
		d.worldPos = i.posWorld.xyz;
		d.worldViewDir = viewDirection;
		d.atten = attenuation;
#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
		d.ambient = 0;
		d.lightmapUV = i.ambientOrLightmapUV;
#else
		d.ambient = i.ambientOrLightmapUV.rgb;
		d.lightmapUV = 0;
#endif

		d.probeHDR[0] = unity_SpecCube0_HDR;
		d.probeHDR[1] = unity_SpecCube1_HDR;
#if defined(UNITY_SPECCUBE_BLENDING) || defined(UNITY_SPECCUBE_BOX_PROJECTION)
		d.boxMin[0] = unity_SpecCube0_BoxMin; // .w holds lerp value for blending
#endif
#ifdef UNITY_SPECCUBE_BOX_PROJECTION
		d.boxMax[0] = unity_SpecCube0_BoxMax;
		d.probePosition[0] = unity_SpecCube0_ProbePosition;
		d.boxMax[1] = unity_SpecCube1_BoxMax;
		d.boxMin[1] = unity_SpecCube1_BoxMin;
		d.probePosition[1] = unity_SpecCube1_ProbePosition;
#endif
		Unity_GlossyEnvironmentData ugls_en_data;
		ugls_en_data.roughness = 1.0 - gloss;
		ugls_en_data.reflUVW = viewReflectDirection;
		UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data);
		lightDirection = gi.light.dir;
		lightColor = gi.light.color;
		////// Specular:
		float NdotL = max(0, dot(normalDirection, lightDirection));
		float3 node_5046 = (UNITY_LIGHTMODEL_AMBIENT.rgb*attenuation*_LightColor0.rgb);
		float LdotH = max(0.0,dot(lightDirection, halfDirection));
		float4 _Specular_var = tex2D(_Specular,TRANSFORM_TEX(node_683, _Specular));
		float node_6584 = 0.0;
		float3 specularColor = (sqrt(((node_6584 + ((lerp(_Specular_var.rgb,dot(_Specular_var.rgb,float3(0.3,0.59,0.11)),_SpeDesIntensity) - _SpecularContrast) * (1.0 - node_6584)) / ((1.0 - _SpecularContrast) - _SpecularContrast))*_Specular_color.rgb))*_Specular_Brightness);
		float specularMonochrome = max(max(specularColor.r, specularColor.g), specularColor.b);
		float NdotV = max(0.0,dot(normalDirection, viewDirection));
		float NdotH = max(0.0,dot(normalDirection, halfDirection));
		float VdotH = max(0.0,dot(viewDirection, halfDirection));
		float visTerm = SmithBeckmannVisibilityTerm(NdotL, NdotV, 1.0 - gloss);
		float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0 - gloss)));
		float specularPBL = max(0, (NdotL*visTerm*normTerm) * unity_LightGammaCorrectionConsts_PIDiv4);
		float3 directSpecular = 1 * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
		half grazingTerm = saturate(gloss + specularMonochrome);
		float3 indirectSpecular = (gi.indirect.specular + node_5046);
		indirectSpecular *= FresnelLerp(specularColor, grazingTerm, NdotV);
		float3 specular = (directSpecular + indirectSpecular);
		/////// Diffuse:
		NdotL = max(0.0,dot(normalDirection, lightDirection));
		half fd90 = 0.5 + 2 * LdotH * LdotH * (1 - gloss);
		float3 directDiffuse = ((1 + (fd90 - 1)*pow((1.00001 - NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001 - NdotV), 5)) * NdotL) * attenColor;
		float3 indirectDiffuse = float3(0,0,0);
		indirectDiffuse += node_5046; // Diffuse Ambient Light
		indirectDiffuse += gi.indirect.diffuse;
		float node_1147_ang = ((_Diffuse_Rotator*3.141592654) / 180.0);
		float node_1147_spd = 1.0;
		float node_1147_cos = cos(node_1147_spd*node_1147_ang);
		float node_1147_sin = sin(node_1147_spd*node_1147_ang);
		float2 node_1147_piv = float2(0.5,0.5);
		float2 node_1147 = (mul(i.uv0 - node_1147_piv,float2x2(node_1147_cos, -node_1147_sin, node_1147_sin, node_1147_cos)) + node_1147_piv);
		float2 node_2972 = node_1147.rg;
		float2 node_6045 = node_1147.rg;
		float2 node_9150 = float2(lerp(node_2972.r, ((-1.0)*node_2972.r), _DiffuseFlipHorizontal),lerp(node_6045.g, (node_6045.g*(-1.0)), _DiffuseFlipVertical));
		float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(node_9150, _Diffuse));
		float node_8167 = 0.0;
		float3 node_3646 = (((node_8167 + ((_Diffuse_var.rgb - _DiffuseContrast) * (1.0 - node_8167)) / ((1.0 - _DiffuseContrast) - _DiffuseContrast))*_Diffuse_color.rgb)*_Diffuse_Brightness);
		//if (_WithoutContrast ==1)  //"0"为false
		//{
		//	node_3646 = _Diffuse_var* _Diffuse_Brightness*_Diffuse_color.rgb;
		//}
		//test
		//float3 node_3646 = (_Diffuse_var.rgb - _DiffuseContrast) / (1 - 2 * _DiffuseContrast)*_Diffuse_color.rgb*_Diffuse_Brightness;
		float2 _UV_Set_var = lerp(i.uv0, i.uv1, _UV_Set);
		float4 _shadow_var = tex2D(_shadow,TRANSFORM_TEX(_UV_Set_var, _shadow));
		float3 node_6937;
		node_6937 = lerp(node_3646, node_3646 * _shadow_var.rgb, _ShadowBrightness);
		/*	if (_ShadowAffectDiffuse ==1){
		node_6937 = (node_3646*(_shadow_var.rgb*_ShadowBrightness));
		}*/
		float3 diffuseColor = (lerp(((_FresnelColor.rgb*(-1 * (1.0 - max(0,dot(normalDirection, viewDirection)))))*node_3646), node_6937, _Fresnel) + node_6937);
		diffuseColor *= 1 - specularMonochrome;
		float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
		////// Emissive:
		float3 emissive = (_Emssion*_EmessionColor.rgb);
		/// Final Color:
		float3 finalColor = diffuse + specular + emissive;
		float alpha1 = (_Alpha_var.r + _Alpha_var.g + _Alpha_var.b) / 3;
		alpha1 = max(min(alpha1 + _Opacity, 1),0);
		return fixed4(finalColor, alpha1);//1
		}
			ENDCG
		}
			Pass{
			Name "FORWARD"
			Tags{
			"LightMode" = "ForwardBase"
		}
			//ZWrite Off
			//ZTest On
			Blend SrcAlpha OneMinusSrcAlpha
			Cull Back
			//ColorMask 0
			//Offset -1,-1
			CGPROGRAM
#pragma vertex vert
#pragma fragment frag
#define UNITY_PASS_FORWARDBASE
#define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
#define _GLOSSYENV 1
#include "UnityCG.cginc"
#include "AutoLight.cginc"
#include "Lighting.cginc"
#include "UnityPBSLighting.cginc"
#include "UnityStandardBRDF.cginc"
#pragma multi_compile_fwdbase_fullshadows
#pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
#pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
#pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
#pragma exclude_renderers xbox360 xboxone ps3 ps4 psp2 
#pragma target 3.0
			uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
		uniform sampler2D _Specular; uniform float4 _Specular_ST;
		uniform sampler2D _Normal; uniform float4 _Normal_ST;
		uniform sampler2D _Alpha; uniform float4 _Alpha_ST;
		uniform float _Diffuse_Rotator;
		uniform float4 _Diffuse_color;
		uniform float _Specular_Normal_Rotator;
		uniform float _Alpha_Rotator;
		uniform float _Opacity;
		uniform float4 _Specular_color;
		uniform float _Emssion;
		uniform float4 _EmessionColor;
		uniform sampler2D _shadow; uniform float4 _shadow_ST;
		uniform fixed _UV_Set;
		uniform float _Diffuse_Brightness;
		uniform float _Specular_Brightness;
		uniform float _ShadowBrightness;
		uniform float _Bump_Height;
		uniform float _DiffuseContrast;
		uniform fixed _DiffuseFlipHorizontal;
		uniform fixed _DiffuseFlipVertical;
		uniform float _SpecularContrast;
		uniform fixed _SpecularNormalFlipHorizontal;
		uniform fixed _SpecularNormalFlipVertical;
		uniform fixed _AlphaFlipVertical;
		uniform fixed _AlphaFlipHorizontal;
		uniform float _Roughness;
		uniform fixed _Fresnel;
		uniform float _SpeDesIntensity;
		uniform float4 _FresnelColor;
		float _WithoutContrast;
		float _ShadowAffectDiffuse;
		float _IsNormalMap;
		struct VertexInput {
			float4 vertex : POSITION;
			float3 normal : NORMAL;
			float4 tangent : TANGENT;
			float2 texcoord0 : TEXCOORD0;
			float2 texcoord1 : TEXCOORD1;
			float2 texcoord2 : TEXCOORD2;
		};
		struct VertexOutput {
			float4 pos : SV_POSITION;
			float2 uv0 : TEXCOORD0;
			float2 uv1 : TEXCOORD1;
			float2 uv2 : TEXCOORD2;
			float4 posWorld : TEXCOORD3;
			float3 normalDir : TEXCOORD4;
			float3 tangentDir : TEXCOORD5;
			float3 bitangentDir : TEXCOORD6;
			LIGHTING_COORDS(7,8)
#if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
				float4 ambientOrLightmapUV : TEXCOORD9;
#endif
		};
		VertexOutput vert(VertexInput v) {
			VertexOutput o = (VertexOutput)0;
			o.uv0 = v.texcoord0;
			o.uv1 = v.texcoord1;
			o.uv2 = v.texcoord2;
#ifdef LIGHTMAP_ON
			o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
			o.ambientOrLightmapUV.zw = 0;
#endif
#ifdef DYNAMICLIGHTMAP_ON
			o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
#endif
			o.normalDir = UnityObjectToWorldNormal(v.normal);
			o.tangentDir = normalize(mul(unity_ObjectToWorld, float4(v.tangent.xyz, 0.0)).xyz);
			o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
			o.posWorld = mul(unity_ObjectToWorld, v.vertex);
			float3 lightColor = _LightColor0.rgb;
			o.pos = UnityObjectToClipPos(v.vertex);
			TRANSFER_VERTEX_TO_FRAGMENT(o)
				return o;
		}
		float4 frag(VertexOutput i, float facing : VFACE) : COLOR{ //, float facing : VFACE
			float isFrontFace = (facing >= 0 ? 1 : 0);  //facing 改变摄像机的朝向，若背对摄像机则不做渲染
		float faceSign = (facing >= 0 ? 1 : -1);
		i.normalDir = normalize(i.normalDir);   //顶点的法线方向做归一化处理
		i.normalDir *= faceSign;   //乘以facing朝向
		float3x3 tangentTransform = float3x3(i.tangentDir, i.bitangentDir, i.normalDir);  //三维矩阵（切线方向，双切线方向，法线方向）
		float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);  //观察方向，世界空间的相机-模型顶点的世界空间坐标
		float node_4841_ang = ((_Specular_Normal_Rotator*3.141592654) / 180.0);   //法线和高光旋转值 *pi/180
		float node_4841_spd = 1.0;
		float node_4841_cos = cos(node_4841_spd*node_4841_ang);  //cos旋转角度
		float node_4841_sin = sin(node_4841_spd*node_4841_ang);  //sin旋转角度
		float2 node_4841_piv = float2(0.5,0.5);   //旋转锚点
		float2 node_4841 = (mul(i.uv0 - node_4841_piv,float2x2(node_4841_cos, -node_4841_sin, node_4841_sin, node_4841_cos)) + node_4841_piv);  //    二阶矩阵（cos,-sin,sin,cos）
		float2 node_9409 = node_4841.rg;
		float2 node_8467 = node_4841.rg;
		float2 node_683 = float2(lerp(node_9409.r, ((-1.0)*node_9409.r), _SpecularNormalFlipHorizontal),lerp(node_8467.g, (node_8467.g*(-1.0)), _SpecularNormalFlipVertical));  //通过线性插值，水平/竖直翻转
																																												//如果法线贴图格式为normalmap
		float3 _Normal_var = tex2D(_Normal, TRANSFORM_TEX(node_683, _Normal));  //TRANSFORM_TEX:通过系统内置的方法与ST关联
		_Normal_var.xyz = _Normal_var.xyz * 2 - 1;
		/*	if (_IsNormalMap==1)
		{
		_Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_683, _Normal)));
		}*/
		float3 normalLocal = float3((float2(_Normal_var.r,_Normal_var.g)*_Bump_Height),_Normal_var.b);   // 只对法线的rg进行改变强度//法线只存在法线贴图的rg通道？或通过rg通道可以推断出b通道？
		float3 normalDirection = normalize(mul(normalLocal, tangentTransform));  // Perturbed normals  //法线方向 -- 归一化 ，本地法线方向  通过 法线和切线的矩阵进行变换
		float3 viewReflectDirection = reflect(-viewDirection, normalDirection);   //观察角度的反射方向，也就是跑到眼睛里面光的方向
		float node_9472_ang = ((_Alpha_Rotator*3.141592654) / 180.0);
		float node_9472_spd = 1.0;
		float node_9472_cos = cos(node_9472_spd*node_9472_ang);
		float node_9472_sin = sin(node_9472_spd*node_9472_ang);
		float2 node_9472_piv = float2(0.5,0.5);    //piv 是贴图纹理的中心
		float2 node_9472 = (mul(i.uv0 - node_9472_piv,float2x2(node_9472_cos, -node_9472_sin, node_9472_sin, node_9472_cos)) + node_9472_piv);
		float2 node_5594 = node_9472.rg;
		float2 node_9683 = node_9472.rg;
		float2 node_6067 = float2(lerp(node_5594.r, (-1 * node_5594.r), _AlphaFlipHorizontal),lerp(node_9683.g, (node_9683.g*(-1.0)), _AlphaFlipVertical));
		float4 _Alpha_var = tex2D(_Alpha,TRANSFORM_TEX(node_6067, _Alpha));
		//clip(_Alpha_var.a - 0.5);    //裁剪
		float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);    //光的位置， 归一化世界空间下的光的坐标
		float3 lightColor = _LightColor0.rgb;    //光的颜色
		float3 halfDirection = normalize(viewDirection + lightDirection);   //
																			////// Lighting:
		float attenuation = LIGHT_ATTENUATION(i);
		float3 attenColor = attenuation * _LightColor0.xyz;
		float Pi = 3.141592654;
		float InvPi = 0.31830988618;
		///////// Gloss:
		float gloss = 1.0 - _Roughness; // Convert roughness to gloss
		float specPow = exp2(gloss * 10.0 + 1.0);
		/////// GI Data:
		UnityLight light;
#ifdef LIGHTMAP_OFF
		light.color = lightColor;
		light.dir = lightDirection;
		light.ndotl = LambertTerm(normalDirection, light.dir);
#else
		light.color = half3(0.f, 0.f, 0.f);
		light.ndotl = 0.0f;
		light.dir = half3(0.f, 0.f, 0.f);
#endif
		/* UnityGIInput d;
		d.light = light;
		d.worldPos = i.posWorld.xyz;
		d.worldViewDir = viewDirection;
		d.atten = attenuation;
		#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
		d.ambient = 0;
		d.lightmapUV = i.ambientOrLightmapUV;
		#else
		d.ambient = i.ambientOrLightmapUV;
		#endif
		d.boxMax[0] = unity_SpecCube0_BoxMax;
		d.boxMin[0] = unity_SpecCube0_BoxMin;
		d.probePosition[0] = unity_SpecCube0_ProbePosition;
		d.probeHDR[0] = unity_SpecCube0_HDR;
		d.boxMax[1] = unity_SpecCube1_BoxMax;
		d.boxMin[1] = unity_SpecCube1_BoxMin;
		d.probePosition[1] = unity_SpecCube1_ProbePosition;
		d.probeHDR[1] = unity_SpecCube1_HDR;*/
		UnityGIInput d;
		d.light = light;
		d.worldPos = i.posWorld.xyz;
		d.worldViewDir = viewDirection;
		d.atten = attenuation;
#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
		d.ambient = 0;
		d.lightmapUV = i.ambientOrLightmapUV;
#else
		d.ambient = i.ambientOrLightmapUV.rgb;
		d.lightmapUV = 0;
#endif

		d.probeHDR[0] = unity_SpecCube0_HDR;
		d.probeHDR[1] = unity_SpecCube1_HDR;
#if defined(UNITY_SPECCUBE_BLENDING) || defined(UNITY_SPECCUBE_BOX_PROJECTION)
		d.boxMin[0] = unity_SpecCube0_BoxMin; // .w holds lerp value for blending
#endif
#ifdef UNITY_SPECCUBE_BOX_PROJECTION
		d.boxMax[0] = unity_SpecCube0_BoxMax;
		d.probePosition[0] = unity_SpecCube0_ProbePosition;
		d.boxMax[1] = unity_SpecCube1_BoxMax;
		d.boxMin[1] = unity_SpecCube1_BoxMin;
		d.probePosition[1] = unity_SpecCube1_ProbePosition;
#endif
		Unity_GlossyEnvironmentData ugls_en_data;
		ugls_en_data.roughness = 1.0 - gloss;
		ugls_en_data.reflUVW = viewReflectDirection;
		UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data);
		lightDirection = gi.light.dir;
		lightColor = gi.light.color;
		////// Specular:
		float NdotL = max(0, dot(normalDirection, lightDirection));
		float3 node_5046 = (UNITY_LIGHTMODEL_AMBIENT.rgb*attenuation*_LightColor0.rgb);
		float LdotH = max(0.0,dot(lightDirection, halfDirection));
		float4 _Specular_var = tex2D(_Specular,TRANSFORM_TEX(node_683, _Specular));
		float node_6584 = 0.0;
		float3 specularColor = (sqrt(((node_6584 + ((lerp(_Specular_var.rgb,dot(_Specular_var.rgb,float3(0.3,0.59,0.11)),_SpeDesIntensity) - _SpecularContrast) * (1.0 - node_6584)) / ((1.0 - _SpecularContrast) - _SpecularContrast))*_Specular_color.rgb))*_Specular_Brightness);
		float specularMonochrome = max(max(specularColor.r, specularColor.g), specularColor.b);
		float NdotV = max(0.0,dot(normalDirection, viewDirection));
		float NdotH = max(0.0,dot(normalDirection, halfDirection));
		float VdotH = max(0.0,dot(viewDirection, halfDirection));
		float visTerm = SmithBeckmannVisibilityTerm(NdotL, NdotV, 1.0 - gloss);
		float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0 - gloss)));
		float specularPBL = max(0, (NdotL*visTerm*normTerm) * unity_LightGammaCorrectionConsts_PIDiv4);
		float3 directSpecular = 1 * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
		half grazingTerm = saturate(gloss + specularMonochrome);
		float3 indirectSpecular = (gi.indirect.specular + node_5046);
		indirectSpecular *= FresnelLerp(specularColor, grazingTerm, NdotV);
		float3 specular = (directSpecular + indirectSpecular);
		/////// Diffuse:
		NdotL = max(0.0,dot(normalDirection, lightDirection));
		half fd90 = 0.5 + 2 * LdotH * LdotH * (1 - gloss);
		float3 directDiffuse = ((1 + (fd90 - 1)*pow((1.00001 - NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001 - NdotV), 5)) * NdotL) * attenColor;
		float3 indirectDiffuse = float3(0,0,0);
		indirectDiffuse += node_5046; // Diffuse Ambient Light
		indirectDiffuse += gi.indirect.diffuse;
		float node_1147_ang = ((_Diffuse_Rotator*3.141592654) / 180.0);
		float node_1147_spd = 1.0;
		float node_1147_cos = cos(node_1147_spd*node_1147_ang);
		float node_1147_sin = sin(node_1147_spd*node_1147_ang);
		float2 node_1147_piv = float2(0.5,0.5);
		float2 node_1147 = (mul(i.uv0 - node_1147_piv,float2x2(node_1147_cos, -node_1147_sin, node_1147_sin, node_1147_cos)) + node_1147_piv);
		float2 node_2972 = node_1147.rg;
		float2 node_6045 = node_1147.rg;
		float2 node_9150 = float2(lerp(node_2972.r, ((-1.0)*node_2972.r), _DiffuseFlipHorizontal),lerp(node_6045.g, (node_6045.g*(-1.0)), _DiffuseFlipVertical));
		float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(node_9150, _Diffuse));
		float node_8167 = 0.0;
		float3 node_3646 = (((node_8167 + ((_Diffuse_var.rgb - _DiffuseContrast) * (1.0 - node_8167)) / ((1.0 - _DiffuseContrast) - _DiffuseContrast))*_Diffuse_color.rgb)*_Diffuse_Brightness);
		//if (_WithoutContrast ==1)  //"0"为false
		//{
		//	node_3646 = _Diffuse_var* _Diffuse_Brightness*_Diffuse_color.rgb;
		//}
		//test
		//float3 node_3646 = (_Diffuse_var.rgb - _DiffuseContrast) / (1 - 2 * _DiffuseContrast)*_Diffuse_color.rgb*_Diffuse_Brightness;
		float2 _UV_Set_var = lerp(i.uv0, i.uv1, _UV_Set);
		float4 _shadow_var = tex2D(_shadow,TRANSFORM_TEX(_UV_Set_var, _shadow));
		float3 node_6937;
		node_6937 = lerp(node_3646, node_3646 * _shadow_var.rgb, _ShadowBrightness);
		/*	if (_ShadowAffectDiffuse ==1){
		node_6937 = (node_3646*(_shadow_var.rgb*_ShadowBrightness));
		}*/
		float3 diffuseColor = (lerp(((_FresnelColor.rgb*(-1 * (1.0 - max(0,dot(normalDirection, viewDirection)))))*node_3646), node_6937, _Fresnel) + node_6937);
		diffuseColor *= 1 - specularMonochrome;
		float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
		////// Emissive:
		float3 emissive = (_Emssion*_EmessionColor.rgb);
		/// Final Color:
		float3 finalColor = diffuse + specular + emissive;
		float alpha1 = (_Alpha_var.r + _Alpha_var.g + _Alpha_var.b) / 3;
		alpha1 = max(min(alpha1 + _Opacity, 1),0);
		return fixed4(finalColor, alpha1);//1
		}
			ENDCG
		}


        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            Cull Off
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma exclude_renderers xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _Specular; uniform float4 _Specular_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform sampler2D _Alpha; uniform float4 _Alpha_ST;
            uniform float _Diffuse_Rotator;
            uniform float4 _Diffuse_color;
            uniform float _Specular_Normal_Rotator;
            uniform float _Alpha_Rotator;
            uniform float4 _Specular_color;
            uniform float _Emssion;
            uniform float4 _EmessionColor;
            uniform sampler2D _shadow; uniform float4 _shadow_ST;
            uniform fixed _UV_Set;
            uniform float _Diffuse_Brightness;
            uniform float _Specular_Brightness;
            uniform float _ShadowBrightness;
            uniform float _Bump_Height;
            uniform float _DiffuseContrast;
            uniform fixed _DiffuseFlipHorizontal;
            uniform fixed _DiffuseFlipVertical;
            uniform float _SpecularContrast;
            uniform fixed _SpecularNormalFlipHorizontal;
            uniform fixed _SpecularNormalFlipVertical;
            uniform fixed _AlphaFlipVertical;
            uniform fixed _AlphaFlipHorizontal;
            uniform float _Roughness;
            uniform fixed _Fresnel;
            uniform float _SpeDesIntensity;
            uniform float4 _FresnelColor;
			float _WithoutContrast;
			float _ShadowAffectDiffuse;
			float _IsNormalMap;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
			float4 frag(VertexOutput i, float facing : VFACE) : COLOR{
				float isFrontFace = (facing >= 0 ? 1 : 0);
				float faceSign = (facing >= 0 ? 1 : -1);
				i.normalDir = normalize(i.normalDir);
				i.normalDir *= faceSign;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float node_4841_ang = ((_Specular_Normal_Rotator*3.141592654)/180.0);
                float node_4841_spd = 1.0;
                float node_4841_cos = cos(node_4841_spd*node_4841_ang);
                float node_4841_sin = sin(node_4841_spd*node_4841_ang);
                float2 node_4841_piv = float2(0.5,0.5);
                float2 node_4841 = (mul(i.uv0-node_4841_piv,float2x2( node_4841_cos, -node_4841_sin, node_4841_sin, node_4841_cos))+node_4841_piv);
                float2 node_9409 = node_4841.rg;
                float2 node_8467 = node_4841.rg;
                float2 node_683 = float2(lerp( node_9409.r, ((-1.0)*node_9409.r), _SpecularNormalFlipHorizontal ),lerp( node_8467.g, (node_8467.g*(-1.0)), _SpecularNormalFlipVertical ));
				//如果法线贴图格式为normalmap
				float3 _Normal_var = tex2D(_Normal, TRANSFORM_TEX(node_683, _Normal));
				_Normal_var.xyz = _Normal_var.xyz * 2 - 1;
				if (_IsNormalMap == 1)
				{
					_Normal_var = UnpackNormal(tex2D(_Normal, TRANSFORM_TEX(node_683, _Normal)));
				}
				//float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_683, _Normal)));
                float3 normalLocal = float3((float2(_Normal_var.r,_Normal_var.g)*_Bump_Height),_Normal_var.b);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float node_9472_ang = ((_Alpha_Rotator*3.141592654)/180.0);
                float node_9472_spd = 1.0;
                float node_9472_cos = cos(node_9472_spd*node_9472_ang);
                float node_9472_sin = sin(node_9472_spd*node_9472_ang);
                float2 node_9472_piv = float2(0.5,0.5);
                float2 node_9472 = (mul(i.uv0-node_9472_piv,float2x2( node_9472_cos, -node_9472_sin, node_9472_sin, node_9472_cos))+node_9472_piv);
                float2 node_5594 = node_9472.rg;
                float2 node_9683 = node_9472.rg;
                float2 node_6067 = float2(lerp( node_5594.r, (-1*node_5594.r), _AlphaFlipHorizontal ),lerp( node_9683.g, (node_9683.g*(-1.0)), _AlphaFlipVertical ));
                float4 _Alpha_var = tex2D(_Alpha,TRANSFORM_TEX(node_6067, _Alpha));
                clip(_Alpha_var.a - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = 1.0 - _Roughness; // Convert roughness to gloss
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float4 _Specular_var = tex2D(_Specular,TRANSFORM_TEX(node_683, _Specular));
                float node_6584 = 0.0;
                float3 specularColor = (sqrt(((node_6584 + ( (lerp(_Specular_var.rgb,dot(_Specular_var.rgb,float3(0.3,0.59,0.11)),_SpeDesIntensity) - _SpecularContrast) * (1.0 - node_6584) ) / ((1.0 - _SpecularContrast) - _SpecularContrast))*_Specular_color.rgb))*_Specular_Brightness);
                float specularMonochrome = max( max(specularColor.r, specularColor.g), specularColor.b);
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
                float specularPBL = max(0, (NdotL*visTerm*normTerm) * unity_LightGammaCorrectionConsts_PIDiv4 );
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float3 directDiffuse = ((1 +(fd90 - 1)*pow((1.00001-NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL) * attenColor;
                float node_1147_ang = ((_Diffuse_Rotator*3.141592654)/180.0);
                float node_1147_spd = 1.0;
                float node_1147_cos = cos(node_1147_spd*node_1147_ang);
                float node_1147_sin = sin(node_1147_spd*node_1147_ang);
                float2 node_1147_piv = float2(0.5,0.5);
                float2 node_1147 = (mul(i.uv0-node_1147_piv,float2x2( node_1147_cos, -node_1147_sin, node_1147_sin, node_1147_cos))+node_1147_piv);
                float2 node_2972 = node_1147.rg;
                float2 node_6045 = node_1147.rg;
                float2 node_9150 = float2(lerp( node_2972.r, ((-1.0)*node_2972.r), _DiffuseFlipHorizontal ),lerp( node_6045.g, (node_6045.g*(-1.0)), _DiffuseFlipVertical ));
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(node_9150, _Diffuse));
                float node_8167 = 0.0;
                float3 node_3646 = (((node_8167 + ( (_Diffuse_var.rgb - _DiffuseContrast) * (1.0 - node_8167) ) / ((1.0 - _DiffuseContrast) - _DiffuseContrast))*_Diffuse_color.rgb)*_Diffuse_Brightness);
                float2 _UV_Set_var = lerp( i.uv0, i.uv1, _UV_Set );
                float4 _shadow_var = tex2D(_shadow,TRANSFORM_TEX(_UV_Set_var, _shadow));
				if (_WithoutContrast == 1)  //"0"为false
				{
					node_3646 = _Diffuse_var* _Diffuse_Brightness*_Diffuse_color.rgb;
				}
				float3 node_6937 = lerp(node_3646, node_3646 * _shadow_var.rgb, _ShadowBrightness);
				
				if (_ShadowAffectDiffuse == 1) 
				{
					node_6937 = (node_3646*(_shadow_var.rgb*_ShadowBrightness));
				}
                //float3 node_6937 = (node_3646*(_shadow_var.rgb*_ShadowBrightness));
                float3 diffuseColor = (lerp( ((_FresnelColor.rgb*(-1*(1.0-max(0,dot(normalDirection, viewDirection)))))*node_3646), node_6937, _Fresnel )+node_6937);
                diffuseColor *= 1-specularMonochrome;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma exclude_renderers xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _Alpha; uniform float4 _Alpha_ST;
            uniform float _Alpha_Rotator;
            uniform fixed _AlphaFlipVertical;
            uniform fixed _AlphaFlipHorizontal;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float2 uv1 : TEXCOORD2;
                float2 uv2 : TEXCOORD3;
                float4 posWorld : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
			float4 frag(VertexOutput i, float facing : VFACE) : COLOR{
				float isFrontFace = (facing >= 0 ? 1 : 0);
				float faceSign = (facing >= 0 ? 1 : -1);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float node_9472_ang = ((_Alpha_Rotator*3.141592654)/180.0);
                float node_9472_spd = 1.0;
                float node_9472_cos = cos(node_9472_spd*node_9472_ang);
                float node_9472_sin = sin(node_9472_spd*node_9472_ang);
                float2 node_9472_piv = float2(0.5,0.5);
                float2 node_9472 = (mul(i.uv0-node_9472_piv,float2x2( node_9472_cos, -node_9472_sin, node_9472_sin, node_9472_cos))+node_9472_piv);
                float2 node_5594 = node_9472.rg;
                float2 node_9683 = node_9472.rg;
                float2 node_6067 = float2(lerp( node_5594.r, (-1*node_5594.r), _AlphaFlipHorizontal ),lerp( node_9683.g, (node_9683.g*(-1.0)), _AlphaFlipVertical ));
                float4 _Alpha_var = tex2D(_Alpha,TRANSFORM_TEX(node_6067, _Alpha));
                clip(_Alpha_var.a - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma exclude_renderers xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _Specular; uniform float4 _Specular_ST;
            uniform float _Diffuse_Rotator;
            uniform float4 _Diffuse_color;
            uniform float _Specular_Normal_Rotator;
            uniform float4 _Specular_color;
            uniform float _Emssion;
            uniform float4 _EmessionColor;
            uniform sampler2D _shadow; uniform float4 _shadow_ST;
            uniform fixed _UV_Set;
            uniform float _Diffuse_Brightness;
            uniform float _Specular_Brightness;
            uniform float _ShadowBrightness;
            uniform float _DiffuseContrast;
            uniform fixed _DiffuseFlipHorizontal;
            uniform fixed _DiffuseFlipVertical;
            uniform float _SpecularContrast;
            uniform fixed _SpecularNormalFlipHorizontal;
            uniform fixed _SpecularNormalFlipVertical;
            uniform float _Roughness;
            uniform fixed _Fresnel;
            uniform float _SpeDesIntensity;
            uniform float4 _FresnelColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
			float4 frag(VertexOutput i, float facing : VFACE) : COLOR{
				float isFrontFace = (facing >= 0 ? 1 : 0);
				float faceSign = (facing >= 0 ? 1 : -1);
				i.normalDir = normalize(i.normalDir);
				i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = (_Emssion*_EmessionColor.rgb);
                
                float node_1147_ang = ((_Diffuse_Rotator*3.141592654)/180.0);
                float node_1147_spd = 1.0;
                float node_1147_cos = cos(node_1147_spd*node_1147_ang);
                float node_1147_sin = sin(node_1147_spd*node_1147_ang);
                float2 node_1147_piv = float2(0.5,0.5);
                float2 node_1147 = (mul(i.uv0-node_1147_piv,float2x2( node_1147_cos, -node_1147_sin, node_1147_sin, node_1147_cos))+node_1147_piv);
                float2 node_2972 = node_1147.rg;
                float2 node_6045 = node_1147.rg;
                float2 node_9150 = float2(lerp( node_2972.r, ((-1.0)*node_2972.r), _DiffuseFlipHorizontal ),lerp( node_6045.g, (node_6045.g*(-1.0)), _DiffuseFlipVertical ));
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(node_9150, _Diffuse));
                float node_8167 = 0.0;
                float3 node_3646 = (((node_8167 + ( (_Diffuse_var.rgb - _DiffuseContrast) * (1.0 - node_8167) ) / ((1.0 - _DiffuseContrast) - _DiffuseContrast))*_Diffuse_color.rgb)*_Diffuse_Brightness);
                float2 _UV_Set_var = lerp( i.uv0, i.uv1, _UV_Set );
                float4 _shadow_var = tex2D(_shadow,TRANSFORM_TEX(_UV_Set_var, _shadow));
                float3 node_6937 = (node_3646*(_shadow_var.rgb*_ShadowBrightness));
                float3 diffColor = (lerp( ((_FresnelColor.rgb*(-1*(1.0-max(0,dot(normalDirection, viewDirection)))))*node_3646), node_6937, _Fresnel )+node_6937);
                float node_4841_ang = ((_Specular_Normal_Rotator*3.141592654)/180.0);
                float node_4841_spd = 1.0;
                float node_4841_cos = cos(node_4841_spd*node_4841_ang);
                float node_4841_sin = sin(node_4841_spd*node_4841_ang);
                float2 node_4841_piv = float2(0.5,0.5);
                float2 node_4841 = (mul(i.uv0-node_4841_piv,float2x2( node_4841_cos, -node_4841_sin, node_4841_sin, node_4841_cos))+node_4841_piv);
                float2 node_9409 = node_4841.rg;
                float2 node_8467 = node_4841.rg;
                float2 node_683 = float2(lerp( node_9409.r, ((-1.0)*node_9409.r), _SpecularNormalFlipHorizontal ),lerp( node_8467.g, (node_8467.g*(-1.0)), _SpecularNormalFlipVertical ));
                float4 _Specular_var = tex2D(_Specular,TRANSFORM_TEX(node_683, _Specular));
                float node_6584 = 0.0;
                float3 specColor = (sqrt(((node_6584 + ( (lerp(_Specular_var.rgb,dot(_Specular_var.rgb,float3(0.3,0.59,0.11)),_SpeDesIntensity) - _SpecularContrast) * (1.0 - node_6584) ) / ((1.0 - _SpecularContrast) - _SpecularContrast))*_Specular_color.rgb))*_Specular_Brightness);
                float specularMonochrome = max(max(specColor.r, specColor.g),specColor.b);
                diffColor *= (1.0-specularMonochrome);
                float roughness = _Roughness;
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
}
