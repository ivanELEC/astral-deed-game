package effects;

import flixel.system.FlxAssets.FlxShader;

class HighlightShader extends FlxShader
{
	@:glFragmentSource('
		#pragma header

		void main()
		{
			const float lightenFactor = 1.4;

			vec4 color = flixel_texture2D(bitmap, openfl_TextureCoordv);
			
			//lighten sprite
			float lighter_r = color.r * lightenFactor;
			float lighter_g = color.g * lightenFactor;
			float lighter_b = color.b * lightenFactor;

			gl_FragColor = vec4(lighter_r, lighter_g, lighter_b, 1.0);
			
		}')
	public function new()
	{
		super();
	}
}