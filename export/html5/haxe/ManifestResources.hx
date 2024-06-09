package;

import haxe.io.Bytes;
import haxe.io.Path;
import lime.utils.AssetBundle;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import lime.utils.Assets;

#if sys
import sys.FileSystem;
#end

#if disable_preloader_assets
@:dox(hide) class ManifestResources {
	public static var preloadLibraries:Array<Dynamic>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;

	public static function init (config:Dynamic):Void {
		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();
	}
}
#else
@:access(lime.utils.Assets)


@:keep @:dox(hide) class ManifestResources {


	public static var preloadLibraries:Array<AssetLibrary>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;


	public static function init (config:Dynamic):Void {

		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();

		rootPath = null;

		if (config != null && Reflect.hasField (config, "rootPath")) {

			rootPath = Reflect.field (config, "rootPath");

			if(!StringTools.endsWith (rootPath, "/")) {

				rootPath += "/";

			}

		}

		if (rootPath == null) {

			#if (ios || tvos || webassembly)
			rootPath = "assets/";
			#elseif android
			rootPath = "";
			#elseif (console || sys)
			rootPath = lime.system.System.applicationDirectory;
			#else
			rootPath = "./";
			#end

		}

		#if (openfl && !flash && !display)
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_jaquard12chartedregular_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_poppinsmedium_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_monsterrat_ttf);
		
		#end

		var data, manifest, library, bundle;

		data = '{"name":null,"assets":"aoy4:pathy34:assets%2Fdata%2Fdata-goes-here.txty4:sizezy4:typey4:TEXTy2:idR1y7:preloadtgoR0y36:assets%2Fimages%2FcursorPointer6.pngR2i2901R3y5:IMAGER5R7R6tgoR0y36:assets%2Fimages%2Fimages-go-here.txtR2zR3R4R5R9R6tgoR0y39:assets%2Fimages%2FmenuBgSpritesheet.pngR2i527092R3R8R5R10R6tgoR2i574996R3y4:FONTy9:classNamey43:__ASSET__assets_jaquard12chartedregular_ttfR5y36:assets%2Fjaquard12ChartedRegular.ttfR6tgoR2i14109463R3y5:MUSICR5y38:assets%2Fmusic%2FintroTouchAbsence.mp3y9:pathGroupaR16hR6tgoR2i4975479R3R15R5y32:assets%2Fmusic%2FmenuEophona.mp3R17aR18hR6tgoR0y36:assets%2Fmusic%2Fmusic-goes-here.txtR2zR3R4R5R19R6tgoR2i156520R3R11R12y33:__ASSET__assets_poppinsmedium_ttfR5y26:assets%2FpoppinsMedium.ttfR6tgoR0y36:assets%2Fsounds%2Fsounds-go-here.txtR2zR3R4R5R22R6tgoR2i8220R3R15R5y26:flixel%2Fsounds%2Fbeep.mp3R17aR23y26:flixel%2Fsounds%2Fbeep.ogghR6tgoR2i39706R3R15R5y28:flixel%2Fsounds%2Fflixel.mp3R17aR25y28:flixel%2Fsounds%2Fflixel.ogghR6tgoR2i6840R3y5:SOUNDR5R24R17aR23R24hgoR2i33629R3R27R5R26R17aR25R26hgoR2i15744R3R11R12y35:__ASSET__flixel_fonts_nokiafc22_ttfR5y30:flixel%2Ffonts%2Fnokiafc22.ttfR6tgoR2i29724R3R11R12y36:__ASSET__flixel_fonts_monsterrat_ttfR5y31:flixel%2Ffonts%2Fmonsterrat.ttfR6tgoR0y33:flixel%2Fimages%2Fui%2Fbutton.pngR2i277R3R8R5R32R6tgoR0y36:flixel%2Fimages%2Flogo%2Fdefault.pngR2i505R3R8R5R33R6tgh","rootPath":null,"version":2,"libraryArgs":[],"libraryType":null}';
		manifest = AssetManifest.parse (data, rootPath);
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("default", library);
		

		library = Assets.getLibrary ("default");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("default");
		

	}


}

#if !display
#if flash

@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_data_goes_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_cursorpointer6_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_images_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubgspritesheet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_jaquard12chartedregular_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_introtouchabsence_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_menueophona_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_music_goes_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_poppinsmedium_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_sounds_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_default_json extends null { }


#elseif (desktop || cpp)

@:keep @:file("assets/data/data-goes-here.txt") @:noCompletion #if display private #end class __ASSET__assets_data_data_goes_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/images/cursorPointer6.png") @:noCompletion #if display private #end class __ASSET__assets_images_cursorpointer6_png extends lime.graphics.Image {}
@:keep @:file("assets/images/images-go-here.txt") @:noCompletion #if display private #end class __ASSET__assets_images_images_go_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/images/menuBgSpritesheet.png") @:noCompletion #if display private #end class __ASSET__assets_images_menubgspritesheet_png extends lime.graphics.Image {}
@:keep @:font("export/html5/obj/webfont/jaquard12ChartedRegular.ttf") @:noCompletion #if display private #end class __ASSET__assets_jaquard12chartedregular_ttf extends lime.text.Font {}
@:keep @:file("assets/music/introTouchAbsence.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_introtouchabsence_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/menuEophona.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_menueophona_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/music-goes-here.txt") @:noCompletion #if display private #end class __ASSET__assets_music_music_goes_here_txt extends haxe.io.Bytes {}
@:keep @:font("export/html5/obj/webfont/poppinsMedium.ttf") @:noCompletion #if display private #end class __ASSET__assets_poppinsmedium_ttf extends lime.text.Font {}
@:keep @:file("assets/sounds/sounds-go-here.txt") @:noCompletion #if display private #end class __ASSET__assets_sounds_sounds_go_here_txt extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/5,8,0/assets/sounds/beep.mp3") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/5,8,0/assets/sounds/flixel.mp3") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/5,8,0/assets/sounds/beep.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/5,8,0/assets/sounds/flixel.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends haxe.io.Bytes {}
@:keep @:font("export/html5/obj/webfont/nokiafc22.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font {}
@:keep @:font("export/html5/obj/webfont/monsterrat.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel/5,8,0/assets/images/ui/button.png") @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel/5,8,0/assets/images/logo/default.png") @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends lime.graphics.Image {}
@:keep @:file("") @:noCompletion #if display private #end class __ASSET__manifest_default_json extends haxe.io.Bytes {}



#else

@:keep @:expose('__ASSET__assets_jaquard12chartedregular_ttf') @:noCompletion #if display private #end class __ASSET__assets_jaquard12chartedregular_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/jaquard12ChartedRegular"; #else ascender = 960; descender = -300; height = 1260; numGlyphs = 349; underlinePosition = -125; underlineThickness = 50; unitsPerEM = 1260; #end name = "Jacquard 12 Charted Regular"; super (); }}
@:keep @:expose('__ASSET__assets_poppinsmedium_ttf') @:noCompletion #if display private #end class __ASSET__assets_poppinsmedium_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/poppinsMedium"; #else ascender = 1050; descender = -350; height = 1500; numGlyphs = 1059; underlinePosition = -100; underlineThickness = 50; unitsPerEM = 1000; #end name = "Poppins Medium"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/nokiafc22"; #else ascender = 2048; descender = -512; height = 2816; numGlyphs = 172; underlinePosition = -640; underlineThickness = 256; unitsPerEM = 2048; #end name = "Nokia Cellphone FC Small"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/monsterrat"; #else ascender = 968; descender = -251; height = 1219; numGlyphs = 263; underlinePosition = -150; underlineThickness = 50; unitsPerEM = 1000; #end name = "Monsterrat"; super (); }}


#end

#if (openfl && !flash)

#if html5
@:keep @:expose('__ASSET__OPENFL__assets_jaquard12chartedregular_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_jaquard12chartedregular_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_jaquard12chartedregular_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_poppinsmedium_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_poppinsmedium_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_poppinsmedium_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#else
@:keep @:expose('__ASSET__OPENFL__assets_jaquard12chartedregular_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_jaquard12chartedregular_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_jaquard12chartedregular_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_poppinsmedium_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_poppinsmedium_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_poppinsmedium_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#end

#end
#end

#end