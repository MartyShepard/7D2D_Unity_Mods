Shader "FireWing/Wing_Main" {
	Properties {
		_MainTex ("MainTex", 2D) = "black" {}
		_TintColor ("Color", Vector) = (0.5,0.5,0.5,1)
		_SubTex ("SubTex", 2D) = "white" {}
		_Mask ("Mask", 2D) = "white" {}
		_Transparency ("Transparency", Range(0, 6)) = 3.971232
		_Noise ("Noise", 2D) = "black" {}
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType"="Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard
#pragma target 3.0

		sampler2D _MainTex;
		struct Input
		{
			float2 uv_MainTex;
		};

		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			fixed4 c = tex2D(_MainTex, IN.uv_MainTex);
			o.Albedo = c.rgb;
			o.Alpha = c.a;
		}
		ENDCG
	}
	//CustomEditor "ShaderForgeMaterialInspector"
}