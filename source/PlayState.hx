package;

<<<<<<< HEAD
import Event;
import Section.SwagSection;
import Song.SwagSong;
import Stage.JSONStage;
import Stage.ParsedJSONStage;
import Stage.StageJSON;
import WiggleEffect;
import achievements.Achievements;
=======
import DialogueSubstate.DialogueStyle;
import Event;
import Section.SwagSection;
import Song.SwagSong;
>>>>>>> upstream
import editors.CharacterEditor;
import flixel.FlxBasic;
import flixel.FlxCamera;
import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.FlxSubState;
<<<<<<< HEAD
=======
import flixel.addons.display.FlxBackdrop;
>>>>>>> upstream
import flixel.addons.transition.FlxTransitionableState;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.group.FlxSpriteGroup;
import flixel.math.FlxMath;
import flixel.math.FlxPoint;
<<<<<<< HEAD
=======
import flixel.math.FlxRandom;
>>>>>>> upstream
import flixel.math.FlxRect;
import flixel.system.FlxSound;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.ui.FlxBar;
<<<<<<< HEAD
=======
import flixel.util.FlxAxes;
>>>>>>> upstream
import flixel.util.FlxColor;
import flixel.util.FlxSort;
import flixel.util.FlxStringUtil;
import flixel.util.FlxTimer;
import haxe.Json;
import hscript.Interp;
import hscript.Parser;
import lime.app.Application;
import lime.utils.Assets;
<<<<<<< HEAD
import modifiers.Modifiers;
=======
>>>>>>> upstream
import openfl.Lib;
import openfl.display.BitmapData;
import openfl.filters.BlurFilter;
import openfl.filters.ShaderFilter;
<<<<<<< HEAD
import scripts.ScriptConsole;
import scripts.ScriptEssentials;
import ui.ConsistencyBar;
=======
>>>>>>> upstream

using StringTools;

#if FILESYSTEM
import Sys;
import sys.FileSystem;
import sys.io.File;
#end
<<<<<<< HEAD

=======
>>>>>>> upstream
#if desktop
import Discord.DiscordClient;
#end

<<<<<<< HEAD
// #if VIDEOS_ALLOWED
// import vlc.MP4Handler;
// import vlc.MP4Sprite;
// #end

class PlayState extends MusicBeatState
{
	public static var seenCutscene:Bool = false;
	public static var previousCamPos:FlxPoint = null;
	public static var previousCamFollow:FlxPoint = null;
=======
typedef StageJSON =
{
	var name:String;
	var bfPosition:Array<Float>;
	var gfPosition:Array<Float>;
	var dadPosition:Array<Float>;
	var defaultCamZoom:Null<Float>;

	var isHalloween:Null<Bool>;
}

class PlayState extends MusicBeatState
{
>>>>>>> upstream
	public static var instance:PlayState = null;

	// main vars
	public static var curStage:String = '';
	public static var SONG:SwagSong;
	public static var EVENTS:Null<EventData>;
	public static var isStoryMode:Bool = false;
	public static var isPlaylistMode:Bool = false;
	public static var storyWeek:Int = 0;
	public static var storyPlaylist:Array<String> = [];
	public static var storyDifficulty:Int = 1;
	public static var weekSong:Int = 0;

	// ratings
<<<<<<< HEAD
	public static var sicks:Int = 0;
	public static var sickButNotReally:Int = 0;
	public static var goods:Int = 0;
	public static var bads:Int = 0;
	public static var shits:Int = 0;
=======
	public static var shits:Int = 0;
	public static var bads:Int = 0;
	public static var goods:Int = 0;
	public static var sicks:Int = 0;
>>>>>>> upstream
	public static var misses:Int = 0;

	// collective ratings
	public static var weekShits:Int = 0;
	public static var weekBads:Int = 0;
	public static var weekGoods:Int = 0;
	public static var weekSicks:Int = 0;
	public static var weekMisses:Int = 0;

	// week things
	public static var weekName:String = "";
	public static var peakCombo:Int = 0;
	public static var weekPeakCombo:Array<Int> = [];
	public static var weekAccuracies:Array<Float> = [];

	// song pos UI
	public static var songPosBG:FlxSprite;
	public static var songPosBar:FlxBar;

	var songLength:Float = 0;

	#if desktop
	var iconRPC:String = "";
	#end

<<<<<<< HEAD
	public var vocals:FlxSound;
=======
	private var vocals:FlxSound;
>>>>>>> upstream
	var isHalloween:Bool = false;

	// characters
	public static var dad:Character;
	public static var gf:Character;
	public static var boyfriend:Boyfriend;

	public var gfSpeed:Int = 1;

	// notes
	public var notes:FlxTypedGroup<Note>;
	public var splashes:FlxTypedGroup<NoteSplash>;

<<<<<<< HEAD
	public var unspawnNotes:Array<Note> = [];
	public var speakerNotes:Array<Note> = [];
	private var displaySustains:FlxTypedGroup<Note>;
	private var displayNotes:FlxTypedGroup<Note>;
	private var modifierMonochromes:FlxSpriteGroup;
=======
	private var unspawnNotes:Array<Note> = [];
	private var displaySustains:FlxTypedGroup<Note>;
	private var displayNotes:FlxTypedGroup<Note>;
>>>>>>> upstream

	private var eventNotes:Array<EventNote> = [];

	public var strumLine:FlxSprite;

	public static var strumLineNotes:FlxTypedGroup<FlxSprite>;
	public static var playerStrums:FlxTypedSpriteGroup<StaticArrow>;
	public static var cpuStrums:FlxTypedSpriteGroup<StaticArrow>;
	public static var pfBackgrounds:FlxTypedGroup<FlxSprite>;
<<<<<<< HEAD
	public static var consistencyBar:ConsistencyBar;

	/*
	public static var keyDisplays:FlxSpriteGroup;
	*/

	public static var scoreSeparator:String = "|";
=======
>>>>>>> upstream

	private var curSong:String = "";

	// scores, and other stats
	public static var accuracy:Float = 0.00;
	public static var campaignScore:Int = 0;
	public static var songScore:Int = 0;

	var songScoreDef:Int = 0;
	private var combo:Int = 0;
	private var accuracyDefault:Float = 0.00;
	private var totalNotesHit:Float = 0;
	private var totalNotesHitDefault:Float = 0;
	private var totalPlayed:Int = 0;
	private var songPositionBar:Float = 0;

	public var health:Float = 1;

	// song crap
<<<<<<< HEAD
	public var generatedMusic:Bool = false;
	public var startingSong:Bool = false;
	public var ending:Bool = false;

	// healthbar UI elements
	public var healthBarBG:FlxSprite;
	public var healthBar:FlxBar;
=======
	private var generatedMusic:Bool = false;
	private var startingSong:Bool = false;

	// healthbar UI elements
	private var healthBarBG:FlxSprite;
	private var healthBar:FlxBar;
>>>>>>> upstream

	public var iconP1:HealthIcon;
	public var iconP2:HealthIcon;

	// special
	public static var songRecording:Bool = false;
	public static var openedCharting:Bool = false;
<<<<<<< HEAD
	public static var startAt:Float = 0;
=======
>>>>>>> upstream

	var currentFrames:Int = 0;
	var whosFocused(default, set):Character = dad;

	var notesHitArray:Array<Date> = [];
	var warningSections:Array<Int> = [];

	var loadedNoteTypeInterps:Map<String, Interp>;
	var loadedEventInterps:Map<String, Interp>;

	// misc FlxSprites
	var daLogo:FlxSprite;

	// misc FlxTexts
	var scoreTxt:FlxText;
	var scrollSpeedText:FlxText;
	var songName:FlxText;

<<<<<<< HEAD
=======
	var debugPrints:FlxTypedGroup<FlxText>;

	// camera
	private static var prevCamFollow:FlxObject;

>>>>>>> upstream
	public var camZooming:Bool = false;
	public var isCamForced:Bool = false;

	public var camHUD:FlxCamera;
	public var camGame:FlxCamera;
	public var camMisc:FlxCamera;
	public var camFollow:FlxObject;
	public var curCamPos:FlxObject;

	public var defaultCamZoom:Float = 1.05;

	public var customFollowLerp:Null<Float> = null;

	public static var daPixelZoom:Float = 6;

	public var inCutscene:Bool = false;

<<<<<<< HEAD
=======
	var triggeredAlready:Bool = false;
	var allowedToHeadbang:Bool = false;

>>>>>>> upstream
	// Per song additive offset
	public static var songOffset:Float = 0;

	// dynamic camera offsets
	var cameraOffsetX:Float = 0;
	var cameraOffsetY:Float = 0;

	// BotPlay text
	private var botPlayState:FlxText;
	var botplayTween:FlxTween;

<<<<<<< HEAD
	public var healthbarDirection:FlxBarFillDirection = RIGHT_TO_LEFT;
=======
	static var originalPlaylistLength:Int = -1;
>>>>>>> upstream

	// API stuff
	public function addObject(object:FlxBasic)
	{
		add(object);
	}

	public function removeObject(object:FlxBasic)
	{
		remove(object);
	}

	// Modchart shit
<<<<<<< HEAD
	public var executeModchart = false;
=======
	private var executeModchart = false;
>>>>>>> upstream

	public var parser:Parser;
	public var interp:Interp;

	var modchart:String;
	var ast:Dynamic;

	// stage hscript shit
	public var stageInterp:Interp;

	// skin stuff
<<<<<<< HEAD
	public var noteSplashAtlas:FlxAtlasFrames;

	public var globalScrollSpeed:Float = Settings.scrollSpeed == 1 && SONG != null && SONG.speed != null ? SONG.speed : Settings.scrollSpeed;

	// RPC Variables
	public var rpcSong:String = '';
	public var rpcWeek:String = '';

	public var rpcPlaying:String = '';
	public var rpcLocation:String = '';
	public var rpcDeath:String = '';
	public var rpcPaused:String = '';

	public var previewMode(default, set):Bool = false;
=======
	var noteSplashAtlas:FlxAtlasFrames;

	public var globalScrollSpeed:Float = Settings.scrollSpeed == 1 ? SONG.speed : Settings.scrollSpeed;
>>>>>>> upstream

	override public function create()
	{
		instance = this;

<<<<<<< HEAD
		if (Paths.priorityMod != "hopeEngine")
		{
			if (Paths.exists(Paths.state("PlayState")))
			{
				Paths.setCurrentMod(Paths.priorityMod);
				FlxG.switchState(new CustomState("PlayState", PLAYSTATE));

				DONTFUCKINGTRIGGERYOUPIECEOFSHIT = true;
				return;
			}
		}

		Modifiers.stateCreation();

		rpcSong = SONG.song + " (" + CoolUtil.difficultyFromInt(storyDifficulty) + ") ";
		rpcWeek = weekName;

		rpcPlaying = "Playing " + rpcSong;
		rpcDeath = "Dead on " + rpcSong;
		rpcPaused = 'Paused on ' + rpcSong;
		rpcLocation = (isStoryMode ? "Week \"" + rpcWeek + "\"" : "Freeplay");

=======
>>>>>>> upstream
		if (FreeplayState.vocals != null)
			FreeplayState.vocals.kill();

		// set up hscript stuff
		parser = new Parser();
		parser.allowTypes = true;
		parser.allowJSON = true;
		parser.allowMetadata = true;

		loadedNoteTypeInterps = new Map<String, Interp>();
		loadedEventInterps = new Map<String, Interp>();

		#if FILESYSTEM
		Paths.destroyCustomImages();
		Paths.clearCustomSoundCache();
		#end

		if (FlxG.sound.music != null)
			FlxG.sound.music.stop();

<<<<<<< HEAD
		sicks = 0;
		sickButNotReally = 0;
		goods = 0;
		bads = 0;
		shits = 0;
		misses = 0;
		peakCombo = 0;

=======
		if (originalPlaylistLength == -1)
			originalPlaylistLength = storyPlaylist.length;

		sicks = 0;
		bads = 0;
		shits = 0;
		goods = 0;
		misses = 0;
		peakCombo = 0;

		// reset when it's a start of a new week
		if (storyPlaylist.length == originalPlaylistLength)
		{
			weekShits = 0;
			weekBads = 0;
			weekGoods = 0;
			weekSicks = 0;
			weekMisses = 0;
			weekPeakCombo = [];
			weekAccuracies = [];
			weekName = "";
		}

>>>>>>> upstream
		accuracy = 0.00;
		songScore = 0;

		camGame = new FlxCamera();
		camHUD = new FlxCamera();
		camHUD.bgColor.alpha = 0;

		camMisc = new FlxCamera();
		camMisc.bgColor.alpha = 0;

		FlxG.cameras.reset(camGame);
		FlxG.cameras.add(camHUD);
		FlxG.cameras.add(camMisc);

		FlxCamera.defaultCameras = [camGame];

<<<<<<< HEAD
		// pre lowercasing the song name (create)
		var songLowercase = Paths.toSongPath(PlayState.SONG.song);
		

		#if FILESYSTEM
		if (Paths.currentMod != null && Paths.currentMod.length > 0)
=======
		
		debugPrints = new FlxTypedGroup<FlxText>();
		add(debugPrints);
		debugPrints.cameras = [camMisc];

		// pre lowercasing the song name (create)
		var songLowercase = StringTools.replace(PlayState.SONG.song, " ", "-").toLowerCase();

		// We out here using hscript modcharts
		executeModchart = Paths.exists(Paths.modchart(songLowercase + "/modchart"));

		#if FILESYSTEM
		if (Paths.currentMod != null && Paths.currentMod.length > 0 && !executeModchart)
>>>>>>> upstream
		{
			executeModchart = FileSystem.exists(Paths.modModchart(songLowercase + "/modchart"));
			trace("EXECUTING A MOD'S MODCHART: " + executeModchart + "\nMODCHART PATH: " + Paths.modModchart(songLowercase + "/modchart"));
		}
<<<<<<< HEAD
		else
		#end
		executeModchart = Paths.exists(Paths.modchart(songLowercase + "/modchart"));
=======
		#end
>>>>>>> upstream

		if (executeModchart)
		{
			interp = new Interp();

			#if FILESYSTEM
			if (Paths.currentMod != null && Paths.currentMod.length > 0)
				modchart = File.getContent(Paths.modModchart(songLowercase + "/modchart"));
			#end

			if (modchart == null)
			{
				#if FILESYSTEM
				modchart = File.getContent(Paths.modchart(songLowercase + "/modchart"));
				#else
				modchart = Assets.getText(Paths.modchart(songLowercase + "/modchart"));
				#end
			}

			ast = parser.parseString(modchart);
			interpVariables(interp);
<<<<<<< HEAD

			try
			{
				interp.execute(ast);
			}
			catch (e:Dynamic)
			{
				Main.console.add(e, PLAYSTATE);
			}

			interpVariables(interp);

			if (interp.variables.get("onPreCreate") != null)
				interp.variables.get("onPreCreate")();
=======
			interp.execute(ast);
>>>>>>> upstream
		}

		trace(executeModchart ? "Modchart exists!" : "Modchart doesn't exist, tried path " + Paths.modchart(songLowercase + "/modchart"));

		#if desktop
		iconRPC = SONG.player2;
<<<<<<< HEAD
		DiscordClient.changePresence(rpcPlaying, rpcLocation, iconRPC);
=======
		if (!HealthIcon.splitWhitelist.contains(SONG.player2))
			iconRPC = SONG.player2.split("-")[0];

		DiscordClient.changePresence(SONG.song + " (" + CoolUtil.difficultyFromInt(storyDifficulty) + ") ", null, iconRPC);
>>>>>>> upstream
		#end

		persistentUpdate = true;
		persistentDraw = true;

		if (SONG == null)
			SONG = Song.loadFromJson('tutorial');

		Conductor.mapBPMChanges(SONG);
		Conductor.changeBPM(SONG.bpm);

		// haxe formatter fucked this up hard
		// what the hell
		trace("\n" + '//////////////////////////////////////////\n' + '//  /---- GETTING READY TO START ----\\\n' + '//  FRAMES: ${Conductor.safeFrames}\n'
			+ '//  ZONE: ${Conductor.safeZoneOffset}\n' + '//  TS: ${Conductor.timeScale}\n' + '//  BOTPLAY: ${Settings.botplay}\n'
			+ '//  \\---- GETTING READY TO START ----/\n' + '//////////////////////////////////////////\n');

		noteSplashAtlas = Paths.getSparrowAtlas('note_splashes', 'shared');

		if (SONG.noteStyle == 'pixel')
			noteSplashAtlas = Paths.getSparrowAtlas('pixel_splashes', 'shared');

		#if FILESYSTEM
		var s = options.NoteSkinSelection.loadedSplashes.get(Settings.noteSkin);
<<<<<<< HEAD
		var p = Sys.getCwd() + "skins/" + Settings.noteSkin + "/normal/note_splashes.xml";

		if (SONG.noteStyle == 'pixel')
		{
			s = options.NoteSkinSelection.loadedSplashes.get(Settings.noteSkin + "-pixel");
			p = Sys.getCwd() + "skins/" + Settings.noteSkin + "/pixel/pixel_splashes.xml";
		}
=======
		var p = Sys.getCwd() + "assets/skins/" + Settings.noteSkin + "/normal/note_splashes.xml";

		if (SONG.noteStyle == 'pixel')
			p = Sys.getCwd() + "assets/skins/" + Settings.noteSkin + "/pixel/pixel_splashes.xml";
>>>>>>> upstream

		if (Settings.noteSkin != "default" && s != null && FileSystem.exists(p))
			noteSplashAtlas = FlxAtlasFrames.fromSparrow(s, File.getContent(p));
		#end

		var gfVersion = SONG.gfVersion != null ? SONG.gfVersion : "gf";
		gf = new Character(400, 130, gfVersion);
		gf.scrollFactor.set(0.95, 0.95);

		dad = new Character(100, 100, SONG.player2);

		var camPos:FlxPoint = new FlxPoint(gf.getGraphicMidpoint().x, gf.getGraphicMidpoint().y);

<<<<<<< HEAD
		if (previousCamPos != null)
			camPos = previousCamPos;
		if (previousCamFollow != null)
			camPos = previousCamFollow;

=======
>>>>>>> upstream
		boyfriend = new Boyfriend(770, 450, SONG.player1);

		var stageCheck = SONG.stage != null ? SONG.stage : 'stage';

		#if FILESYSTEM
		var stageData = File.getContent(Sys.getCwd() + "/" + Paths.stageData(stageCheck));
		#else
		var stageData = Assets.getText(Paths.stageData(stageCheck));
		#end

		var parsed:StageJSON = cast Json.parse(stageData);

		curStage = parsed.name != null ? parsed.name : 'stage';
		defaultCamZoom = parsed.defaultCamZoom != null ? parsed.defaultCamZoom : 1.05;
		isHalloween = parsed.isHalloween != null ? parsed.isHalloween : false;

<<<<<<< HEAD
		var stageScript = "";

		if (Paths.exists(Paths.stageScript(curStage)))
		{
			#if FILESYSTEM
			stageScript = File.getContent(Paths.stageScript(curStage));
			#else
			stageScript = Assets.getText(Paths.stageScript(curStage));
			#end
		}

		var jsonStageActuallyParsed:ParsedJSONStage = null;

		if (Paths.exists(Paths.stageJSON(curStage)))
		{
			var parsedJSON:JSONStage = null;
			#if FILESYSTEM
			parsedJSON = cast Json.parse(File.getContent(Paths.stageJSON(curStage)));
			#else
			parsedJSON = cast Json.parse(Assets.getText(Paths.stageJSON(curStage)));
			#end

			jsonStageActuallyParsed = Stage.parseJSONStage(parsedJSON);
		}
=======
		#if FILESYSTEM
		var stageScript = File.getContent(Sys.getCwd() + "/" + Paths.stageScript(curStage));
		#else
		var stageScript = Assets.getText(Paths.stageScript(curStage));
		#end
>>>>>>> upstream

		var ast = parser.parseString(stageScript);

		stageInterp = new Interp();
<<<<<<< HEAD
		
		interpVariables(stageInterp);
		if (jsonStageActuallyParsed != null)
		{
			for (item in jsonStageActuallyParsed.background)
			{
				stageInterp.variables.set(item.varName, item);
				add(item);
			}
		}

		try
		{
			stageInterp.execute(ast);
		}
		catch (e:Dynamic)
		{
			Main.console.add(e, PLAYSTATE);
		}
=======
		interpVariables(stageInterp);
		stageInterp.execute(ast);
>>>>>>> upstream

		if (stageInterp.variables.get("createBackground") != null)
			stageInterp.variables.get("createBackground")();

		add(gf);
		add(dad);
		add(boyfriend);

<<<<<<< HEAD
		gf.setPosition(parsed.gfPosition[0] + gf.positionOffset[0], parsed.gfPosition[1] + gf.positionOffset[1]);
		dad.setPosition(parsed.dadPosition[0] + dad.positionOffset[0], parsed.dadPosition[1] + dad.positionOffset[1]);
		boyfriend.setPosition(parsed.bfPosition[0] + boyfriend.positionOffset[0], parsed.bfPosition[1] + boyfriend.positionOffset[1]);
=======
		gf.setPosition(parsed.gfPosition[0], parsed.gfPosition[1]);
		dad.setPosition(parsed.dadPosition[0], parsed.dadPosition[1]);
		boyfriend.setPosition(parsed.bfPosition[0], parsed.bfPosition[1]);
>>>>>>> upstream

		if (dad.curCharacter == gf.curCharacter)
		{
			dad.setPosition(gf.x, gf.y);
			gf.visible = false;
		}

<<<<<<< HEAD
		interpVariables(stageInterp);
		if (jsonStageActuallyParsed != null)
		{
			for (item in jsonStageActuallyParsed.foreground)
			{
				stageInterp.variables.set(item.varName, item);
				add(item);
			}
		}

		if (stageInterp.variables.get("createForeground") != null)
			stageInterp.variables.get("createForeground")();
=======
		if (stageInterp.variables.get("createForeground") != null)
			stageInterp.variables.get("createForeground")(boyfriend, gf, dad);
>>>>>>> upstream

		strumLine = new FlxSprite(0, 50).makeGraphic(FlxG.width, 10);
		strumLine.scrollFactor.set();

		if (Settings.downscroll)
			strumLine.y = FlxG.height - 50;

		pfBackgrounds = new FlxTypedGroup<FlxSprite>();
		add(pfBackgrounds);

		strumLineNotes = new FlxTypedGroup<FlxSprite>();
		add(strumLineNotes);

		playerStrums = new FlxTypedSpriteGroup<StaticArrow>();
		cpuStrums = new FlxTypedSpriteGroup<StaticArrow>();

		Conductor.songPosition = -5000;

		if (SONG.song == null)
			trace('song is null???');
		else
			trace('song looks gucci');

		displaySustains = new FlxTypedGroup<Note>();
		add(displaySustains);

		displayNotes = new FlxTypedGroup<Note>();
		add(displayNotes);

		notes = new FlxTypedGroup<Note>();
		// add(notes);

		splashes = new FlxTypedGroup<NoteSplash>();
		add(splashes);

<<<<<<< HEAD
		var splash = new NoteSplash(noteSplashAtlas);
		splash.alpha = 0;
		splash.exists = false;
		splash.kill();
		splashes.add(splash);
		
		splash.cameras = [camHUD];

		// create modifier monochromes
		modifierMonochromes = new FlxSpriteGroup();
		add(modifierMonochromes);
		
		for (key => value in Modifiers.modifiers) 
		{
			if (value != Modifiers.modifierDefaults.get(key))
			{
				var icon = new FlxSprite().loadGraphic(Paths.image("modifierMonochromes/" + key, "preload"));
				icon.setGraphicSize(Std.int(90));
				icon.updateHitbox();
				icon.y = modifierMonochromes.height + 5;
				icon.antialiasing = true;
				
				if (modifierMonochromes.length < 1)
				{
					icon.y = 0;
					modifierMonochromes.y = FlxG.height * 0.22;
				}

				var valueText:FlxText = null;
				if (value is Float)
				{
					valueText = new FlxText();
					valueText.setFormat('Funkerin Regular', 32, OUTLINE, FlxColor.BLACK);
					valueText.borderSize = 3;
					valueText.antialiasing = true;
					valueText.text = Helper.truncateFloat(value, 2) + "x";
					valueText.x = icon.x + icon.width - valueText.width;
					valueText.y = icon.y + icon.height - valueText.height;
				}

				modifierMonochromes.add(icon);
				if (valueText != null)
					modifierMonochromes.add(valueText);

				modifierMonochromes.x = FlxG.width - modifierMonochromes.width - 5;
			}
		}

		generateSong(SONG.song);
		
		if (Paths.currentMod != null)
		{
			if (Paths.exists(Paths.currentMod + "/assets/data/" + Paths.toSongPath(SONG.song) + "/speakerChart.json"))
				generateSpeakerNotes(Song.loadFromJson("speakerChart", Paths.toSongPath(SONG.song)).notes);
		}
		else
		{
			if (Paths.exists("assets/data/" + Paths.toSongPath(SONG.song) + "/speakerChart.json"))
				generateSpeakerNotes(Song.loadFromJson("speakerChart", Paths.toSongPath(SONG.song)).notes);
		}
=======
		generateSong(SONG.song);
>>>>>>> upstream

		trace('generated');

		// add(strumLine);

		camFollow = new FlxObject(0, 0, 1, 1);
		curCamPos = new FlxObject(0, 0, 1, 1);

		camFollow.setPosition(camPos.x, camPos.y);
		curCamPos.setPosition(camPos.x, camPos.y);

<<<<<<< HEAD
		add(camFollow);
		add(curCamPos);

=======
		if (prevCamFollow != null)
		{
			camFollow = prevCamFollow;
			prevCamFollow = null;
		}

		add(camFollow);
		add(curCamPos);

		camFollow.setPosition(gf.getGraphicMidpoint().x, gf.getGraphicMidpoint().y);
		curCamPos.setPosition(gf.getGraphicMidpoint().x, gf.getGraphicMidpoint().y);

>>>>>>> upstream
		FlxG.camera.follow(curCamPos, LOCKON, 1);
		FlxG.camera.zoom = defaultCamZoom;
		FlxG.camera.focusOn(curCamPos.getPosition());

		FlxG.worldBounds.set(0, 0, FlxG.width, FlxG.height);

		FlxG.fixedTimestep = false;

		healthBarBG = new FlxSprite(0, FlxG.height * 0.9).makeGraphic(Std.int(FlxG.width * 0.45), 20, 0xFF000000);
		if (Settings.downscroll)
			healthBarBG.y = (FlxG.height * 0.1) - healthBarBG.height;
		healthBarBG.screenCenter(X);
		healthBarBG.alpha = 0.7;
<<<<<<< HEAD
		add(healthBarBG);

		healthBar = new FlxBar(healthBarBG.x + 4, healthBarBG.y + 4, healthbarDirection, Std.int(healthBarBG.width - 8), Std.int(healthBarBG.height - 8), this,
			'health', 0, 2);
=======

		healthBarBG.scrollFactor.set();

		add(healthBarBG);

		healthBar = new FlxBar(healthBarBG.x + 4, healthBarBG.y + 4, RIGHT_TO_LEFT, Std.int(healthBarBG.width - 8), Std.int(healthBarBG.height - 8), this,
			'health', 0, 2);
		healthBar.scrollFactor.set();

>>>>>>> upstream
		if (Settings.healthBarColors)
			healthBar.createFilledBar(dad.getColor(), boyfriend.getColor());
		else
			healthBar.createFilledBar(0xFFFF0000, 0xFF66FF33);
<<<<<<< HEAD
		add(healthBar);

		scoreTxt = new FlxText(0, 0, FlxG.width, "", 20);
		scoreTxt.setFormat(Paths.font("vcr.ttf"), 20, FlxColor.WHITE, CENTER, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		scoreTxt.borderSize = 2;
=======

		add(healthBar);

		scoreTxt = new FlxText(0, 0, FlxG.width, "", 20);
		scoreTxt.setFormat('Funkerin Regular', 32, FlxColor.WHITE, CENTER, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		scoreTxt.antialiasing = true;
		scoreTxt.borderSize = 2;
		scoreTxt.scrollFactor.set();
>>>>>>> upstream

		scoreTxt.y = healthBarBG.y + 35;

		botPlayState = new FlxText(0, 0, FlxG.width, "BOTPLAY", 20);
		botPlayState.setFormat(Paths.font("vcr.ttf"), 32, FlxColor.WHITE, CENTER, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		botPlayState.borderSize = 3;
<<<<<<< HEAD
=======
		botPlayState.scrollFactor.set();
>>>>>>> upstream

		scrollSpeedText = new FlxText(0, 0, 0, "");
		scrollSpeedText.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, RIGHT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		scrollSpeedText.borderSize = 3;

		if (Settings.middleScroll)
		{
			if (!Settings.downscroll)
				botPlayState.y = (FlxG.height * 0.8) - botPlayState.height;
			else
				botPlayState.y = FlxG.height * 0.2;
		}
		else
		{
			if (!Settings.downscroll)
				botPlayState.y = strumLine.y + (Note.swagWidth / 2) - (botPlayState.height / 2);
			else
<<<<<<< HEAD
				botPlayState.y = strumLine.y - (Note.swagWidth / 2) - (botPlayState.height / 2);
=======
				botPlayState.y = strumLine.y - (Note.swagWidth / 2) + (botPlayState.height / 2);
>>>>>>> upstream
		}

		botplayTween = FlxTween.tween(botPlayState, {alpha: 0}, Conductor.crochet / 1000, {ease: FlxEase.sineInOut, type: PINGPONG, loopDelay: 0.2});

		add(botPlayState);
		add(scrollSpeedText);

		botPlayState.visible = scrollSpeedText.visible = Settings.botplay;

<<<<<<< HEAD
		if (Settings.botplay && iconP1 != null)
		{
			if (iconP1.char.startsWith("bf"))
				iconP1 = new HealthIcon('bf-bot' + (SONG.noteStyle == "pixel" ? "-pixel" : ""), true);
		}
		else
			iconP1 = new HealthIcon(boyfriend.icon, true);

		iconP1.y = healthBar.y + (healthBar.height / 2) - ((iconP1.height / 2) * 1.125);

		iconP2 = new HealthIcon(dad.icon, false);
=======
		if (Settings.botplay)
		{
			if (SONG.player1.startsWith('bf'))
				iconP1 = new HealthIcon('bf-bot' + (SONG.noteStyle == "pixel" ? "-pixel" : ""), true);
		}
		else
			iconP1 = new HealthIcon(SONG.player1, true);

		iconP1.y = healthBar.y + (healthBar.height / 2) - ((iconP1.height / 2) * 1.125);

		iconP2 = new HealthIcon(SONG.player2, false);
>>>>>>> upstream
		iconP2.y = healthBar.y + (healthBar.height / 2) - ((iconP2.height / 2) * 1.125);

		if (!Settings.hideHealthIcons)
		{
			add(iconP1);
			add(iconP2);
		}

		add(scoreTxt);

<<<<<<< HEAD
		if (Settings.consistencyBar)
		{
			consistencyBar = new ConsistencyBar();
			consistencyBar.screenCenter();
			consistencyBar.y = healthBar.y - consistencyBar.height - 16;
			if (Settings.downscroll)
				consistencyBar.y = healthBar.y + healthBar.height + consistencyBar.height + 34;
			add(consistencyBar);

			consistencyBar.cameras = [camHUD];
		}

		strumLineNotes.cameras = [camHUD];
		splashes.cameras = [camHUD];
		displaySustains.cameras = [camHUD];
		displayNotes.cameras = [camHUD];
		modifierMonochromes.cameras = [camMisc];
=======
		strumLineNotes.cameras = [camHUD];
		// notes.cameras = [camHUD];
		splashes.cameras = [camHUD];
		displaySustains.cameras = [camHUD];
		displayNotes.cameras = [camHUD];
>>>>>>> upstream
		healthBar.cameras = [camHUD];
		healthBarBG.cameras = [camHUD];
		iconP1.cameras = [camHUD];
		iconP2.cameras = [camHUD];
		scoreTxt.cameras = [camHUD];
		botPlayState.cameras = [camHUD];
		scrollSpeedText.cameras = [camHUD];
		startingSong = true;

		trace('starting');

		if (executeModchart)
		{
			interpVariables(interp);

			if (interp.variables.get("onStart") != null)
				interp.variables.get("onStart")();
		}

		new FlxTimer().start(FlxG.elapsed, function(tmr:FlxTimer)
		{
			if (inCutscene)
			{
				tmr.reset(FlxG.elapsed);
				return;
			}
<<<<<<< HEAD

			if (isStoryMode && startAt == 0 && !PlayState.seenCutscene)
			{
				// we soft-codin this bitch in
				#if FILESYSTEM
				if (FileSystem.exists(Paths.dialogueStartFile(Paths.toSongPath(curSong))))
=======
			
			if (isStoryMode)
			{
				// we soft-codin this bitch in
				#if FILESYSTEM
				if (FileSystem.exists(Paths.dialogueStartFile(curSong.replace(" ", "-").toLowerCase())))
>>>>>>> upstream
				{
					inCutscene = true;

					// also, does opening substates need the parent state to update ATLEAST once?
					new FlxTimer().start(1, function(tmr:FlxTimer)
					{
						startDialogue();
					});
				}
				#else
<<<<<<< HEAD
				if (Assets.exists("assets/data/" + Paths.toSongPath(curSong) + '/dialogueStart.txt'))
=======
				if (Assets.exists("assets/data/" + StringTools.replace(curSong, " ", "-").toLowerCase() + '/dialogueStart.txt'))
>>>>>>> upstream
				{
					inCutscene = true;

					// also, does opening substates need the parent state to update ATLEAST once?
					new FlxTimer().start(1, function(tmr:FlxTimer)
					{
						startDialogue();
					});
				}
				#end
<<<<<<< HEAD
				else
				{
					if (startAt == 0)
						startCountdown();
				}
			}
			else
			{
				if (startAt == 0)
					startCountdown();
			}
		});

		if (startAt != 0)
		{
			generateStaticArrows(0);
			generateStaticArrows(1);
			Modifiers.staticArrowGeneration();
			startSong();

			FlxG.sound.music.pause();

			if (SONG.needsVoices)
				vocals.pause();

			inCutscene = false;
			canPause = true;
			startedCountdown = true;
			
			for (sprite in strumLineNotes)
				FlxTween.completeTweensOf(sprite);

			noteShit(startAt);
			
			new FlxTimer().start(FlxG.elapsed, function(tmr:FlxTimer)
			{
				if (Application.current.window.frameRate < Settings.fpsCap - 4)
				{
					tmr.reset();
					return;
				}
				else
				{
					skipToTime(startAt, true);
					startAt = 0;
				}
			});
		}

		super.create();

		FlxG.sound.music.looped = false;
		vocals.looped = false;

		if (Paths.exists(Paths.cautionFile(Paths.toSongPath(curSong))))
		{
			#if FILESYSTEM
			var strings = File.getContent(Paths.cautionFile(Paths.toSongPath(curSong)));
			#else
			var strings = Assets.getText(Paths.cautionFile(Paths.toSongPath(curSong)));
			#end
=======
			else
				startCountdown();
			}
			else
				startCountdown();
		});

		super.create();

		if (Paths.exists(Paths.cautionFile(curSong.replace(" ", "-").toLowerCase())))
		{
			var strings = File.getContent(Paths.cautionFile(curSong.replace(" ", "-").toLowerCase()));
>>>>>>> upstream

			new FlxTimer().start(0.3, function(tmr:FlxTimer)
			{
				persistentUpdate = false;
				persistentDraw = true;
				paused = true;

				var ass = new WarningSubstate(strings);
<<<<<<< HEAD
				ass.cameras = [camMisc];
=======
				ass.cameras = [camHUD];
>>>>>>> upstream
				openSubState(ass);
			});
		}

		// setup pause events for autopause stuff

		if (Settings.autopause)
		{
<<<<<<< HEAD
			FlxG.signals.focusLost.add(focusLost);
			FlxG.signals.focusGained.add(focusGained);
		}
	}

	function focusLost():Void
	{
		if (!paused)
		{
			if (FlxG.sound.music != null)
			{
				FlxG.sound.music.pause();
				vocals.pause();
			}

			#if desktop
			DiscordClient.changePresence(rpcPaused, rpcLocation, iconRPC);
			#end
		}
	}

	function focusGained():Void
	{
		if (!paused)
		{
			if (FlxG.sound.music != null && !startingSong)
				resyncVocals();

			#if desktop
			DiscordClient.changePresence(rpcPlaying, rpcLocation, iconRPC);
			#end
=======
			FlxG.signals.focusLost.add(function()
			{
				if (!paused)
				{
					if (FlxG.sound.music != null)
					{
						FlxG.sound.music.pause();
						vocals.pause();
					}
	
					if (!startTimer.finished)
						startTimer.active = false;
				}
	
				#if desktop
				DiscordClient.changePresence("Paused on " + SONG.song + " (" + CoolUtil.difficultyFromInt(storyDifficulty) + ") ", null, iconRPC);
				#end
			});
	
			FlxG.signals.focusGained.add(function()
			{
				if (!paused)
				{
					if (FlxG.sound.music != null && !startingSong)
						resyncVocals();
		
					if (!startTimer.finished)
						startTimer.active = true;
				}
	
				#if desktop
				if (startTimer.finished)
					DiscordClient.changePresence(SONG.song + " (" + CoolUtil.difficultyFromInt(storyDifficulty) + ") ", null, iconRPC, songLength - Conductor.songPosition);
				else
					DiscordClient.changePresence(SONG.song + " (" + CoolUtil.difficultyFromInt(storyDifficulty) + ") ", null, iconRPC);
				#end
			});
>>>>>>> upstream
		}
	}

	var startTimer:FlxTimer;
	var perfectMode:Bool = false;

	var pfBG1:FlxSprite;
<<<<<<< HEAD
	var pfBG2:FlxSprite; 

	function startDialogue():Void
	{
		var sub:DialogueSubstate = null;
		
		#if FILESYSTEM
		if (FileSystem.exists(Paths.dialogueStartFile(Paths.toSongPath(curSong))))
		{
			sub = new DialogueSubstate(CoolUtil.awesomeDialogueFile(File.getContent(Paths.dialogueStartFile(Paths.toSongPath(curSong)))),
			null, startCountdown);
			
			sub.cameras = [camMisc];
			openSubState(sub);
		}
		#else
		if (Assets.exists("assets/data/" + Paths.toSongPath(curSong) + '/dialogueStart.txt'))
		{
			sub = new DialogueSubstate(CoolUtil.awesomeDialogueFile(Assets.getText('assets/data/'
				+ Paths.toSongPath(curSong) + '/dialogueStart.txt')),
				null, startCountdown);

			sub.cameras = [camMisc];
			openSubState(sub);
=======
	var pfBG2:FlxSprite;

	function startDialogue():Void
	{
		#if FILESYSTEM
		if (FileSystem.exists(Paths.dialogueStartFile(curSong.replace(" ", "-").toLowerCase())))
		{
			if (SONG.noteStyle == "pixel")
				openSubState(new DialogueSubstate(CoolUtil.awesomeDialogueFile(File.getContent(Paths.dialogueStartFile(curSong.replace(" ", "-")
					.toLowerCase()))),
					(SONG.song.toLowerCase() == "thorns" ? DialogueStyle.PIXEL_SPIRIT : DialogueStyle.PIXEL_NORMAL), startCountdown));
			else
				openSubState(new DialogueSubstate(CoolUtil.awesomeDialogueFile(File.getContent(Paths.dialogueStartFile(curSong.replace(" ", "-")
					.toLowerCase()))), DialogueStyle.NORMAL,
					startCountdown));
		}
		#else
		if (Assets.exists("assets/data/" + StringTools.replace(curSong, " ", "-").toLowerCase() + '/dialogueStart.txt'))
		{
			if (SONG.noteStyle == "pixel")
				openSubState(new DialogueSubstate(CoolUtil.awesomeDialogueFile(Assets.getText('assets/data/'
					+ StringTools.replace(SONG.song, " ", "-").toLowerCase() + '/dialogueStart.txt')),
					(SONG.song.toLowerCase() == "thorns" ? DialogueStyle.PIXEL_SPIRIT : DialogueStyle.PIXEL_NORMAL), startCountdown));
			else
				openSubState(new DialogueSubstate(CoolUtil.awesomeDialogueFile(Assets.getText('assets/data/'
					+ StringTools.replace(SONG.song, " ", "-").toLowerCase() + '/dialogueStart.txt')),
					DialogueStyle.NORMAL, startCountdown));
>>>>>>> upstream
		}
		#end
	}

	var stupidFuckingCamera:FlxCamera;

	function startCountdown():Void
	{
		inCutscene = false;

		generateStaticArrows(0);
		generateStaticArrows(1);
<<<<<<< HEAD
		Modifiers.staticArrowGeneration();
=======
>>>>>>> upstream

		if (executeModchart)
		{
			if (interp.variables.get("onStartCountdown") != null)
				interp.variables.get("onStartCountdown")();
		}

		if (Settings.underlayAlpha > 0)
		{
			pfBG1 = new FlxSprite(playerStrums.x - 10, -10).makeGraphic(Std.int(playerStrums.width + 20), Std.int(FlxG.height + 20), 0xFF000000);
			pfBG2 = new FlxSprite(cpuStrums.x - 10, -10).makeGraphic(Std.int(cpuStrums.width + 20), Std.int(FlxG.height + 20), 0xFF000000);

			pfBG1.alpha = Settings.underlayAlpha / 100;
			pfBG2.alpha = Settings.underlayAlpha / 100;

			pfBG1.scrollFactor.set();
			pfBG2.scrollFactor.set();

			pfBackgrounds.add(pfBG1);
			pfBackgrounds.add(pfBG2);

			pfBG1.cameras = [camHUD];
			pfBG2.cameras = [camHUD];
		}

		startedCountdown = true;
		Conductor.songPosition = 0;
		Conductor.songPosition -= Conductor.crochet * 5;

		var swagCounter:Int = 0;

		startTimer = new FlxTimer().start(Conductor.crochet / 1000, function(tmr:FlxTimer)
		{
			dad.dance();
			gf.dance();
			boyfriend.playAnim('idle');

			if (!songRecording)
				countdownThing(swagCounter, true);

			swagCounter += 1;
<<<<<<< HEAD
		}, 5);
=======
		}, 4);
>>>>>>> upstream

		stupidFuckingCamera = new FlxCamera();

		if (songRecording)
		{
			stupidFuckingCamera.bgColor = 0xcc000000;
			FlxG.cameras.add(stupidFuckingCamera);
			camHUD.visible = false;
			camGame.setFilters([new BlurFilter()]);
			daLogo = new FlxSprite(0, 0).loadGraphic(Paths.image('YEAHHH WE FUNKIN'));
<<<<<<< HEAD
			daLogo.scale.set(0.75 * 0.5, 0.75 * 0.5);
=======
			daLogo.scale.set(0.75, 0.75);
>>>>>>> upstream
			daLogo.updateHitbox();
			daLogo.screenCenter();
			daLogo.scrollFactor.set();
			daLogo.antialiasing = true;
			daLogo.cameras = [stupidFuckingCamera];
			add(daLogo);
		}
	}

	public function countdownThing(thing:Int, ?songCountdown:Bool = false):Void
	{
		var altSuffix:String = "";
		var pixel1:String = "";

		if (SONG.noteStyle == "pixel")
		{
			pixel1 = "pixelUI/";
			altSuffix = "-pixel";
		}

		var ready:FlxSprite = new FlxSprite().loadGraphic(Paths.image(pixel1 + "ready" + altSuffix));
		var set:FlxSprite = new FlxSprite().loadGraphic(Paths.image(pixel1 + "set" + altSuffix));
		var go:FlxSprite = new FlxSprite().loadGraphic(Paths.image(pixel1 + "go" + altSuffix));

<<<<<<< HEAD
		if (SONG.noteStyle != "pixel")
		{
			ready.antialiasing = true;
			set.antialiasing = true;
			go.antialiasing = true;
		}

=======
>>>>>>> upstream
		ready.cameras = [camHUD];
		set.cameras = [camHUD];
		go.cameras = [camHUD];

		if (executeModchart && songCountdown)
		{
			if (interp.variables.get("onCountdownTick") != null)
				interp.variables.get("onCountdownTick")(thing);
		}

		switch (thing)
		{
			case 0:
				FlxG.sound.play(Paths.sound('intro3' + altSuffix), 0.6);
			case 1:
				if (SONG.noteStyle == "pixel")
					ready.setGraphicSize(Std.int(ready.width * daPixelZoom));

				ready.updateHitbox();
				ready.screenCenter();
				add(ready);

				FlxTween.tween(ready, {alpha: 0}, Conductor.crochet / 1000, {
					ease: FlxEase.cubeInOut,
					onComplete: function(twn:FlxTween)
					{
						ready.destroy();
					}
				});
				FlxG.sound.play(Paths.sound('intro2' + altSuffix), 0.6);
			case 2:
				if (SONG.noteStyle == "pixel")
					set.setGraphicSize(Std.int(set.width * daPixelZoom));

				set.updateHitbox();
				set.screenCenter();
				add(set);

				FlxTween.tween(set, {alpha: 0}, Conductor.crochet / 1000, {
					ease: FlxEase.cubeInOut,
					onComplete: function(twn:FlxTween)
					{
						set.destroy();
					}
				});
				FlxG.sound.play(Paths.sound('intro1' + altSuffix), 0.6);
			case 3:
				if (SONG.noteStyle == "pixel")
					go.setGraphicSize(Std.int(go.width * daPixelZoom));

				go.updateHitbox();
				go.screenCenter();
				add(go);

				FlxTween.tween(go, {alpha: 0}, Conductor.crochet / 1000, {
					ease: FlxEase.cubeInOut,
					onComplete: function(twn:FlxTween)
					{
						go.destroy();
					}
				});
				FlxG.sound.play(Paths.sound('introGo' + altSuffix), 0.6);
			case 4:
		}
	}

	var previousFrameTime:Int = 0;
	var lastReportedPlayheadPosition:Int = 0;
	var songTime:Float = 0;
<<<<<<< HEAD

	public var songStarted = false;

	public function startSong():Void
=======
	public var songStarted = false;

	function startSong():Void
>>>>>>> upstream
	{
		startingSong = false;
		songStarted = true;
		previousFrameTime = FlxG.game.ticks;
		lastReportedPlayheadPosition = 0;

		if (!paused)
		{
			FlxG.sound.playMusic(Paths.inst(PlayState.SONG.song), 1, false);
			vocals.play();
		}

		if (songRecording)
		{
			FlxG.sound.music.onComplete = function()
			{
<<<<<<< HEAD
				ending = true;
=======
>>>>>>> upstream
				canPause = false;
				FlxG.sound.music.volume = 0;
				vocals.volume = 0;
				FlxTween.tween(daLogo, {alpha: 0}, 1);
				FlxG.cameras.fade();
				new FlxTimer().start(5, function(tmr:FlxTimer)
				{
					endSong();
				});
			}
		}
		else
			FlxG.sound.music.onComplete = endSong;

		#if FILESYSTEM
<<<<<<< HEAD
		if (FileSystem.exists(Paths.dialogueEndFile(Paths.toSongPath(curSong))) && isStoryMode)
			FlxG.sound.music.onComplete = function()
			{
				inCutscene = true;
				ending = true;

				FlxG.sound.music.volume = 0;
				vocals.volume = 0;
				FlxG.sound.music.stop();
				vocals.stop();

				var sub:DialogueSubstate = null;

				sub = new DialogueSubstate(CoolUtil.awesomeDialogueFile(File.getContent(Paths.dialogueEndFile(Paths.toSongPath(curSong)))),
					null, endSong);

				sub.cameras = [camMisc];
				openSubState(sub);
			};
		#else
		if (Assets.exists("assets/data/" + Paths.toSongPath(curSong) + '/dialogueEnd.txt') && isStoryMode)
			FlxG.sound.music.onComplete = function()
			{
				inCutscene = true;
				ending = true;

				FlxG.sound.music.volume = 0;
				vocals.volume = 0;
				FlxG.sound.music.stop();
				vocals.stop();

				var sub:DialogueSubstate = null;

				sub = new DialogueSubstate(CoolUtil.awesomeDialogueFile(Assets.getText('assets/data/'
					+ Paths.toSongPath(curSong) + '/dialogueEnd.txt')),
					null, endSong);
						
				sub.cameras = [camMisc];
				openSubState(sub);
=======
		if (FileSystem.exists(Paths.dialogueEndFile(curSong.replace(" ", "-").toLowerCase())) && isStoryMode)
			FlxG.sound.music.onComplete = function()
			{
				inCutscene = true;

				FlxG.sound.music.volume = 0;
				vocals.volume = 0;

				if (SONG.noteStyle == "pixel")
					openSubState(new DialogueSubstate(CoolUtil.awesomeDialogueFile(File.getContent(Paths.dialogueEndFile(curSong.replace(" ", "-")
						.toLowerCase()))),
						(SONG.song.toLowerCase() == "thorns" ? DialogueStyle.PIXEL_SPIRIT : DialogueStyle.PIXEL_NORMAL), endSong));
				else
					openSubState(new DialogueSubstate(CoolUtil.awesomeDialogueFile(File.getContent(Paths.dialogueEndFile(curSong.replace(" ", "-")
						.toLowerCase()))), DialogueStyle.NORMAL,
						endSong));
			};
		#else
		if (Assets.exists("assets/data/" + StringTools.replace(curSong, " ", "-").toLowerCase() + '/dialogueEnd.txt') && isStoryMode)
			FlxG.sound.music.onComplete = function()
			{
				inCutscene = true;

				FlxG.sound.music.volume = 0;
				vocals.volume = 0;

				if (SONG.noteStyle == "pixel")
					openSubState(new DialogueSubstate(CoolUtil.awesomeDialogueFile(Assets.getText('assets/data/'
						+ StringTools.replace(SONG.song, " ", "-").toLowerCase() + '/dialogueEnd.txt')),
						(SONG.song.toLowerCase() == "thorns" ? DialogueStyle.PIXEL_SPIRIT : DialogueStyle.PIXEL_NORMAL), endSong));
				else
					openSubState(new DialogueSubstate(CoolUtil.awesomeDialogueFile(Assets.getText('assets/data/'
						+ StringTools.replace(SONG.song, " ", "-").toLowerCase() + '/dialogueEnd.txt')),
						DialogueStyle.NORMAL, endSong));
>>>>>>> upstream
			};
		#end

		if (executeModchart)
		{
			if (interp.variables.get("onSongStart") != null)
				interp.variables.get("onSongStart")();
		}

		// Song duration in a float, useful for the time left feature
		songLength = FlxG.sound.music.length;

		if (Settings.posBarType != 6)
		{
			songPosBG = new FlxSprite();
			add(songPosBG);

			songPosBar = new FlxBar(0, 20, LEFT_TO_RIGHT, Std.int(FlxG.width * 0.45), 12, this, 'songPositionBar', 0, songLength - 1000);
			songPosBar.numDivisions = 1000;
			songPosBar.scrollFactor.set();
			songPosBar.createFilledBar(FlxColor.TRANSPARENT, FlxColor.WHITE);
			songPosBar.screenCenter(X);
			if (Settings.downscroll)
				songPosBar.y = FlxG.height - songPosBar.height - 20;
			songPosBar.alpha = 0;
			add(songPosBar);

			songPosBG.makeGraphic(Std.int(songPosBar.width + 8), Std.int(songPosBar.height + 8), 0xFF000000);
			songPosBG.setPosition(songPosBar.x - 4, songPosBar.y - 4);
			// songPosBG.alpha = 0.7;
			songPosBG.alpha = 0;

			songName = new FlxText(0, 0, FlxG.width, SONG.song.toUpperCase(), 16);
			songName.setFormat(Paths.font("vcr.ttf"), 32, FlxColor.WHITE, CENTER, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
			songName.y = songPosBar.y + (songPosBar.height / 2) - (songName.height / 2);
			songName.scrollFactor.set();
			songName.borderSize = 4;
			songName.alpha = 0;
			add(songName);

			songPosBG.cameras = [camHUD];
			songPosBar.cameras = [camHUD];
			songName.cameras = [camHUD];

			FlxTween.tween(songPosBG, {alpha: 0.7}, 0.5, {ease: FlxEase.expoInOut});
			FlxTween.tween(songPosBar, {alpha: 1}, 0.5, {ease: FlxEase.expoInOut});
			FlxTween.tween(songName, {alpha: 1}, 0.5, {ease: FlxEase.expoInOut});
<<<<<<< HEAD
		}

		#if desktop
		DiscordClient.changePresence(rpcPlaying, rpcLocation, iconRPC);
		#end

		Modifiers.songStarted();
=======

			// Song check real quick
			switch (curSong)
			{
				case 'Bopeebo' | 'Philly Nice' | 'Blammed' | 'Cocoa' | 'Eggnog':
					allowedToHeadbang = true;
				default:
					allowedToHeadbang = false;
			}
		}

		#if desktop
		DiscordClient.changePresence(SONG.song + " (" + CoolUtil.difficultyFromInt(storyDifficulty) + ") ", null, iconRPC);
		#end
>>>>>>> upstream
	}

	var debugNum:Int = 0;

	private function generateSong(dataPath:String):Void
	{
		var songData = SONG;
		var eventData = EVENTS;
		Conductor.changeBPM(songData.bpm);

		if (Paths.currentMod == null)
		{
			FlxG.sound.cache(Paths.inst(PlayState.SONG.song));
			FlxG.sound.cache(Paths.voices(PlayState.SONG.song));
		}

		curSong = songData.song;

		if (SONG.needsVoices)
<<<<<<< HEAD
			vocals = new FlxSound().loadEmbedded(Paths.voices(PlayState.SONG.song), false, false);
		else
			vocals = new FlxSound();

		#if FILESYSTEM
		if (Settings.noteSkin != "default" && Note.noteSkin == null && options.NoteSkinSelection.loadedNoteSkins.get(Settings.noteSkin) != null)
			Note.noteSkin = FlxAtlasFrames.fromSparrow(options.NoteSkinSelection.loadedNoteSkins.get(Settings.noteSkin),
				File.getContent(Sys.getCwd() + "skins/" + Settings.noteSkin + "/normal/NOTE_assets.xml"));
		#end

=======
			vocals = new FlxSound().loadEmbedded(Paths.voices(PlayState.SONG.song), false, true);
		else
			vocals = new FlxSound();

>>>>>>> upstream
		trace('loaded vocals');

		FlxG.sound.list.add(vocals);

		var noteData:Array<SwagSection>;
		noteData = songData.notes;

<<<<<<< HEAD
		var songLowercase = Paths.toSongPath(PlayState.SONG.song);
=======
		var songLowercase = StringTools.replace(PlayState.SONG.song, " ", "-").toLowerCase();
>>>>>>> upstream

		// Per song offset check
		#if FILESYSTEM
		var songPath = 'assets/data/' + songLowercase + '/.offset';

		if (Paths.currentMod != null)
			songPath = "mods/" + Paths.currentMod + "/" + songPath;

		songPath = Sys.getCwd() + songPath;

		if (FileSystem.exists(songPath))
		{
			trace('Found offset file: ' + songPath);
			trace('Fetched offset: ' + File.getContent(songPath));
			songOffset = Std.parseFloat(File.getContent(songPath));
		}
		else
		{
			trace('Offset file not found. Creating one @: ' + songPath);
			File.saveContent(songPath, '0');
		}
		#end

		if (Math.isNaN(songOffset))
			songOffset = 0;

		var daBeats:Int = 0; // Not exactly representative of 'daBeats' lol, just how much it has looped

		var noteTypesDetected:Array<String> = [];

		for (section in noteData)
		{
			for (songNotes in section.sectionNotes)
			{
<<<<<<< HEAD
				// parse note before everything
				songNotes = Modifiers.preNoteMade(songNotes, section);

=======
>>>>>>> upstream
				var daStrumTime:Float = songNotes[0] + Settings.offset + songOffset;
				if (daStrumTime < 0)
					daStrumTime = 0;
				var daNoteData:Int = Std.int(songNotes[1] % 4);

<<<<<<< HEAD
				// witty, awful, weird, comment about this way of creating a skip to
				if (daStrumTime < startAt)
					continue;

=======
>>>>>>> upstream
				var gottaHitNote:Bool = section.mustHitSection;

				if (songNotes[1] > 3)
					gottaHitNote = !section.mustHitSection;

				var oldNote:Note;
				if (unspawnNotes.length > 0)
					oldNote = unspawnNotes[Std.int(unspawnNotes.length - 1)];
				else
					oldNote = null;

				var swagNote:Note = new Note(daStrumTime, daNoteData, oldNote, false, songNotes[3]);
				swagNote.sustainLength = songNotes[2];
				swagNote.kill();
				swagNote.scrollFactor.set(0, 0);

<<<<<<< HEAD
=======
				swagNote.sectionNumber = daBeats;

>>>>>>> upstream
				var susLength:Float = swagNote.sustainLength;

				susLength = susLength / Conductor.stepCrochet;
				unspawnNotes.push(swagNote);

				if (!swagNote.noHolds)
				{
					for (susNote in 0...Math.floor(susLength))
					{
						oldNote = unspawnNotes[Std.int(unspawnNotes.length - 1)];

						var sustainNote:Note = new Note(daStrumTime
							+ (Conductor.stepCrochet * susNote)
							+ Math.abs(Conductor.stepCrochet / FlxMath.roundDecimal(globalScrollSpeed, 2)),
							daNoteData, oldNote, true, songNotes[3]);
						sustainNote.strumTimeSus = daStrumTime + (Conductor.stepCrochet * susNote);
						sustainNote.scrollFactor.set();
						sustainNote.kill();
						unspawnNotes.push(sustainNote);

						sustainNote.sectionNumber = daBeats;
						sustainNote.mustPress = gottaHitNote;

<<<<<<< HEAD
						sustainNote.noAnim = songNotes[4];
						sustainNote.altAnim = songNotes[5];

						sustainNote.scaleLockY = false;

						if (!sustainNote.mustPress)
							sustainNote.wasEnemyNote = true;

						Modifiers.noteMade(sustainNote);
					}
				}

				swagNote.sectionNumber = daBeats;
				swagNote.mustPress = gottaHitNote;

				swagNote.noAnim = songNotes[4];
				swagNote.altAnim = songNotes[5];

				if (!swagNote.mustPress)
					swagNote.wasEnemyNote = true;

				Modifiers.noteMade(swagNote);

=======
						if (sustainNote.mustPress)
							sustainNote.x += FlxG.width / 2; // general offset
						else
							sustainNote.wasEnemyNote = true;
					}
				}

				swagNote.mustPress = gottaHitNote;

				if (swagNote.mustPress)
					swagNote.x += FlxG.width / 2; // general offset
				else
					swagNote.wasEnemyNote = true;

>>>>>>> upstream
				if (!noteTypesDetected.contains(songNotes[3]) && (songNotes[3] != "hopeEngine/normal" && songNotes[3] != null))
					noteTypesDetected.push(songNotes[3]);
			}

			if (section.sectionNotes.length > 200)
			{
				warningSections.push(section.sectionNotes.length);
				trace("HOLY FUCK THATS A LOT " + section.sectionNotes.length);
			}

			daBeats += 1;
		}

		for (noteType in noteTypesDetected)
		{
			var a = noteType.split("/");

			if (a.length == 2)
			{
				#if FILESYSTEM
				var noteHENT = File.getContent(Sys.getCwd() + Paths.noteHENT(a[1], a[0]));
				#else
				var noteHENT = Assets.getText(Paths.noteHENT(a[1], a[0]));
				#end

				var daInterp = new Interp();
				var daAst = parser.parseString(noteHENT);
				interpVariables(daInterp);
<<<<<<< HEAD

				try
				{
					daInterp.execute(daAst);
				}
				catch (e:Dynamic)
				{
					Main.console.add(e, PLAYSTATE);
				}

				loadedNoteTypeInterps.set(noteType, daInterp);

				if (daInterp.variables.get("onSet") != null)
					daInterp.variables.get("onSet")();
=======
				daInterp.execute(daAst);

				loadedNoteTypeInterps.set(noteType, daInterp);
>>>>>>> upstream
			}
		}

		var eventsDetected:Array<String> = [];

		if (EVENTS != null)
		{
			for (section in EVENTS.events)
			{
				for (eventNote in section)
				{
					eventNotes.push(eventNote);
					for (event in eventNote.events)
					{
						if (!eventsDetected.contains(event.eventID))
							eventsDetected.push(event.eventID);
					}
				}
			}
		}

		for (eventID in eventsDetected)
		{
			var a = eventID.split("/");

			if (a.length == 2)
			{
				#if FILESYSTEM
				var heev = File.getContent(Sys.getCwd() + Paths.eventScript(a[1], a[0]));
				#else
				var heev = Assets.getText(Paths.eventScript(a[1], a[0]));
				#end

				var daInterp = new Interp();
				var daAst = parser.parseString(heev);
				interpVariables(daInterp);
<<<<<<< HEAD

				try
				{
					daInterp.execute(daAst);
				}
				catch (e:Dynamic)
				{
					Main.console.add(e, PLAYSTATE);
				}

				loadedEventInterps.set(eventID, daInterp);

				if (daInterp.variables.get("onSet") != null)
					daInterp.variables.get("onSet")();
=======
				daInterp.execute(daAst);

				loadedEventInterps.set(eventID, daInterp);
>>>>>>> upstream
			}
		}

		unspawnNotes.sort(sortByShit);
		eventNotes.sort(sortEvent);

		generatedMusic = true;
	}

<<<<<<< HEAD
	function generateSpeakerNotes(noteData:Array<SwagSection>):Void
	{
		var daBeats:Int = 0; // Not exactly representative of 'daBeats' lol, just how much it has looped

		for (section in noteData)
		{
			for (songNotes in section.sectionNotes)
			{
				var daStrumTime:Float = songNotes[0] + Settings.offset + songOffset;
				if (daStrumTime < 0)
					daStrumTime = 0;
				var daNoteData:Int = Std.int(songNotes[1] % 4);

				// witty, awful, weird, comment about this way of creating a skip to
				if (daStrumTime < startAt)
					continue;

				var gottaHitNote:Bool = false;

				var oldNote:Note;
				if (speakerNotes.length > 0)
					oldNote = speakerNotes[Std.int(speakerNotes.length - 1)];
				else
					oldNote = null;

				var swagNote:Note = new Note(daStrumTime, daNoteData, oldNote, false, songNotes[3]);
				swagNote.sustainLength = songNotes[2];
				swagNote.kill();
				swagNote.scrollFactor.set(0, 0);

				var susLength:Float = swagNote.sustainLength;

				susLength = susLength / Conductor.stepCrochet;
				speakerNotes.push(swagNote);

				if (!swagNote.noHolds)
				{
					for (susNote in 0...Math.floor(susLength))
					{
						oldNote = speakerNotes[Std.int(speakerNotes.length - 1)];

						var sustainNote:Note = new Note(daStrumTime
							+ (Conductor.stepCrochet * susNote)
							+ Math.abs(Conductor.stepCrochet / FlxMath.roundDecimal(globalScrollSpeed, 2)),
							daNoteData, oldNote, true, songNotes[3]);
						sustainNote.strumTimeSus = daStrumTime + (Conductor.stepCrochet * susNote);
						sustainNote.scrollFactor.set();
						sustainNote.kill();
						speakerNotes.push(sustainNote);

						sustainNote.sectionNumber = daBeats;
						sustainNote.mustPress = gottaHitNote;

						sustainNote.noAnim = songNotes[4];
						sustainNote.altAnim = songNotes[5];

						sustainNote.scaleLockY = false;

						if (!sustainNote.mustPress)
							sustainNote.wasEnemyNote = true;
					}
				}

				swagNote.sectionNumber = daBeats;
				swagNote.mustPress = gottaHitNote;

				swagNote.noAnim = songNotes[4];
				swagNote.altAnim = songNotes[5];

				if (!swagNote.mustPress)
					swagNote.wasEnemyNote = true;
			}

			daBeats += 1;
		}

		speakerNotes.sort(sortByShit);
	}

=======
>>>>>>> upstream
	function sortByShit(Obj1:Note, Obj2:Note):Int
		return FlxSort.byValues(FlxSort.ASCENDING, Obj1.strumTime, Obj2.strumTime);

	function sortEvent(ob1:EventNote, ob2:EventNote)
		return FlxSort.byValues(FlxSort.ASCENDING, ob1.strumTime, ob2.strumTime);

<<<<<<< HEAD
	var you:TrackedText;

=======
>>>>>>> upstream
	private function generateStaticArrows(player:Int, ?inverted:Bool = false):Void
	{
		for (i in 0...4)
		{
			var babyArrow:StaticArrow = new StaticArrow(0, strumLine.y, SONG.noteStyle == 'pixel');

			switch (SONG.noteStyle)
			{
				case 'pixel':
<<<<<<< HEAD
=======
					babyArrow.loadGraphic(Paths.image('pixelUI/arrows-pixels'), true, 17, 17);

>>>>>>> upstream
					#if FILESYSTEM
					var s = options.NoteSkinSelection.loadedNoteSkins.get(Settings.noteSkin + "-pixel");
					if (Settings.noteSkin != "default" && s != null)
						babyArrow.loadGraphic(s, true, 17, 17);
<<<<<<< HEAD
					else
					#end
						babyArrow.loadGraphic(Paths.image('pixelUI/arrows-pixels'), true, 17, 17);
=======
					#end
>>>>>>> upstream

					babyArrow.setGraphicSize(Std.int(babyArrow.width * daPixelZoom));
					babyArrow.updateHitbox();
					babyArrow.antialiasing = false;

					switch (Math.abs(i))
					{
						case 0:
							babyArrow.x += Note.swagWidth * 0;
							babyArrow.animation.add('static', [0]);
							babyArrow.animation.add('pressed', [4, 8], 12, false);
<<<<<<< HEAD
							babyArrow.animation.add('confirm', [12, 16], 12, false);
=======
							babyArrow.animation.add('confirm', [12, 16], 24, false);
>>>>>>> upstream
						case 1:
							babyArrow.x += Note.swagWidth * 1;
							babyArrow.animation.add('static', [1]);
							babyArrow.animation.add('pressed', [5, 9], 12, false);
<<<<<<< HEAD
							babyArrow.animation.add('confirm', [13, 17], 12, false);
=======
							babyArrow.animation.add('confirm', [13, 17], 24, false);
>>>>>>> upstream
						case 2:
							babyArrow.x += Note.swagWidth * 2;
							babyArrow.animation.add('static', [2]);
							babyArrow.animation.add('pressed', [6, 10], 12, false);
							babyArrow.animation.add('confirm', [14, 18], 12, false);
						case 3:
							babyArrow.x += Note.swagWidth * 3;
							babyArrow.animation.add('static', [3]);
							babyArrow.animation.add('pressed', [7, 11], 12, false);
<<<<<<< HEAD
							babyArrow.animation.add('confirm', [15, 19], 12, false);
					}

				case 'normal':
					if (Settings.noteSkin != "default")
						babyArrow.frames = Note.noteSkin;
					else
						babyArrow.frames = Paths.getSparrowAtlas("NOTE_assets", "shared");
=======
							babyArrow.animation.add('confirm', [15, 19], 24, false);
					}

				case 'normal':
					babyArrow.frames = Paths.getSparrowAtlas('NOTE_assets');

					if (Settings.noteSkin != "default")
						babyArrow.frames = FlxAtlasFrames.fromSparrow(options.NoteSkinSelection.loadedNoteSkins.get(Settings.noteSkin), File.getContent(Sys.getCwd() + "assets/skins/" + Settings.noteSkin + "/normal/NOTE_assets.xml"));
>>>>>>> upstream

					babyArrow.antialiasing = true;
					babyArrow.setGraphicSize(Std.int(babyArrow.width * 0.7));

					switch (Math.abs(i))
					{
						case 0:
							babyArrow.x += Note.swagWidth * 0;
							babyArrow.animation.addByPrefix('static', 'arrowLEFT');
							babyArrow.animation.addByPrefix('pressed', 'left press', 24, false);
							babyArrow.animation.addByPrefix('confirm', 'left confirm', 24, false);
						case 1:
							babyArrow.x += Note.swagWidth * 1;
							babyArrow.animation.addByPrefix('static', 'arrowDOWN');
							babyArrow.animation.addByPrefix('pressed', 'down press', 24, false);
							babyArrow.animation.addByPrefix('confirm', 'down confirm', 24, false);
						case 2:
							babyArrow.x += Note.swagWidth * 2;
							babyArrow.animation.addByPrefix('static', 'arrowUP');
							babyArrow.animation.addByPrefix('pressed', 'up press', 24, false);
							babyArrow.animation.addByPrefix('confirm', 'up confirm', 24, false);
						case 3:
							babyArrow.x += Note.swagWidth * 3;
							babyArrow.animation.addByPrefix('static', 'arrowRIGHT');
							babyArrow.animation.addByPrefix('pressed', 'right press', 24, false);
							babyArrow.animation.addByPrefix('confirm', 'right confirm', 24, false);
					}

				default:
					babyArrow.frames = Paths.getSparrowAtlas('NOTE_assets');

<<<<<<< HEAD
					#if FILESYSTEM
					if (Settings.noteSkin != "default")
						babyArrow.frames = FlxAtlasFrames.fromSparrow(options.NoteSkinSelection.loadedNoteSkins.get(Settings.noteSkin),
							File.getContent(Sys.getCwd() + "skins/" + Settings.noteSkin + "/normal/NOTE_assets.xml"));
					#end
=======
					if (Settings.noteSkin != "default")
						babyArrow.frames = FlxAtlasFrames.fromSparrow(options.NoteSkinSelection.loadedNoteSkins.get(Settings.noteSkin), File.getContent(Sys.getCwd() + "assets/skins/" + Settings.noteSkin + "/normal/NOTE_assets.xml"));
>>>>>>> upstream

					babyArrow.animation.addByPrefix('green', 'arrowUP');
					babyArrow.animation.addByPrefix('blue', 'arrowDOWN');
					babyArrow.animation.addByPrefix('purple', 'arrowLEFT');
					babyArrow.animation.addByPrefix('red', 'arrowRIGHT');

					babyArrow.antialiasing = true;
					babyArrow.setGraphicSize(Std.int(babyArrow.width * 0.7));

					switch (Math.abs(i))
					{
						case 0:
							babyArrow.x += Note.swagWidth * 0;
							babyArrow.animation.addByPrefix('static', 'arrowLEFT');
							babyArrow.animation.addByPrefix('pressed', 'left press', 24, false);
							babyArrow.animation.addByPrefix('confirm', 'left confirm', 24, false);
						case 1:
							babyArrow.x += Note.swagWidth * 1;
							babyArrow.animation.addByPrefix('static', 'arrowDOWN');
							babyArrow.animation.addByPrefix('pressed', 'down press', 24, false);
							babyArrow.animation.addByPrefix('confirm', 'down confirm', 24, false);
						case 2:
							babyArrow.x += Note.swagWidth * 2;
							babyArrow.animation.addByPrefix('static', 'arrowUP');
							babyArrow.animation.addByPrefix('pressed', 'up press', 24, false);
							babyArrow.animation.addByPrefix('confirm', 'up confirm', 24, false);
						case 3:
							babyArrow.x += Note.swagWidth * 3;
							babyArrow.animation.addByPrefix('static', 'arrowRIGHT');
							babyArrow.animation.addByPrefix('pressed', 'right press', 24, false);
							babyArrow.animation.addByPrefix('confirm', 'right confirm', 24, false);
					}
			}

			babyArrow.updateHitbox();
			babyArrow.scrollFactor.set();

			// What's with the "-1"? I have no fucking idea. Offset's shitting.
			if (Settings.downscroll)
				babyArrow.y -= babyArrow.height - 1;

			babyArrow.ID = i;

			switch (player)
			{
				case 0:
					cpuStrums.add(babyArrow);
				case 1:
					playerStrums.add(babyArrow);
			}

			babyArrow.y -= 10;
			babyArrow.alpha = 0;

			var wantedAlpha:Float = 1;

			if (Settings.middleScroll && player == 0)
				wantedAlpha = 0.1;

<<<<<<< HEAD
			if (previousCamFollow == null)
				FlxTween.tween(babyArrow, {y: babyArrow.y + 10, alpha: wantedAlpha}, 1, {ease: FlxEase.circOut, startDelay: 0.2 + (0.2 * i)});
			else
			{
				babyArrow.y += 10;
				babyArrow.alpha = 1;
			}
=======
			FlxTween.tween(babyArrow, {y: babyArrow.y + 10, alpha: wantedAlpha}, 1, {ease: FlxEase.circOut, startDelay: 0.2 + (0.2 * i)});
>>>>>>> upstream

			babyArrow.playAnim('static');
			babyArrow.staticWidth = babyArrow.width;
			babyArrow.staticHeight = babyArrow.height;

			if (inverted)
			{
				cpuStrums.x = FlxG.width - cpuStrums.width - Settings.strumlineMargin;
				playerStrums.x = Settings.strumlineMargin;
			}
			else
			{
				playerStrums.x = FlxG.width - playerStrums.width - Settings.strumlineMargin;
				cpuStrums.x = Settings.strumlineMargin;
			}

			if (Settings.middleScroll)
			{
				cpuStrums.screenCenter(X);
				playerStrums.screenCenter(X);
			}

			cpuStrums.forEach(function(spr:FlxSprite)
			{
				spr.centerOffsets(); // CPU arrows start out slightly off-center
			});

			playerStrums.forEach(function(spr:FlxSprite)
			{
				spr.centerOffsets();
			});

			strumLineNotes.add(babyArrow);
		}
<<<<<<< HEAD

		/*
		if (keyDisplays == null)
		{
			keyDisplays = new FlxSpriteGroup();
			add(keyDisplays);
			keyDisplays.cameras = [camHUD];

			var a = ["left", "down", "up", "right"];
			for (i in 0...4)
			{
				var item = a[i];

				var display = new FlxSprite(keyDisplays.width);
				display.frames = Paths.getSparrowAtlas("keyDisplays", "shared");
				display.animation.addByPrefix("idle", item, 24);
				display.animation.play("idle");
				display.setGraphicSize(Std.int(display.width * 0.7));
				display.updateHitbox();
				display.antialiasing = true;
				if (keyDisplays.length > 1 && Settings.downscroll)
					display.y = keyDisplays.height - display.height;
				if (!Settings.downscroll)
					display.y = 0;
				display.flipY = !Settings.downscroll;


				var texts:Array<String> = [];
				var a:Array<FlxKey> = cast FlxG.save.data.controls[i];
				for (k in a) 
					texts.push(k.toString());
				var key = new FlxText(display.x, 0, display.width, texts.join('\n'));
				key.setFormat(Paths.font("vcr.ttf"), 22, FlxColor.BLACK, CENTER, FlxTextBorderStyle.OUTLINE);
				key.antialiasing = true;

				if (Settings.downscroll)
					key.angle = i > 1 ? 5 : -5;
				else
					key.angle = i > 1 ? -5 : 5;

				if (Settings.downscroll)
					key.y = display.y + 20;
				else
					key.y = display.y + display.height - 20 - key.height;

				keyDisplays.add(display);
				keyDisplays.add(key);
			}
		}
		*/
=======
>>>>>>> upstream
	}

	override function openSubState(SubState:FlxSubState)
	{
		if (paused)
		{
			if (FlxG.sound.music != null)
			{
				FlxG.sound.music.pause();
				vocals.pause();
			}

			#if desktop
<<<<<<< HEAD
			DiscordClient.changePresence(rpcPaused, rpcLocation, iconRPC);
			#end

			if (startTimer != null)
			{
				if (!startTimer.finished)
					startTimer.active = false;
			}
=======
			DiscordClient.changePresence("Paused on " + SONG.song + " (" + CoolUtil.difficultyFromInt(storyDifficulty) + ") ", null, iconRPC);
			#end

			if (!startTimer.finished)
				startTimer.active = false;
>>>>>>> upstream
		}

		super.openSubState(SubState);
	}

	override function closeSubState()
	{
		if (paused)
		{
			if (FlxG.sound.music != null && !startingSong)
				resyncVocals();

<<<<<<< HEAD
			paused = false;

			if (startTimer != null)
			{
				if (!startTimer.finished)
					startTimer.active = true;
				
				#if desktop
				if (startTimer.finished)
					DiscordClient.changePresence(rpcPlaying, rpcLocation, iconRPC, songLength - Conductor.songPosition);
				else
					DiscordClient.changePresence(rpcPlaying, rpcLocation, iconRPC);
				#end
			}
=======
			if (!startTimer.finished)
				startTimer.active = true;

			paused = false;

			#if desktop
			if (startTimer.finished)
				DiscordClient.changePresence(SONG.song + " (" + CoolUtil.difficultyFromInt(storyDifficulty) + ") ", null, iconRPC, songLength - Conductor.songPosition);
			else
				DiscordClient.changePresence(SONG.song + " (" + CoolUtil.difficultyFromInt(storyDifficulty) + ") ", null, iconRPC);
			#end
>>>>>>> upstream
		}

		super.closeSubState();
	}

<<<<<<< HEAD
	public function skipToTime(newTime:Float, ?triggerEvents:Bool = false):Void
	{
		if (!songStarted)
			return;
		
		FlxG.sound.music.pause();
		
		if (SONG.needsVoices)
			vocals.pause();

		FlxG.sound.music.time = newTime;
		Conductor.songPosition = newTime;

		camZooming = true;

		// if (unspawnNotes.length > 0)
		// {
		// 	while (unspawnNotes[0].strumTime <= newTime)
		// 	{
		// 		var note = unspawnNotes[0];
		// 		note.kill();
		// 		unspawnNotes.remove(note);
		// 		remove(note, true);
		// 		note.destroy();
		// 	}
		// }

		if (triggerEvents)
		{
			for (note in eventNotes)
			{
				if (note.strumTime <= Conductor.songPosition && eventNotes.contains(note))
				{
					for (event in note.events)
					{
						var paramsMap:Map<String, Dynamic> = new Map<String, Dynamic>();
						for (param in event.params)
						{
							var paramID = param.paramID;
							var paramValue = param.value != null ? param.value : param.defaultValue;
							paramsMap.set(paramID, paramValue);
						}

						var eventInt = loadedEventInterps.get(event.eventID);
						
						if (eventInt.variables.get("trigger") != null)
							eventInt.variables.get("trigger")(paramsMap);

						if (executeModchart)
						{
							if (interp.variables.get("onEvent") != null)
								interp.variables.get("onEvent")(event.eventID, paramsMap);
						}
					}

					eventNotes.remove(note);
				}
			}
		}
		else
		{
			for (note in eventNotes)
			{
				if (note.strumTime <= Conductor.songPosition && eventNotes.contains(note))
					eventNotes.remove(note);
			}
		}

		resyncVocals();
	}

	function resyncVocals():Void
	{
		if (!ending)
		{
			vocals.pause();
			FlxG.sound.music.play();
			Conductor.songPosition = FlxG.sound.music.time;
			vocals.time = Conductor.songPosition;
			vocals.play();
		}
	}

	public var paused(default, set):Bool = false;
	public var startedCountdown:Bool = false;
=======
	function resyncVocals():Void
	{
		vocals.pause();
		FlxG.sound.music.play();
		Conductor.songPosition = FlxG.sound.music.time;
		vocals.time = Conductor.songPosition;
		vocals.play();
	}

	private var paused(default, set):Bool = false;
	var startedCountdown:Bool = false;
>>>>>>> upstream
	var canPause:Bool = true;
	var nps:Int = 0;
	var maxNPS:Int = 0;

<<<<<<< HEAD
	var originalNoteSpeed:Null<Float>;

	var DONTFUCKINGTRIGGERYOUPIECEOFSHIT:Bool = false;

	override public function update(elapsed:Float)
	{
		if (DONTFUCKINGTRIGGERYOUPIECEOFSHIT)
			return;
		
=======
	var originalNoteSpeed:Float = SONG.speed;

	override public function update(elapsed:Float)
	{
>>>>>>> upstream
		#if !debug
		perfectMode = false;
		#end

<<<<<<< HEAD
=======
		var lerp:Float = Helper.boundTo(elapsed * 2.2, 0, 1);

		if (customFollowLerp != null)
			lerp = customFollowLerp;
		
		curCamPos.x = FlxMath.lerp(curCamPos.x, camFollow.x, lerp);
		curCamPos.y = FlxMath.lerp(curCamPos.y, camFollow.y, lerp);

>>>>>>> upstream
		if (executeModchart)
			interpVariables(interp);

		interpVariables(stageInterp);

		for (type => int in loadedNoteTypeInterps)
			interpVariables(int);

		for (type => int in loadedEventInterps)
			interpVariables(int);

<<<<<<< HEAD
		Modifiers.playStateUpdate(elapsed);

=======
>>>>>>> upstream
		if (Settings.botplay && FlxG.keys.justPressed.ONE)
			camHUD.visible = !camHUD.visible;

		if (Settings.scrollSpeed == 1 && Settings.botplay)
		{
<<<<<<< HEAD
			if (originalNoteSpeed == null)
				originalNoteSpeed = globalScrollSpeed;
			
=======
>>>>>>> upstream
			scrollSpeedText.text = Helper.truncateFloat(globalScrollSpeed, 2) + "";
			scrollSpeedText.x = FlxG.width - scrollSpeedText.width - 5;
			scrollSpeedText.y = FlxG.height - scrollSpeedText.height - 5;

			if (FlxG.keys.justPressed.Q)
				globalScrollSpeed -= 1;

			if (FlxG.keys.justPressed.E)
				globalScrollSpeed += 1;

			if (FlxG.keys.justPressed.A)
				globalScrollSpeed -= 0.1;

			if (FlxG.keys.justPressed.D)
				globalScrollSpeed += 0.1;

			if (FlxG.keys.pressed.Z)
				globalScrollSpeed -= 0.01;

			if (FlxG.keys.pressed.C)
				globalScrollSpeed += 0.01;

			if (FlxG.keys.pressed.V)
				globalScrollSpeed = originalNoteSpeed; // reset to original

			if (FlxG.keys.pressed.F)
				globalScrollSpeed = 0; // set to zero
<<<<<<< HEAD

			// botplay rating locks lol

			if (FlxG.keys.justPressed.J)
				lockType--;

			if (FlxG.keys.justPressed.L)
				lockType++;
=======
>>>>>>> upstream
		}

		if (Settings.underlayAlpha > 0 && startedCountdown)
		{
			pfBG1.x = playerStrums.x - 10;
			pfBG2.x = cpuStrums.x - 10;

			var bg1width = playerStrums.members[playerStrums.members.length - 1].x
				+ playerStrums.members[playerStrums.members.length - 1].staticWidth - playerStrums.members[0].x;
			var bg2width = cpuStrums.members[cpuStrums.members.length - 1].x
				+ cpuStrums.members[cpuStrums.members.length - 1].staticWidth - cpuStrums.members[0].x;

			pfBG1.setGraphicSize(Std.int(bg1width + 20), Std.int(pfBG1.height));

			if (!Settings.middleScroll)
				pfBG2.setGraphicSize(Std.int(bg2width + 20), Std.int(pfBG2.height));
		}

<<<<<<< HEAD
		if (stageInterp.variables.get("onUpdate") != null)
			stageInterp.variables.get("onUpdate")(elapsed);

		for (type => int in loadedNoteTypeInterps)
		{
			if (int.variables.get("onUpdate") != null)
				int.variables.get("onUpdate")(elapsed);
		}

=======
		// if (!boyfriend.specialAnim && boyfriend.animation.curAnim.finished)
		// 	boyfriend.dance();

		if (stageInterp.variables.get("onUpdate") != null)
			stageInterp.variables.get("onUpdate")(elapsed);

>>>>>>> upstream
		if (executeModchart)
		{
			if (interp.variables.get("onUpdate") != null)
				interp.variables.get("onUpdate")(elapsed);
		}
<<<<<<< HEAD
		
=======

>>>>>>> upstream
		// reverse iterate to remove oldest notes first and not invalidate the iteration
		// stop iteration as soon as a note is not removed
		// all notes should be kept in the correct order and this is optimal, safe to do every frame/update
		{
			var balls = notesHitArray.length - 1;
			while (balls >= 0)
			{
				var cock:Date = notesHitArray[balls];
				if (cock != null && cock.getTime() + 1000 < Date.now().getTime())
					notesHitArray.remove(cock);
				else
					balls = 0;
				balls--;
			}
			nps = notesHitArray.length;
			if (nps > maxNPS)
				maxNPS = nps;
		}

		if (FlxG.keys.justPressed.NINE)
			iconP1.swapOldIcon();

<<<<<<< HEAD
		if (FlxG.keys.justPressed.F1)
			previewMode = !previewMode;

		if (previewMode)
		{
			var multi:Float = 1;

			if (FlxG.keys.pressed.SHIFT)
				multi = 0.1;

			if (FlxG.keys.pressed.ALT)
				multi = 4;

			if (FlxG.keys.justPressed.SPACE)
				beatHit();

			if (FlxG.keys.pressed.W)
				camFollow.y -= 3 * multi;
			
			if (FlxG.keys.pressed.S)
				camFollow.y += 3 * multi;

			if (FlxG.keys.pressed.A)
				camFollow.x -= 3 * multi;

			if (FlxG.keys.pressed.D)
				camFollow.x += 3 * multi;

			if (FlxG.keys.pressed.Q)
				defaultCamZoom -= 0.03 * multi;

			if (FlxG.keys.pressed.E)
				defaultCamZoom += 0.03 * multi;

			defaultCamZoom += 0.03 * FlxG.mouse.wheel * multi;
		}

		var lerp:Float = Helper.boundTo(elapsed * 2.2, 0, 1);

		if (customFollowLerp != null)
			lerp = customFollowLerp;

		curCamPos.x = FlxMath.lerp(curCamPos.x, camFollow.x, lerp);
		curCamPos.y = FlxMath.lerp(curCamPos.y, camFollow.y, lerp);

		super.update(elapsed);

		var npsShit = (Settings.npsDisplay ? "NPS: " + nps + " (Max " + maxNPS + ") " + scoreSeparator + " " : "");
		var rateShit = Ratings.CalculateRanking(songScore, songScoreDef, nps, maxNPS, accuracy);

		if (npsShit + rateShit != scoreTxt.text)
			scoreTxt.text = npsShit + rateShit;

		if (controls.PAUSE && startedCountdown && canPause && !inCutscene)
		{
			if (stageInterp.variables.get("onPause") != null)
			{
				var val:Int = cast stageInterp.variables.get("onPause")();

				if (val == ScriptEssentials.HALT_EXECUTION)
					return;
			}

			if (executeModchart)
			{
				if (interp.variables.get("onPause") != null)
				{
					var val:Int = cast interp.variables.get("onPause")();

					if (val == ScriptEssentials.HALT_EXECUTION)
						return;
				}
			}
				
=======
		super.update(elapsed);

		if (!Settings.extensiveDisplay)
			scoreTxt.text = (Settings.npsDisplay ? "NPS: " + nps + " (Max " + maxNPS + ") | " : "") + "Score: " + songScore + " | Misses: " + misses + " | Accuracy: " + Helper.truncateFloat(accuracy, 2) + "%";
		else
			scoreTxt.text = (Settings.npsDisplay ? "NPS: " + nps + " (Max " + maxNPS + ") | " : "") + Ratings.CalculateRanking(songScore, songScoreDef, nps, maxNPS, accuracy);

		if (FlxG.keys.justPressed.ENTER && startedCountdown && canPause && !inCutscene)
		{
>>>>>>> upstream
			persistentUpdate = false;
			persistentDraw = true;
			paused = true;

<<<<<<< HEAD
			FlxG.sound.music.pause();
			vocals.pause();
=======
			if (songStarted && executeModchart)
			{
				if (interp.variables.get("onPause") != null)
					interp.variables.get("onPause")();
			}
>>>>>>> upstream

			// 1 / 1000 chance for Gitaroo Man easter egg
			if (FlxG.random.bool(0.1))
			{
				trace('GITAROO MAN EASTER EGG');
<<<<<<< HEAD
				CustomTransition.switchTo(new GitarooPause());
			}
			else
			{
				var s = new PauseSubState();
				s.cameras = [camMisc];
				openSubState(s);
			}
=======
				FlxG.switchState(new GitarooPause());
			}
			else
				openSubState(new PauseSubState());
>>>>>>> upstream
		}

		if (FlxG.keys.justPressed.SEVEN)
		{
			#if desktop
			DiscordClient.changePresence("Chart Editor", null, null, true);
			#end
<<<<<<< HEAD
			PlayState.resetWeekStats();
			LoadingState.loadAndSwitchState(new editors.ChartingState());
=======
			FlxG.switchState(new editors.ChartingState());
>>>>>>> upstream
			openedCharting = true;
		}

		// FlxG.watch.addQuick('VOL', vocals.amplitudeLeft);
		// FlxG.watch.addQuick('VOLRight', vocals.amplitudeRight);

		iconP1.setGraphicSize(Std.int(FlxMath.lerp(iconP1.width, 150, Helper.boundTo(elapsed * 10, 0, 1))));
		iconP2.setGraphicSize(Std.int(FlxMath.lerp(iconP2.width, 150, Helper.boundTo(elapsed * 10, 0, 1))));

		iconP1.updateHitbox();
		iconP2.updateHitbox();

		var iconOffset:Int = 26;

<<<<<<< HEAD
		if (healthBar.fillDirection == RIGHT_TO_LEFT)
		{
			iconP1.x = healthBar.x + (healthBar.width * (FlxMath.remapToRange(healthBar.percent, 0, 100, 100, 0) * 0.01) - iconOffset);
			iconP2.x = healthBar.x + (healthBar.width * (FlxMath.remapToRange(healthBar.percent, 0, 100, 100, 0) * 0.01)) - (iconP2.width - iconOffset);
		}
		else if (healthBar.fillDirection == LEFT_TO_RIGHT)
		{
			iconP1.x = healthBar.x + (healthBar.width * (healthBar.percent * 0.01)) - iconOffset;
			iconP2.x = healthBar.x + (healthBar.width * (healthBar.percent * 0.01)) - (iconP2.width - iconOffset);
		}
=======
		iconP1.x = healthBar.x + (healthBar.width * (FlxMath.remapToRange(healthBar.percent, 0, 100, 100, 0) * 0.01) - iconOffset);
		iconP2.x = healthBar.x + (healthBar.width * (FlxMath.remapToRange(healthBar.percent, 0, 100, 100, 0) * 0.01)) - (iconP2.width - iconOffset);
>>>>>>> upstream

		iconP1.y = healthBar.y + (healthBar.height / 2) - ((iconP1.height / 2) * 1.125);
		iconP2.y = healthBar.y + (healthBar.height / 2) - ((iconP2.height / 2) * 1.125);

		if (health > 2)
			health = 2;

		if (healthBar.percent < 20)
			iconP1.animation.curAnim.curFrame = 1;
		else
			iconP1.animation.curAnim.curFrame = 0;

		if (healthBar.percent > 80)
			iconP2.animation.curAnim.curFrame = 1;
		else
			iconP2.animation.curAnim.curFrame = 0;

		#if debug
		if (FlxG.keys.pressed.SHIFT)
		{
<<<<<<< HEAD
			if (FlxG.keys.justPressed.EIGHT || FlxG.keys.justPressed.ZERO)
			{
				FlxG.sound.music.stop();
				vocals.stop();
				ending = true;
				
				if (FlxG.keys.justPressed.EIGHT)
					CustomTransition.switchTo(new CharacterEditor(true, SONG.player2));
	
				if (FlxG.keys.justPressed.ZERO)
					CustomTransition.switchTo(new CharacterEditor(false, SONG.player1));
			}
=======
			if (FlxG.keys.justPressed.EIGHT)
				FlxG.switchState(new CharacterEditor(true, SONG.player2));

			if (FlxG.keys.justPressed.ZERO)
				FlxG.switchState(new CharacterEditor(false, SONG.player1));
>>>>>>> upstream
		}
		#end

		if (startingSong)
		{
			if (startedCountdown)
			{
<<<<<<< HEAD
				Conductor.songPosition += FlxG.elapsed * 1000 * FlxG.timeScale;
=======
				Conductor.songPosition += FlxG.elapsed * 1000;
>>>>>>> upstream
				if (Conductor.songPosition >= 0)
					startSong();
			}
		}
		else
		{
<<<<<<< HEAD
			if (!ending)
			{
				Conductor.songPosition += FlxG.elapsed * 1000 * FlxG.timeScale;
				songPositionBar = Conductor.songPosition;

				if (!paused)
				{
					songTime += FlxG.game.ticks - previousFrameTime;
					previousFrameTime = FlxG.game.ticks;

					// Interpolation type beat
					if (Conductor.lastSongPos != Conductor.songPosition)
					{
						songTime = (songTime + Conductor.songPosition) / 2;
						Conductor.lastSongPos = Conductor.songPosition;
					}
=======
			Conductor.songPosition += FlxG.elapsed * 1000;
			songPositionBar = Conductor.songPosition;

			if (!paused)
			{
				songTime += FlxG.game.ticks - previousFrameTime;
				previousFrameTime = FlxG.game.ticks;

				// Interpolation type beat
				if (Conductor.lastSongPos != Conductor.songPosition)
				{
					songTime = (songTime + Conductor.songPosition) / 2;
					Conductor.lastSongPos = Conductor.songPosition;
>>>>>>> upstream
				}
			}
		}

		// events!
		if (PlayState.EVENTS != null)
		{
			if (songStarted && generatedMusic && PlayState.EVENTS.events[Std.int(curStep / 16)] != null)
			{
				for (note in eventNotes)
				{
					if (note.strumTime <= Conductor.songPosition && eventNotes.contains(note))
					{
						// FIRE!
						for (event in note.events)
						{
							var paramsMap:Map<String, Dynamic> = new Map<String, Dynamic>();
							for (param in event.params)
							{
								var paramID = param.paramID;
								var paramValue = param.value != null ? param.value : param.defaultValue;
								paramsMap.set(paramID, paramValue);
<<<<<<< HEAD
							}

							var eventInt = loadedEventInterps.get(event.eventID);

							if (eventInt.variables.get("trigger") != null)
								eventInt.variables.get("trigger")(paramsMap);

							if (stageInterp.variables.get("onEvent") != null)
								stageInterp.variables.get("onEvent")(event.eventID, paramsMap);
=======
								trace(paramID, paramValue);
							}

							var eventInt = loadedEventInterps.get(event.eventID);
							eventInt.variables.get("trigger")(paramsMap);
>>>>>>> upstream

							if (executeModchart)
							{
								if (interp.variables.get("onEvent") != null)
									interp.variables.get("onEvent")(event.eventID, paramsMap);
							}
						}

						eventNotes.remove(note);
					}
				}
			}
		}

<<<<<<< HEAD
		if (generatedMusic && PlayState.SONG.notes[Std.int(curStep / 16)] != null && !previewMode && !ending)
=======
		/*
		if (generatedMusic && PlayState.SONG.notes[Std.int(curStep / 16)] != null)
		{
			// Make sure Girlfriend cheers only for certain songs
			if (allowedToHeadbang)
			{
				// Don't animate GF if something else is already animating her (eg. train passing)
				if (gf.animation.curAnim.name == 'danceLeft'
					|| gf.animation.curAnim.name == 'danceRight'
					|| gf.animation.curAnim.name == 'idle')
				{
					// Per song treatment since some songs will only have the 'Hey' at certain times
					switch (curSong)
					{
						case 'Philly Nice':
							{
								// General duration of the song
								if (curBeat < 250)
								{
									// Beats to skip or to stop GF from cheering
									if (curBeat != 184 && curBeat != 216)
									{
										if (curBeat % 16 == 8)
										{
											// Just a garantee that it'll trigger just once
											if (!triggeredAlready)
											{
												gf.playAnim('cheer');
												triggeredAlready = true;
											}
										}
										else
											triggeredAlready = false;
									}
								}
							}
						case 'Bopeebo':
							{
								// Where it starts || where it ends
								if (curBeat > 5 && curBeat < 130)
								{
									if (curBeat % 8 == 7)
									{
										if (!triggeredAlready)
										{
											gf.playAnim('cheer');
											triggeredAlready = true;
										}
									}
									else
										triggeredAlready = false;
								}
							}
						case 'Blammed':
							{
								if (curBeat > 30 && curBeat < 190)
								{
									if (curBeat < 90 || curBeat > 128)
									{
										if (curBeat % 4 == 2)
										{
											if (!triggeredAlready)
											{
												gf.playAnim('cheer');
												triggeredAlready = true;
											}
										}
										else
											triggeredAlready = false;
									}
								}
							}
						case 'Cocoa':
							{
								if (curBeat < 170)
								{
									if (curBeat < 65 || curBeat > 130 && curBeat < 145)
									{
										if (curBeat % 16 == 15)
										{
											if (!triggeredAlready)
											{
												gf.playAnim('cheer');
												triggeredAlready = true;
											}
										}
										else
											triggeredAlready = false;
									}
								}
							}
						case 'Eggnog':
							{
								if (curBeat > 10 && curBeat != 111 && curBeat < 220)
								{
									if (curBeat % 8 == 7)
									{
										if (!triggeredAlready)
										{
											gf.playAnim('cheer');
											triggeredAlready = true;
										}
									}
									else
										triggeredAlready = false;
								}
							}
					}
				}
			}
		}
		*/

		if (generatedMusic && PlayState.SONG.notes[Std.int(curStep / 16)] != null)
>>>>>>> upstream
		{
			if ((camFollow.x != dad.getMidpoint().x + 150 + dad.cameraOffset[0] + cameraOffsetX
				|| camFollow.y != dad.getMidpoint().y
					- 100
					+ dad.cameraOffset[1]
					+ cameraOffsetY)
				&& !PlayState.SONG.notes[Std.int(curStep / 16)].mustHitSection
				&& !inCutscene
				&& !isCamForced)
			{
				var offsetX = dad.cameraOffset[0] + cameraOffsetX;
				var offsetY = dad.cameraOffset[1] + cameraOffsetY;

				camFollow.setPosition(dad.getMidpoint().x + 150 + offsetX, dad.getMidpoint().y - 100 + offsetY);

				whosFocused = dad;
			}

			if ((camFollow.x != boyfriend.getMidpoint().x - 100 + boyfriend.cameraOffset[0] + cameraOffsetX
				|| camFollow.y != boyfriend.getMidpoint().y
					- 100
					+ boyfriend.cameraOffset[1]
					+ cameraOffsetY)
				&& PlayState.SONG.notes[Std.int(curStep / 16)].mustHitSection
				&& !inCutscene
				&& !isCamForced)
			{
				var offsetX = boyfriend.cameraOffset[0] + cameraOffsetX;
				var offsetY = boyfriend.cameraOffset[1] + cameraOffsetY;

				camFollow.setPosition(boyfriend.getMidpoint().x - 100 + offsetX, boyfriend.getMidpoint().y - 100 + offsetY);

				whosFocused = boyfriend;
			}
		}

		if (camZooming)
		{
			FlxG.camera.zoom = FlxMath.lerp(defaultCamZoom, FlxG.camera.zoom, Helper.boundTo(1 - (elapsed * 3.125), 0, 1));
			camHUD.zoom = FlxMath.lerp(1, camHUD.zoom, Helper.boundTo(1 - (elapsed * 3.125), 0, 1));
		}

		FlxG.watch.addQuick("beatShit", curBeat);
		FlxG.watch.addQuick("stepShit", curStep);
		FlxG.watch.addQuick("sectionShit", Std.int(curStep / 16));

<<<<<<< HEAD
		if (health <= 0)
		{
			if (stageInterp.variables.get("onDeath") != null)
			{
				var val:Int = cast stageInterp.variables.get("onDeath")();

				if (val == ScriptEssentials.HALT_EXECUTION)
					return;
			}
	
			if (executeModchart)
			{
				if (interp.variables.get("onDeath") != null)
				{
					var val:Int = cast interp.variables.get("onDeath")();

					if (val == ScriptEssentials.HALT_EXECUTION)
						return;
				}
			}

=======
		// if (curSong == 'Fresh')
		// {
		// 	switch (curBeat)
		// 	{
		// 		case 16:
		// 			camZooming = true;
		// 			gfSpeed = 2;
		// 		case 48:
		// 			gfSpeed = 1;
		// 		case 80:
		// 			gfSpeed = 2;
		// 		case 112:
		// 			gfSpeed = 1;
		// 	}
		// }

		if (health <= 0)
		{
>>>>>>> upstream
			boyfriend.stunned = true;

			persistentUpdate = false;
			persistentDraw = false;
			paused = true;

			vocals.stop();
			FlxG.sound.music.stop();

<<<<<<< HEAD
			var bfPos = boyfriend.getScreenPosition(camMisc);
			openSubState(new GameOverSubstate(bfPos.x, bfPos.y, curCamPos));

			#if desktop
			DiscordClient.changePresence(rpcDeath, rpcLocation);
			#end
		}

		if (controls.RESET && Settings.resetButton)
			health = 0;

		if (startAt == 0)
			noteShit();
=======
			openSubState(new GameOverSubstate(boyfriend.x, boyfriend.y, curCamPos));

			#if desktop
			DiscordClient.changePresence("Dead on " + SONG.song + " (" + CoolUtil.difficultyFromInt(storyDifficulty) + ") ");
			#end
		}

		if (FlxG.keys.pressed.R && Settings.resetButton)
			health = 0;

		if (unspawnNotes[0] != null)
		{
			if (unspawnNotes[0].strumTime - Conductor.songPosition < 3500 / Math.abs(globalScrollSpeed))
			{
				var dunceNote:Note = unspawnNotes[0];
				dunceNote.reset(0, -2000);
				notes.add(dunceNote);

				if (dunceNote.isSustainNote)
					displaySustains.add(dunceNote);
				else
					displayNotes.add(dunceNote);

				var index:Int = unspawnNotes.indexOf(dunceNote);
				unspawnNotes.splice(index, 1);
			}
		}

		if (generatedMusic)
		{
			notes.forEachAlive(function(daNote:Note)
			{
				var noteY = (daNote.mustPress ? playerStrums.members[daNote.noteData].y : strumLineNotes.members[daNote.noteData].y);

				if (Settings.downscroll)
				{
					if (daNote.positionLockY)
						daNote.y = (noteY + (Conductor.songPosition - daNote.strumTime) * (0.45 * FlxMath.roundDecimal(Math.abs(globalScrollSpeed), 2)));

					if (daNote.isSustainNote)
					{
						if (daNote.animation.curAnim.name.endsWith('end') && daNote.prevNote != null && daNote.positionLockY)
							daNote.y = (noteY
								+ (SONG.noteStyle == 'pixel' ? 0 : 1.5)
								+ (Conductor.songPosition - daNote.prevNote.strumTime) * (0.45 * FlxMath.roundDecimal(Math.abs(globalScrollSpeed), 2)))
								- daNote.height;

						if ((!daNote.mustPress || daNote.wasGoodHit || daNote.prevNote.wasGoodHit && daNote.canBeHit)
							&& daNote.y - daNote.offset.y * daNote.scale.y + daNote.height >= (noteY - Note.swagWidth / 2))
						{
							var swagRect = new FlxRect(0, 0, daNote.frameWidth * 2, daNote.frameHeight * 2);
							swagRect.height = (noteY + Note.swagWidth / 2 - daNote.y) / daNote.scale.y;
							swagRect.y = daNote.frameHeight - swagRect.height;

							daNote.clipRect = swagRect;
						}
					}
				}
				else
				{
					if (daNote.positionLockY)
						daNote.y = (noteY - (Conductor.songPosition - daNote.strumTime) * (0.45 * FlxMath.roundDecimal(Math.abs(globalScrollSpeed), 2)));

					if (daNote.isSustainNote)
					{
						if (daNote.animation.curAnim.name.endsWith('end') && daNote.prevNote != null && daNote.positionLockY)
							daNote.y = (noteY
								- (SONG.noteStyle == 'pixel' ? 0 : 1.5)
								- (Conductor.songPosition - daNote.prevNote.strumTime) * (0.45 * FlxMath.roundDecimal(Math.abs(globalScrollSpeed), 2)))
								+ daNote.prevNote.height;

						if ((!daNote.mustPress || daNote.wasGoodHit || daNote.prevNote.wasGoodHit && daNote.canBeHit)
							&& daNote.y + daNote.offset.y * daNote.scale.y <= (noteY + Note.swagWidth / 2))
						{
							var swagRect = new FlxRect(0, 0, daNote.width / daNote.scale.x, daNote.height / daNote.scale.y);
							swagRect.y = (noteY + Note.swagWidth / 2 - daNote.y) / daNote.scale.y;
							swagRect.height -= swagRect.y;

							daNote.clipRect = swagRect;
						}
					}
				}

				// botplay code
				if (daNote.mustPress && Settings.botplay)
				{
					if (daNote.canBeHit)
					{
						if (daNote.strumTime <= Conductor.songPosition && !daNote.canMiss)
							goodNoteHit(daNote);
					}
				}

				if (!daNote.mustPress && !daNote.wasGoodHit && daNote.strumTime <= Conductor.songPosition)
				{
					camZooming = true;

					var altAnim:Bool = false;

					if (SONG.notes[Math.floor(curStep / 16)] != null)
					{
						if (SONG.notes[Math.floor(curStep / 16)].altAnim)
							altAnim = true;
					}

					if (!daNote.wasEnemyNote)
						sing(boyfriend, daNote.noteData, altAnim);
					else
						sing(dad, daNote.noteData, altAnim);

					lightStrumNote(cpuStrums, daNote.noteData);

					if (daNote.noteType != "hopeEngine/normal")
					{
						if (loadedNoteTypeInterps.exists(daNote.noteType))
						{
							if (loadedNoteTypeInterps.get(daNote.noteType).variables.get("dadNoteHit") != null)
								loadedNoteTypeInterps.get(daNote.noteType).variables.get("dadNoteHit")(daNote);
						}
					}

					daNote.wasGoodHit = true;

					if (SONG.needsVoices)
						vocals.volume = 1;

					if (Settings.difficultyVocals)
						vocals.fadeOut((Conductor.stepCrochet / 1000) * dad.singDuration, 1, function(_)
						{
							vocals.volume = 0;
						});

					if (executeModchart)
					{
						if (interp.variables.get("oppoNoteHit") != null)
							interp.variables.get("oppoNoteHit")(daNote);
					}

					daNote.active = false;

					if (!daNote.isSustainNote)
					{
						daNote.kill();
						notes.remove(daNote, true);
						remove(daNote, true);
						daNote.destroy();
					}
				}

				if (daNote.mustPress && !daNote.wasGoodHit)
				{
					if (daNote.visibleLock)
						daNote.visible = playerStrums.members[daNote.noteData].visible;

					if (daNote.positionLockX)
						daNote.x = playerStrums.members[daNote.noteData].x;

					if (!daNote.isSustainNote)
					{
						if (daNote.angleLock)
						{
							if (!daNote.upSpriteOnly)
								daNote.angle = playerStrums.members[daNote.noteData].angle;
							else
								daNote.angle = Note.noteAngles[daNote.noteData] + playerStrums.members[daNote.noteData].angle;
						}

						if (daNote.alphaLock)
							daNote.alpha = playerStrums.members[daNote.noteData].alpha;
					}
					else
					{
						if (daNote.alphaLock)
							daNote.alpha = 0.6 * playerStrums.members[daNote.noteData].alpha;
					}
				}
				else if (!daNote.wasGoodHit)
				{
					if (daNote.visibleLock)
						daNote.visible = strumLineNotes.members[daNote.noteData].visible;

					if (daNote.positionLockX)
						daNote.x = strumLineNotes.members[daNote.noteData].x;

					if (!daNote.isSustainNote)
					{
						if (daNote.angleLock)
						{
							if (!daNote.upSpriteOnly)
								daNote.angle = strumLineNotes.members[daNote.noteData].angle;
							else
								daNote.angle = Note.noteAngles[daNote.noteData] + strumLineNotes.members[daNote.noteData].angle;
						}

						if (daNote.alphaLock)
							daNote.alpha = strumLineNotes.members[daNote.noteData].alpha;
					}
					else
					{
						if (daNote.alphaLock)
							daNote.alpha = 0.6 * strumLineNotes.members[daNote.noteData].alpha;
					}
				}

				// put the sustains in the middle so that it looks cool

				if (daNote.mustPress && daNote.isSustainNote && daNote.positionLockX)
					daNote.x = playerStrums.members[daNote.noteData].x + (playerStrums.members[daNote.noteData].staticWidth / 2) - (daNote.width / 2);
				else if (!daNote.mustPress && daNote.isSustainNote && daNote.positionLockX)
					daNote.x = cpuStrums.members[daNote.noteData].x + (cpuStrums.members[daNote.noteData].staticWidth / 2) - (daNote.width / 2);

				// WIP interpolation shit? Need to fix the pause issue
				// daNote.y = (strumLine.y - (songTime - daNote.strumTime) * (0.45 * PlayState.SONG.speed));

				if (daNote.mustPress && daNote.tooLate && !daNote.wasGoodHit && daNote.rating != "miss")
				{
					if (!daNote.canMiss)
					{
						health -= 0.075;
						vocals.volume = 0;
						noteMiss(daNote.noteData, daNote);
					}

					if (daNote.noteType != "hopeEngine/normal")
					{
						if (loadedNoteTypeInterps.exists(daNote.noteType))
						{
							if (loadedNoteTypeInterps.get(daNote.noteType).variables.get("onNoteMiss") != null)
								loadedNoteTypeInterps.get(daNote.noteType).variables.get("onNoteMiss")(daNote);
						}
					}

					daNote.rating = "miss";
				}

				if ((daNote.tooLate && !daNote.wasGoodHit) || (daNote.isSustainNote && daNote.wasGoodHit))
				{
					if (!Settings.downscroll)
					{
						if (daNote.y + daNote.frameHeight + 10 < 0)
						{
							daNote.kill();
							notes.remove(daNote, true);
							remove(daNote, true);
							daNote.destroy();
						}
					}
					else
					{
						if (daNote.y - 10 > FlxG.height)
						{
							daNote.kill();
							notes.remove(daNote, true);
							remove(daNote, true);
							daNote.destroy();
						}
					}
				}
			});
		}
>>>>>>> upstream

		if (!inCutscene)
			keyShit();

		cpuStrums.forEach(function(spr:StaticArrow)
		{
			if (spr.animation.finished)
			{
				spr.playAnim('static');
				spr.centerOffsets();
			}
		});

		#if debug
		if (FlxG.keys.justPressed.ONE)
			FlxG.sound.music.time = FlxG.sound.music.length - 10;
<<<<<<< HEAD

		if (FlxG.keys.justPressed.B)
			Settings.botplay = devBot = !Settings.botplay;
		#end

		Modifiers.postUpdate(elapsed);
	}

	public static function resetWeekStats():Void
	{
		weekShits = 0;
		weekBads = 0;
		weekGoods = 0;
		weekSicks = 0;
		weekMisses = 0;
		weekPeakCombo = [];
		weekAccuracies = [];
		weekName = "";

		previousCamFollow = null;
		previousCamPos = null;
	}

	public var devBot:Bool = false;

	var waitTime:Float = FlxG.elapsed;

	public function endSong():Void
	{
		if (!paused)
		{
			ending = true;

			if (Settings.autopause)
			{
				FlxG.signals.focusLost.remove(focusLost);
				FlxG.signals.focusGained.remove(focusGained);
			}
=======
		#end
	}

	function endSong():Void
	{
		if (!paused)
		{
			var waitTime:Float = 0;

			FlxTween.tween(songPosBar, {alpha: 0}, Conductor.crochet / 1500, {ease: FlxEase.expoInOut});
			FlxTween.tween(songPosBG, {alpha: 0}, Conductor.crochet / 1500, {ease: FlxEase.expoInOut});
			FlxTween.tween(songName, {alpha: 0}, Conductor.crochet / 1500, {ease: FlxEase.expoInOut});
>>>>>>> upstream

			canPause = false;
			FlxG.sound.music.volume = 0;
			vocals.volume = 0;

<<<<<<< HEAD
			FlxG.sound.music.pause();
			vocals.pause();

			openfl.Assets.cache.clear(Paths.inst(PlayState.SONG.song));
			openfl.Assets.cache.clear(Paths.voices(PlayState.SONG.song));

			var mv:Array<Bool> = [];
			for (key => value in Modifiers.modifiers) 
				mv.push(value != Modifiers.modifierDefaults.get(key));

			if (mv.contains(true))
			{
				if (!Settings.botplay && !openedCharting)
					Modifiers.save(SONG.song, CoolUtil.difficultyFromInt(storyDifficulty), Math.round(songScore), accuracy);
			}
			else if (SONG.validScore && !openedCharting)
			{
				var songHighscore = PlayState.SONG.song;
=======
			openfl.Assets.cache.clear(Paths.inst(PlayState.SONG.song));
			openfl.Assets.cache.clear(Paths.voices(PlayState.SONG.song));

			if (SONG.validScore)
			{
				var songHighscore = StringTools.replace(PlayState.SONG.song, " ", "-");
>>>>>>> upstream

				Highscore.saveScore(songHighscore, Math.round(songScore), storyDifficulty);
				Highscore.saveAccuracy(songHighscore, accuracy, storyDifficulty);
			}
<<<<<<< HEAD
			
			if (executeModchart)
			{
				if (interp.variables.get("onSongEnd") != null)
					interp.variables.get("onSongEnd")();
			}

			FlxTween.tween(songPosBG, {alpha: 0}, 0.5, {ease: FlxEase.expoInOut});
			FlxTween.tween(songPosBar, {alpha: 0}, 0.5, {ease: FlxEase.expoInOut});
			FlxTween.tween(songName, {alpha: 0}, 0.5, {ease: FlxEase.expoInOut});

			new FlxTimer().start(0.5, function(tmr:FlxTimer)
=======

			if (executeModchart)
			{
				if (interp.variables.get("onSongEnd") != null)
				{
					interp.variables.get("onSongEnd")();
					waitTime = FlxG.elapsed;
				}
			}

			new FlxTimer().start(waitTime, function(tmr:FlxTimer)
>>>>>>> upstream
			{
				if (inCutscene)
				{
					tmr.reset(FlxG.elapsed);
					return;
				}
<<<<<<< HEAD

				if (openedCharting)
				{
					#if desktop
					DiscordClient.changePresence("Chart Editor", null, null, true);
					#end
					PlayState.resetWeekStats();
					LoadingState.loadAndSwitchState(new editors.ChartingState());
					return;
				}

=======
				
>>>>>>> upstream
				if (isStoryMode)
				{
					campaignScore += Math.round(songScore);

					weekShits += shits;
					weekBads += bads;
					weekGoods += goods;
					weekSicks += sicks;
					weekMisses += misses;
					weekPeakCombo.push(peakCombo);
					weekAccuracies.push(Helper.truncateFloat(accuracy, 2));

					storyPlaylist.remove(storyPlaylist[0]);

					if (storyPlaylist.length <= 0)
					{
<<<<<<< HEAD
						if (!mv.contains(true) && !Settings.botplay && !openedCharting)
						{
							Achievements.camera = camMisc;
							achievementCheck();
						}

						new FlxTimer().start(waitTime, function(_) {
							FlxG.sound.playMusic(Paths.music('freakyMenu'));
							Conductor.changeBPM(102);
							CustomTransition.switchTo(new StoryMenuState());

							if (SONG.validScore)
								Highscore.saveWeekScore(storyWeek, campaignScore, storyDifficulty);

							#if !UNLOCK_ALL_WEEKS
							FlxG.save.data.weeksUnlocked.push(true);
							#end

							openedCharting = false;
							PlayState.startAt = 0;
							Settings.botplay = false;
							PlayState.seenCutscene = false;

							FlxG.save.flush();
							PlayState.resetWeekStats();
						});
=======
						transIn = FlxTransitionableState.defaultTransIn;
						transOut = FlxTransitionableState.defaultTransOut;

						originalPlaylistLength = -1;

						FlxG.sound.playMusic(Paths.music('freakyMenu'));
						Conductor.changeBPM(102);
						FlxG.switchState(new StoryMenuState());

						if (SONG.validScore)
							Highscore.saveWeekScore(storyWeek, campaignScore, storyDifficulty);

						#if !UNLOCK_ALL_WEEKS
						FlxG.save.data.weeksUnlocked.push(true);
						#end

						openedCharting = false;
						Settings.botplay = false;

						FlxG.save.flush();
>>>>>>> upstream
					}
					else
					{
						var difficulty:String = "";

						difficulty = CoolUtil.difficultySuffix();

						trace('LOADING NEXT SONG');
						// pre lowercasing the next story song name
<<<<<<< HEAD
						var nextSongLowercase = Paths.toSongPath(PlayState.storyPlaylist[0]);
=======
						var nextSongLowercase = PlayState.storyPlaylist[0].replace(" ", "-").toLowerCase();
>>>>>>> upstream
						trace(nextSongLowercase + difficulty);

						FlxTransitionableState.skipNextTransIn = true;
						FlxTransitionableState.skipNextTransOut = true;
<<<<<<< HEAD
						previousCamFollow = new FlxPoint(camFollow.x, camFollow.y);
						previousCamPos = new FlxPoint(curCamPos.x, curCamPos.y);

						PlayState.SONG = Song.loadFromJson(nextSongLowercase + difficulty, nextSongLowercase,
							(Paths.currentMod != null && Paths.currentMod.length > 0 ? "mods/" + Paths.currentMod : ""));
						PlayState.EVENTS = Event.load(nextSongLowercase,
							(Paths.currentMod != null && Paths.currentMod.length > 0 ? "mods/" + Paths.currentMod : ""));
=======
						prevCamFollow = camFollow;

						PlayState.SONG = Song.loadFromJson(nextSongLowercase + difficulty, nextSongLowercase,
							(Paths.currentMod != null && Paths.currentMod.length > 0 ? "mods/" + Paths.currentMod : ""));
						PlayState.EVENTS = Event.load(nextSongLowercase, (Paths.currentMod != null && Paths.currentMod.length > 0 ? "mods/" + Paths.currentMod : ""));
>>>>>>> upstream
						FlxG.sound.music.stop();

						LoadingState.loadAndSwitchState(new PlayState());
						openedCharting = false;
<<<<<<< HEAD
						PlayState.startAt = 0;
						Settings.botplay = false;
						PlayState.seenCutscene = false;
=======
						Settings.botplay = false;
>>>>>>> upstream
					}
				}
				else
				{
					FlxG.sound.playMusic(Paths.music('freakyMenu'));
					Conductor.changeBPM(102);
<<<<<<< HEAD
					CustomTransition.switchTo(new FreeplayState());
					openedCharting = false;
					PlayState.startAt = 0;
					Settings.botplay = false;
					PlayState.seenCutscene = false;
=======
					FlxG.switchState(new FreeplayState());
					openedCharting = false;
					Settings.botplay = false;
>>>>>>> upstream
				}
			});
		}
	}

<<<<<<< HEAD
=======
	var endingSong:Bool = false;

>>>>>>> upstream
	var hits:Array<Float> = [];
	var offsetTest:Float = 0;

	var timeShown = 0;

	private function popUpScore(daNote:Note, ?comboBreak:Bool = false):Void
	{
<<<<<<< HEAD
		var noteDiff = -(daNote.strumTime - Conductor.songPosition);
		var wife:Float = EtternaFunctions.wife3(Math.abs(noteDiff), Conductor.timeScale);
=======
		var noteDiff = (daNote.strumTime - Conductor.songPosition);
		var wife:Float = EtternaFunctions.wife3(noteDiff, Conductor.timeScale);
>>>>>>> upstream
		vocals.volume = 1;

		var wasEarlyOrLate:Bool = false;

		var rating:FlxSprite = new FlxSprite();
		var score:Float = 350;

		var comboSpr1:FlxSprite = null;
		var comboSpr2:FlxSprite = null;

		if (Settings.accuracyMode == 1 && !daNote.isSustainNote)
			totalNotesHit += wife;

		var daRating = daNote.rating;

		if (daRating == 'sick')
		{
<<<<<<< HEAD
			if (noteDiff > Conductor.safeZoneOffset * 0.2 || noteDiff < Conductor.safeZoneOffset * -0.2)
=======
			if (noteDiff > Conductor.safeZoneOffset * 0.1 || noteDiff < Conductor.safeZoneOffset * -0.1)
>>>>>>> upstream
				wasEarlyOrLate = true;
		}

		if (combo > peakCombo)
			peakCombo = combo;

		if (daNote.canScore)
		{
			switch (daRating)
			{
				case 'shit':
<<<<<<< HEAD
					if (Modifiers.modifiers['kade_judge'])
					{
						combo = 0;
						misses++;
					}
=======
>>>>>>> upstream
					score = -300;
					health -= 0.2;
					shits++;
					if (Settings.accuracyMode == 0)
						totalNotesHit += 0.25;
				case 'bad':
					daRating = 'bad';
					score = 0;
					health -= 0.06;
					bads++;
					if (Settings.accuracyMode == 0)
						totalNotesHit += 0.50;
				case 'good':
					daRating = 'good';
					score = 200;
					goods++;
					if (health < 2)
						health += 0.04;
					if (Settings.accuracyMode == 0)
						totalNotesHit += 0.75;
				case 'sick':
					if (health < 2)
						health += 0.1;
					if (Settings.accuracyMode == 0)
						totalNotesHit += 1;
					sicks++;
<<<<<<< HEAD
				case 'miss':
					score = 0;
=======
>>>>>>> upstream
			}
		}
		else
			score = 0;

		songScore += Math.round(score);
		songScoreDef += Math.round(ConvertScore.convertScore(noteDiff));

		var pixelShitPart1:String = "";
		var pixelShitPart2:String = '';

		if (SONG.noteStyle == "pixel")
		{
			pixelShitPart1 = 'pixelUI/';
			pixelShitPart2 = '-pixel';
		}

		var ratingImageName:String = daRating;

		// display "sick" with 1 exclamation point if it was an early sick
		// doesn't really affect score I just thought it would be funny
<<<<<<< HEAD
		// now it does, you niwmit
		if (daRating == 'sick' && wasEarlyOrLate)
		{
			ratingImageName = 'sickButNotReally';
			sickButNotReally++;
		}
=======
		if (daRating == 'sick' && wasEarlyOrLate)
			ratingImageName = 'sickButNotReally';
>>>>>>> upstream

		rating.loadGraphic(Paths.image(pixelShitPart1 + ratingImageName + pixelShitPart2));
		rating.acceleration.y = 550;
		rating.velocity.y -= FlxG.random.int(140, 175);
		rating.velocity.x -= FlxG.random.int(0, 10);

<<<<<<< HEAD
		var comboSpr:FlxSprite = null;

		if (combo % 100 == 0 && combo > 0)
		{
			comboSpr = new FlxSprite().loadGraphic(Paths.image(pixelShitPart1 + 'combo' + pixelShitPart2));
			comboSpr.screenCenter();
			comboSpr.x = Settings.comboSprPos[0];
			comboSpr.y = Settings.comboSprPos[1];
			comboSpr.acceleration.y = 600;
			comboSpr.velocity.y -= 150;
			comboSpr.velocity.x += FlxG.random.int(1, 10);
			comboSpr.updateHitbox();
		}
=======
		var comboSpr:FlxSprite = new FlxSprite().loadGraphic(Paths.image(pixelShitPart1 + 'combo' + pixelShitPart2));
		comboSpr.screenCenter();
		comboSpr.x = rating.x + 150;
		comboSpr.y = rating.y + 75;
		comboSpr.acceleration.y = 600;
		comboSpr.velocity.y -= 150;
>>>>>>> upstream

		if (comboBreak)
		{
			comboSpr1 = new FlxSprite().loadGraphic(Paths.image(pixelShitPart1 + 'comboBreak1' + pixelShitPart2));
			comboSpr1.screenCenter();
			comboSpr1.x = rating.x + 150;
			comboSpr1.y = rating.y + 75;
			comboSpr1.acceleration.y = 600;
			comboSpr1.angularAcceleration = FlxG.random.int(-100, -50);
			comboSpr1.velocity.y -= 150;

			comboSpr2 = new FlxSprite().loadGraphic(Paths.image(pixelShitPart1 + 'comboBreak2' + pixelShitPart2));
			comboSpr2.screenCenter();
			comboSpr2.x = rating.x + 150;
			comboSpr2.y = rating.y + 75;
			comboSpr2.acceleration.y = 600;
			comboSpr2.angularAcceleration = FlxG.random.int(50, 100);
			comboSpr2.velocity.y -= 150;

			if (SONG.noteStyle != "pixel")
			{
<<<<<<< HEAD
				comboSpr1.setGraphicSize(Std.int(comboSpr1.width * 0.7));
				comboSpr1.antialiasing = true;

				comboSpr2.setGraphicSize(Std.int(comboSpr2.width * 0.7));
=======
				comboSpr1.setGraphicSize(Std.int(comboSpr.width * 0.7));
				comboSpr1.antialiasing = true;

				comboSpr2.setGraphicSize(Std.int(comboSpr.width * 0.7));
>>>>>>> upstream
				comboSpr2.antialiasing = true;
			}
			else
			{
<<<<<<< HEAD
				comboSpr1.setGraphicSize(Std.int(comboSpr1.width * daPixelZoom * 0.7));
				comboSpr2.setGraphicSize(Std.int(comboSpr2.width * daPixelZoom * 0.7));
=======
				comboSpr1.setGraphicSize(Std.int(comboSpr.width * daPixelZoom * 0.7));
				comboSpr2.setGraphicSize(Std.int(comboSpr.width * daPixelZoom * 0.7));
>>>>>>> upstream
			}

			comboSpr1.updateHitbox();
			comboSpr2.updateHitbox();
		}

<<<<<<< HEAD
=======
		comboSpr.velocity.x += FlxG.random.int(1, 10);
		comboSpr.updateHitbox();

>>>>>>> upstream
		add(rating);

		if (Settings.stationaryRatings)
			rating.cameras = [camHUD];

		if (SONG.noteStyle != "pixel")
		{
			rating.setGraphicSize(Std.int(rating.width * 0.7));
			rating.antialiasing = true;
<<<<<<< HEAD

			if (combo % 100 == 0 && combo > 0)
			{
				comboSpr.setGraphicSize(Std.int(comboSpr.width * 0.7));
				comboSpr.antialiasing = true;
			}
=======
			comboSpr.setGraphicSize(Std.int(comboSpr.width * 0.7));
			comboSpr.antialiasing = true;
>>>>>>> upstream
		}
		else
		{
			rating.setGraphicSize(Std.int(rating.width * daPixelZoom * 0.7));
<<<<<<< HEAD

			if (combo % 100 == 0 && combo > 0)
				comboSpr.setGraphicSize(Std.int(comboSpr.width * daPixelZoom * 0.7));
=======
			comboSpr.setGraphicSize(Std.int(comboSpr.width * daPixelZoom * 0.7));
>>>>>>> upstream
		}

		rating.updateHitbox();
		rating.x = Settings.ratingPos[0];
		rating.y = Settings.ratingPos[1];

		if (comboBreak)
		{
<<<<<<< HEAD
			comboSpr1.x = Settings.comboSprPos[0];
			comboSpr1.y = Settings.comboSprPos[1];

			comboSpr2.x = Settings.comboSprPos[0];
			comboSpr2.y = Settings.comboSprPos[1];
			
=======
>>>>>>> upstream
			add(comboSpr1);
			add(comboSpr2);

			if (Settings.stationaryRatings)
			{
				comboSpr1.cameras = [camHUD];
				comboSpr2.cameras = [camHUD];
			}
		}
<<<<<<< HEAD
		else
		{
			if (combo % 100 == 0 && combo > 0)
			{
				comboSpr.updateHitbox();

				comboSpr.x = Settings.comboSprPos[0];
				comboSpr.y = Settings.comboSprPos[1];

				add(comboSpr);

				if (Settings.stationaryRatings)
					comboSpr.cameras = [camHUD];
			}
		}

		var count:Count = null;

		if (combo > 5 || comboBreak)
		{
			count = new Count(Settings.comboPos[0], Settings.comboPos[1], Std.string(combo), Settings.stationaryRatings, PlayState.SONG.noteStyle == "pixel");
=======

		var count:Count = null;

		if (combo > 9 || comboBreak)
		{
			count = new Count(Settings.comboPos[0], Settings.comboPos[1], Std.string(combo), Settings.stationaryRatings);
>>>>>>> upstream
			add(count);
			count.disconnect();

			if (Settings.stationaryRatings)
				count.cameras = [camHUD];
		}

		FlxTween.tween(rating, {alpha: 0}, 0.2, {
			onComplete: function(tween:FlxTween)
			{
				rating.destroy();
			},
			startDelay: Conductor.crochet * 0.001
		});

		if (comboBreak)
		{
			FlxTween.tween(comboSpr1, {alpha: 0}, 0.2, {
				onComplete: function(tween:FlxTween)
				{
					comboSpr1.destroy();
				},
				startDelay: Conductor.crochet * 0.001
			});

			FlxTween.tween(comboSpr2, {alpha: 0}, 0.2, {
				onComplete: function(tween:FlxTween)
				{
					comboSpr2.destroy();
				},
				startDelay: Conductor.crochet * 0.001
			});
		}
<<<<<<< HEAD

		if (combo % 100 == 0 && combo > 0)
		{
			FlxTween.tween(comboSpr, {alpha: 0}, 0.2, {
				onComplete: function(tween:FlxTween)
				{
					comboSpr.destroy();
				},
				startDelay: Conductor.crochet * 0.001
			});
		}
	}

	function noteShit(?atTime:Null<Float>):Void // put it here because it was kinda cloggin up update
	{
		if (atTime == null)
			atTime = Conductor.songPosition;
		
		if (unspawnNotes[0] != null)
		{
			if (unspawnNotes[0].strumTime - atTime < 3500 / Math.abs(globalScrollSpeed))
			{
				var dunceNote:Note = unspawnNotes[0];
				dunceNote.reset(0, -2000);
				notes.add(dunceNote);

				if (dunceNote.isSustainNote)
					displaySustains.add(dunceNote);
				else
					displayNotes.add(dunceNote);

				var index:Int = unspawnNotes.indexOf(dunceNote);
				unspawnNotes.splice(index, 1);
			}
		}

		if (generatedMusic && !inCutscene)
		{
			notes.forEachAlive(function(daNote:Note)
			{
				var noteY = (daNote.mustPress ? playerStrums.members[daNote.noteData].y : strumLineNotes.members[daNote.noteData].y);

				if (daNote.downscroll)
				{
					if (daNote.positionLockY)
						daNote.y = (noteY + (atTime - daNote.strumTime) * (0.45 * daNote.scrollMultiplier * FlxMath.roundDecimal(Math.abs(globalScrollSpeed), 2)));

					if (daNote.isSustainNote)
					{
						if (daNote.animation.curAnim.name.endsWith('end') && daNote.prevNote != null && daNote.positionLockY)
							daNote.y = (noteY
								+ (SONG.noteStyle == 'pixel' ? 0 : 1.5)
								+ (atTime - daNote.prevNote.strumTime) * (0.45 * daNote.scrollMultiplier * FlxMath.roundDecimal(Math.abs(globalScrollSpeed), 2)))
								- daNote.height;

						if (((!daNote.mustPress && !daNote.canMiss) || daNote.wasGoodHit || daNote.prevNote.wasGoodHit && daNote.canBeHit)
							&& daNote.y - daNote.offset.y * daNote.scale.y + daNote.height >= (noteY - Note.swagWidth / 2))
						{
							var swagRect = new FlxRect(0, 0, daNote.frameWidth * 2, daNote.frameHeight * 2);
							swagRect.height = (noteY + Note.swagWidth / 2 - daNote.y) / daNote.scale.y;
							swagRect.y = daNote.frameHeight - swagRect.height;

							daNote.clipRect = swagRect;
						}
					}
				}
				else
				{
					if (daNote.positionLockY)
						daNote.y = (noteY - (atTime - daNote.strumTime) * (0.45 * daNote.scrollMultiplier * FlxMath.roundDecimal(Math.abs(globalScrollSpeed), 2)));

					if (daNote.isSustainNote)
					{
						if (daNote.animation.curAnim.name.endsWith('end') && daNote.prevNote != null && daNote.positionLockY)
							daNote.y = (noteY
								- (SONG.noteStyle == 'pixel' ? 0 : 1.5)
								- (atTime - daNote.prevNote.strumTime) * (0.45 * daNote.scrollMultiplier * FlxMath.roundDecimal(Math.abs(globalScrollSpeed), 2)))
								+ daNote.prevNote.height;

						if (((!daNote.mustPress && !daNote.canMiss) || daNote.wasGoodHit || daNote.prevNote.wasGoodHit && daNote.canBeHit)
							&& daNote.y + daNote.offset.y * daNote.scale.y <= (noteY + Note.swagWidth / 2))
						{
							var swagRect = new FlxRect(0, 0, daNote.width / daNote.scale.x, daNote.height / daNote.scale.y);
							swagRect.y = (noteY + Note.swagWidth / 2 - daNote.y) / daNote.scale.y;
							swagRect.height -= swagRect.y;

							daNote.clipRect = swagRect;
						}
					}
				}

				// botplay code
				if (daNote.mustPress && Settings.botplay)
				{
					if (daNote.canBeHit)
					{
						if (daNote.strumTime <= atTime && !daNote.canMiss)
							goodNoteHit(daNote);
					}
				}

				// opponent note hitting
				if (!daNote.mustPress && !daNote.canMiss && !daNote.wasGoodHit && daNote.strumTime <= atTime)
				{
					camZooming = true;

					var altAnim:Bool = daNote.altAnim;

					if (SONG.notes[Math.floor(curStep / 16)] != null)
					{
						if (SONG.notes[Math.floor(curStep / 16)].altAnim && !daNote.altAnim)
							altAnim = true;
					}

					var noAnim:Bool = daNote.noAnim;

					if (SONG.notes[Math.floor(curStep / 16)] != null)
					{
						if (SONG.notes[Math.floor(curStep / 16)].noAnim && !daNote.noAnim)
							noAnim = true;
					}

					if (!noAnim)
					{
						if (!daNote.wasEnemyNote)
							sing(boyfriend, daNote.noteData, altAnim);
						else
							sing(dad, daNote.noteData, altAnim);
					}

					lightStrumNote(cpuStrums, daNote.noteData);

					if (daNote.noteType != "hopeEngine/normal")
					{
						if (loadedNoteTypeInterps.exists(daNote.noteType))
						{
							if (loadedNoteTypeInterps.get(daNote.noteType).variables.get("dadNoteHit") != null)
								loadedNoteTypeInterps.get(daNote.noteType).variables.get("dadNoteHit")(daNote);
						}
					}

					daNote.wasGoodHit = true;

					if (SONG.needsVoices)
						vocals.volume = 1;

					if (Settings.difficultyVocals && storyDifficulty < 2)
						vocals.fadeOut((Conductor.stepCrochet / 1000), 1, function(_)
						{
							vocals.volume = 0;
						});

					if (executeModchart)
					{
						if (interp.variables.get("oppoNoteHit") != null)
							interp.variables.get("oppoNoteHit")(daNote);
					}

					daNote.active = false;

					if (!daNote.isSustainNote)
					{
						daNote.kill();
						notes.remove(daNote, true);
						remove(daNote, true);
						daNote.destroy();
					}
				}

				if (!daNote.wasGoodHit)
				{
					if (daNote.mustPress)
					{
						var strum = playerStrums.members[daNote.noteData];
						
						if (daNote.visibleLock)
							daNote.visible = strum.visible;
	
						if (daNote.positionLockX)
							daNote.x = strum.x;

						if (daNote.scaleLockX)
							daNote.scale.x = strum.scale.x * daNote.setScale;
	
						if (!daNote.isSustainNote)
						{
							if (daNote.angleLock)
							{
								if (!daNote.upSpriteOnly)
									daNote.angle = strum.angle;
								else
									daNote.angle = Note.noteAngles[daNote.noteData] + strum.angle;
							}

							if (daNote.scaleLockY)
								daNote.scale.y = strum.scale.y * daNote.setScale;
	
							if (daNote.alphaLock)
								daNote.alpha = strum.alpha;
						}
						else
						{
							if (daNote.alphaLock)
								daNote.alpha = 0.6 * strum.alpha;

							if (daNote.scaleLockY)
							{
								debugPrint("Sustain/hold notes can't have their Y-scale locked. Sorry!");
								daNote.scaleLockY = false;
							}
						}
					}
					else
					{
						var strum = cpuStrums.members[daNote.noteData];

						if (daNote.visibleLock)
							daNote.visible = strum.visible;
	
						if (daNote.positionLockX)
							daNote.x = strum.x;

						if (daNote.scaleLockX)
							daNote.scale.x = strum.scale.x * daNote.setScale;
	
						if (!daNote.isSustainNote)
						{
							if (daNote.angleLock)
							{
								if (!daNote.upSpriteOnly)
									daNote.angle = strum.angle;
								else
									daNote.angle = Note.noteAngles[daNote.noteData] + strum.angle;
							}

							if (daNote.scaleLockY)
								daNote.scale.y = strum.scale.y * daNote.setScale;
	
							if (daNote.alphaLock)
								daNote.alpha = strum.alpha;
						}
						else
						{
							if (daNote.alphaLock)
								daNote.alpha = 0.6 * strum.alpha;

							if (daNote.scaleLockY)
							{
								debugPrint("Sustain/hold notes can't have their Y-scale locked. Sorry!");
								daNote.scaleLockY = false;
							}
						}
					}
				}

				// put the sustains in the middle so that it looks cool

				if (daNote.mustPress && daNote.isSustainNote && daNote.positionLockX)
					daNote.x = playerStrums.members[daNote.noteData].x + (playerStrums.members[daNote.noteData].staticWidth / 2) - (daNote.width / 2);
				else if (!daNote.mustPress && daNote.isSustainNote && daNote.positionLockX)
					daNote.x = cpuStrums.members[daNote.noteData].x + (cpuStrums.members[daNote.noteData].staticWidth / 2) - (daNote.width / 2);

				// WIP interpolation shit? Need to fix the pause issue
				// daNote.y = (strumLine.y - (songTime - daNote.strumTime) * (0.45 * PlayState.SONG.speed));

				if (daNote.mustPress && daNote.tooLate && !daNote.wasGoodHit && daNote.rating != "miss")
				{
					if (!daNote.canMiss)
					{
						health -= 0.075;
						vocals.volume = 0;
						noteMiss(daNote.noteData, daNote);
					}

					daNote.rating = "miss";

					if (daNote.noteType != "hopeEngine/normal")
					{
						if (loadedNoteTypeInterps.exists(daNote.noteType))
						{
							if (loadedNoteTypeInterps.get(daNote.noteType).variables.get("onNoteMiss") != null)
								loadedNoteTypeInterps.get(daNote.noteType).variables.get("onNoteMiss")(daNote);
						}
					}

					if (executeModchart)
					{
						if (interp.variables.get("noteMiss") != null)
							interp.variables.get("noteMiss")(daNote);
					}
				}

				if ((daNote.tooLate && !daNote.wasGoodHit) || (daNote.isSustainNote && daNote.wasGoodHit))
				{
					if (!Settings.downscroll)
					{
						if (daNote.y + daNote.frameHeight + 10 < 0)
						{
							daNote.kill();
							notes.remove(daNote, true);
							remove(daNote, true);
							daNote.destroy();
						}
					}
					else
					{
						if (daNote.y - 10 > FlxG.height)
						{
							daNote.kill();
							notes.remove(daNote, true);
							remove(daNote, true);
							daNote.destroy();
						}
					}
				}
			});

			for (note in speakerNotes)
			{
				if (note.strumTime > atTime)
					continue;
				else
				{
					if (note.strumTime <= atTime && !note.wasGoodHit)
					{
						note.wasGoodHit = true;
						sing(gf, note.noteData);
						
						if (note.noteType != "hopeEngine/normal")
						{
							if (loadedNoteTypeInterps.exists(note.noteType))
							{
								if (loadedNoteTypeInterps.get(note.noteType).variables.get("gfNoteHit") != null)
									loadedNoteTypeInterps.get(note.noteType).variables.get("gfNoteHit")(note);
							}
						}

						if (executeModchart)
						{
							if (interp.variables.get("speakerNoteHit") != null)
								interp.variables.get("speakerNoteHit")(note);
						}

						note.kill();
						note.destroy();
					}
				}
			}
		}

		/*
		if (keyDisplays != null)
		{
			keyDisplays.x = playerStrums.x + ((Note.swagWidth * 4) / 2) - (keyDisplays.width / 2);
		
			if (Settings.downscroll)
				keyDisplays.y = strumLine.y - (Note.swagWidth / 2) - keyDisplays.height;
			else
				keyDisplays.y = strumLine.y + (Note.swagWidth / 2);
		}
		*/
=======
>>>>>>> upstream
	}

	private function keyShit():Void // I've invested in emma stocks
	{
		// control arrays, order L D U R
		var holdArray:Array<Bool> = [controls.LEFT, controls.DOWN, controls.UP, controls.RIGHT];
		var pressArray:Array<Bool> = [controls.LEFT_P, controls.DOWN_P, controls.UP_P, controls.RIGHT_P];
		var releaseArray:Array<Bool> = [controls.LEFT_R, controls.DOWN_R, controls.UP_R, controls.RIGHT_R];

		// Prevent player input if botplay is on
		if (Settings.botplay)
		{
			holdArray = [false, false, false, false];
			pressArray = [false, false, false, false];
			releaseArray = [false, false, false, false];
		}

		// HOLDS, check for sustain notes
		if (holdArray.contains(true) && !boyfriend.stunned && generatedMusic)
		{
			notes.forEachAlive(function(daNote:Note)
			{
				if (daNote.isSustainNote && daNote.canBeHit && daNote.mustPress && holdArray[daNote.noteData])
					goodNoteHit(daNote);
			});
		}

<<<<<<< HEAD
		if (Settings.hitsoundVolume > 0)
		{
			for (key in pressArray)
			{
				if (key)
					FlxG.sound.play(Paths.sound("hitsounds/" + ["Tick", "Snap", "Clap"][Settings.hitsoundType], "shared"), Settings.hitsoundVolume / 100);
			}
		}

=======
>>>>>>> upstream
		// PRESSES, check for note hits
		if (pressArray.contains(true) && !boyfriend.stunned && generatedMusic)
		{
			var possibleNotes:Array<Note> = []; // notes that can be hit
			var directionList:Array<Int> = []; // directions that can be hit
			var dumbNotes:Array<Note> = []; // notes to kill later
			var directionsAccounted:Array<Bool> = [false, false, false, false]; // we don't want to do judgments for more than one presses

			notes.forEachAlive(function(daNote:Note)
			{
				if (daNote.canBeHit && daNote.mustPress && !daNote.tooLate && !daNote.wasGoodHit)
				{
					if (!directionsAccounted[daNote.noteData])
					{
						if (directionList.contains(daNote.noteData))
						{
							directionsAccounted[daNote.noteData] = true;
							for (coolNote in possibleNotes)
							{
								if (coolNote.noteData == daNote.noteData && Math.abs(daNote.strumTime - coolNote.strumTime) < 10)
								{ // if it's the same note twice at < 10ms distance, just delete it
									// EXCEPT u cant delete it in this loop cuz it fucks with the collection lol
									dumbNotes.push(daNote);
									break;
								}
								else if (coolNote.noteData == daNote.noteData && daNote.strumTime < coolNote.strumTime)
								{ // if daNote is earlier than existing note (coolNote), replace
									possibleNotes.remove(coolNote);
									possibleNotes.push(daNote);
									break;
								}
							}
						}
						else
						{
							possibleNotes.push(daNote);
							directionList.push(daNote.noteData);
						}
					}
				}
			});

			for (note in dumbNotes)
			{
				FlxG.log.add("killing dumb ass note at " + note.strumTime);
				note.kill();
				notes.remove(note, true);
				remove(note, true);
				note.destroy();
			}

			possibleNotes.sort((a, b) -> Std.int(a.strumTime - b.strumTime));

			var dontCheck = false;

<<<<<<< HEAD
			if (Modifiers.modifiers['kade_judge'])
			{
				for (i in 0...pressArray.length)
				{
					if (pressArray[i] && !directionList.contains(i))
						dontCheck = true;
				}
=======
			for (i in 0...pressArray.length)
			{
				if (pressArray[i] && !directionList.contains(i))
					dontCheck = true;
>>>>>>> upstream
			}

			if (perfectMode)
				goodNoteHit(possibleNotes[0]);
			else if (possibleNotes.length > 0 && !dontCheck)
			{
				if (!Settings.ghostTapping)
				{
					for (shit in 0...pressArray.length)
					{ // if a direction is hit that shouldn't be
						if (pressArray[shit] && !directionList.contains(shit))
							noteMiss(shit, null);
					}
				}

				for (coolNote in possibleNotes)
				{
					if (pressArray[coolNote.noteData])
					{
						if (mashViolations != 0)
							mashViolations--;
						scoreTxt.color = FlxColor.WHITE;
						goodNoteHit(coolNote);
					}
				}
			}
			else if (!Settings.ghostTapping)
			{
				for (shit in 0...pressArray.length)
					if (pressArray[shit])
						noteMiss(shit, null);
			}

			if (dontCheck && possibleNotes.length > 0 && Settings.ghostTapping && !Settings.botplay)
			{
				if (mashViolations > 8)
				{
					trace('mash violations ' + mashViolations);
					scoreTxt.color = FlxColor.RED;
					noteMiss(0, null);
				}
				else
					mashViolations++;
			}
		}

		if (boyfriend.holdTimer > Conductor.stepCrochet * 4 * 0.001 && (!holdArray.contains(true) || Settings.botplay))
		{
			if (boyfriend.animation.curAnim.name.startsWith('sing') && !boyfriend.animation.curAnim.name.endsWith('miss'))
				boyfriend.playAnim('idle');
		}

		playerStrums.forEach(function(spr:StaticArrow)
		{
			if (pressArray[spr.ID] && spr.animation.curAnim.name != 'confirm')
				spr.playAnim('pressed');

			if (!holdArray[spr.ID] && !Settings.botplay)
				spr.playAnim('static');

			if (spr.animation.finished && Settings.botplay)
				spr.playAnim('static');
		});
	}

	function noteMiss(direction:Int = 1, daNote:Note):Void
	{
		if (!boyfriend.stunned)
		{
			health -= 0.04;
			if (combo > 5 && gf.animOffsets.exists('sad'))
				gf.playAnim('sad');

<<<<<<< HEAD
			var comboBreak = combo > 5;
=======
			var brokenCombo = (combo > 0 ? true : false);
>>>>>>> upstream

			combo = 0;
			misses++;

			if (daNote != null)
			{
				daNote.rating = "miss";
<<<<<<< HEAD
				popUpScore(daNote, comboBreak);
=======
				popUpScore(daNote, brokenCombo);
>>>>>>> upstream
			}

			if (Settings.accuracyMode == 1)
				totalNotesHit -= 1;

			songScore -= 10;

			FlxG.sound.play(Paths.soundRandom('missnote', 1, 3), 0.4);
<<<<<<< HEAD
			vocals.volume = 0;

			if (daNote != null && !daNote.noAnim)
=======

			if (daNote != null)
>>>>>>> upstream
			{
				if (daNote.wasEnemyNote)
					miss(dad, direction);
				else
					miss(boyfriend, direction);
			}
			else
				miss(boyfriend, direction);

			updateAccuracy();
		}
	}

	function updateAccuracy()
	{
		totalPlayed += 1;
		accuracy = Math.max(0.00, totalNotesHit / totalPlayed * 100);
		accuracyDefault = Math.max(0.00, totalNotesHitDefault / totalPlayed * 100);
	}

	function getKeyPresses(note:Note):Int
	{
		var possibleNotes:Array<Note> = []; // copypasted but you already know that

		notes.forEachAlive(function(daNote:Note)
		{
			if (daNote.canBeHit && daNote.mustPress && !daNote.tooLate)
			{
				possibleNotes.push(daNote);
				possibleNotes.sort((a, b) -> Std.int(a.strumTime - b.strumTime));
			}
		});
		if (possibleNotes.length == 1)
			return possibleNotes.length + 1;
		return possibleNotes.length;
	}

	var mashing:Int = 0;
	var mashViolations:Int = 0;

	var etternaModeScore:Int = 0;

	function noteCheck(controlArray:Array<Bool>, note:Note):Void // sorry lol
	{
<<<<<<< HEAD
		var noteDiff = -(note.strumTime - Conductor.songPosition);
=======
		var noteDiff = (note.strumTime - Conductor.songPosition);
>>>>>>> upstream
		note.rating = Ratings.CalculateRating(noteDiff);

		if (controlArray[note.noteData])
			goodNoteHit(note, (mashing > getKeyPresses(note)));
	}

	function goodNoteHit(note:Note, resetMashViolation = true):Void
	{
<<<<<<< HEAD
		camZooming = true;
		
		if (mashing != 0)
			mashing = 0;

		var altAnim:Bool = note.altAnim;
=======
		if (mashing != 0)
			mashing = 0;

		var altAnim:Bool = false;
>>>>>>> upstream

		if (SONG.notes[Math.floor(curStep / 16)] != null)
		{
			if (SONG.notes[Math.floor(curStep / 16)].altAnim)
				altAnim = true;
		}

<<<<<<< HEAD
		var noAnim:Bool = false;

		if (SONG.notes[Math.floor(curStep / 16)] != null)
		{
			if (SONG.notes[Math.floor(curStep / 16)].noAnim)
				noAnim = true;
		}

		noAnim = note.noAnim && !altAnim;

		var noteDiff = -(note.strumTime - Conductor.songPosition);

		if (Settings.botplay)
			noteDiff = botplayLockShit(noteDiff);

		note.rating = Ratings.CalculateRating(noteDiff);

		if (Settings.consistencyBar)
		{
			if (!note.isSustainNote)
				consistencyBar.move(noteDiff);
			
			consistencyBar.noteHit();
		}

		Modifiers.noteHit(note);

		if (note.rating == "sick" && Settings.noteSplashes && !note.isSustainNote && !note.noNoteSplash)
		{
			var splash:NoteSplash = splashes.recycle(NoteSplash);
			splash.skin = noteSplashAtlas;

			var strumNote = playerStrums.members[note.noteData];
			splash.strumNote = strumNote;
			splash.antialiasing = true;
			splash.actualAlpha = 0.6;
=======
		var noteDiff = (note.strumTime - Conductor.songPosition);
		note.rating = Ratings.CalculateRating(noteDiff);

		var splash:NoteSplash = null;

		if (note.rating == "sick" && Settings.noteSplashes && !note.isSustainNote)
		{
			splash = new NoteSplash(note.noteData, noteSplashAtlas);

			var strumNote = playerStrums.members[note.noteData];
			splash.antialiasing = true;
			splash.alpha = 0.6;
>>>>>>> upstream

			if (SONG.noteStyle == "pixel")
			{
				// the pixel splash asset is just the normal splash asset but divided by 6
				splash.setGraphicSize(Std.int(splash.width * daPixelZoom));
				splash.updateHitbox();
				splash.antialiasing = false;
<<<<<<< HEAD
			}

			splash.angle = strumNote.angle;
			splash.alpha = strumNote.alpha * splash.actualAlpha;

=======
				splash.alpha = 0.4;
			}

>>>>>>> upstream
			splash.x = strumNote.x + (strumNote.staticWidth / 2) - (splash.width / 2);
			splash.y = strumNote.y + (strumNote.staticHeight / 2) - (splash.height / 2);

			splashes.add(splash);
<<<<<<< HEAD

			splash.splash(note.noteData);
=======
>>>>>>> upstream
		}

		// add newest note to front of notesHitArray
		// the oldest notes are at the end and are removed first
		if (!note.isSustainNote)
			notesHitArray.unshift(Date.now());

		if (!resetMashViolation && mashViolations >= 1)
			mashViolations--;

		if (mashViolations < 0)
			mashViolations = 0;

		if (!note.wasGoodHit)
		{
			if (note.noteType != "hopeEngine/normal")
			{
				if (loadedNoteTypeInterps.exists(note.noteType))
				{
					if (loadedNoteTypeInterps.get(note.noteType).variables.get("onNoteHit") != null)
						loadedNoteTypeInterps.get(note.noteType).variables.get("onNoteHit")(note);
				}
			}

			if (!note.isSustainNote)
			{
				combo += 1;
				popUpScore(note);
			}
			else
			{
				totalNotesHit += 1;
				health += 0.023;
			}

<<<<<<< HEAD
			if (!noAnim)
			{
				if (note.wasEnemyNote)
					sing(dad, note.noteData, altAnim);
				else
					sing(boyfriend, note.noteData, altAnim);
			}
=======
			if (note.wasEnemyNote)
				sing(dad, note.noteData, altAnim);
			else
				sing(boyfriend, note.noteData, altAnim);
>>>>>>> upstream

			lightStrumNote(playerStrums, note.noteData);

			note.wasGoodHit = true;

			if (SONG.needsVoices)
				vocals.volume = 1;

<<<<<<< HEAD
			if (Settings.difficultyVocals && storyDifficulty < 2)
				vocals.fadeOut((Conductor.stepCrochet / 1000), 1, function(_)
=======
			if (Settings.difficultyVocals)
				vocals.fadeOut((Conductor.stepCrochet / 1000) * boyfriend.singDuration, 1, function(_)
>>>>>>> upstream
				{
					vocals.volume = 0;
				});

			if (executeModchart)
			{
				if (interp.variables.get("goodNoteHit") != null)
					interp.variables.get("goodNoteHit")(note);
			}

			note.active = false;

			if (!note.isSustainNote)
			{
				note.kill();
				notes.remove(note, true);
				remove(note, true);
				note.destroy();
			}

			updateAccuracy();
		}
	}

<<<<<<< HEAD
	var lockType:Int = 0;

	function botplayLockShit(diff:Float):Float
	{
		switch (lockType)
		{
			case 1:
				return FlxG.random.float(-45, 45);
			case 2:
				return FlxG.random.bool() ? FlxG.random.float(-90, -45) : FlxG.random.float(45, 90);
			case 3:
				return FlxG.random.bool() ? FlxG.random.float(-135, -90) : FlxG.random.float(90, 135);
			case 4:
				return FlxG.random.bool() ? FlxG.random.float(-166, -135) : FlxG.random.float(135, 166);
			default:
				return diff;
		}
	}
	 
	/// mp4 bullshit starts here
	#if VIDEOS_ALLOWED
	function playVideo(name:String, ?library:String = null, ?isCutscene:Bool = true)
	{
		this.inCutscene = isCutscene;
=======
	/// mp4 bullshit starts here
	#if VIDEOS_ALLOWED
	function playVideo(name:String, ?isCutscene:Bool = true)
	{
		inCutscene = isCutscene;
>>>>>>> upstream

		// patch for mid-song videos
		if (isCutscene && songStarted)
		{
			persistentUpdate = false;
			persistentDraw = true;
			paused = true;

			var ass = new WarningSubstate("You're seeing this\nbecause the video fucked up.\n\nLook away!");
<<<<<<< HEAD
			ass.cameras = [camMisc];
			openSubState(ass);
		}

		var video:VideoHandler = new VideoHandler();
=======
			ass.cameras = [camHUD];
			openSubState(ass);
		}

		var video:MP4Handler = new MP4Handler();
>>>>>>> upstream
		video.finishCallback = function()
		{
			if (isCutscene && songStarted)
				closeSubState();

			inCutscene = false;
		}
<<<<<<< HEAD

		var path = Paths.video(name, library);

		if (library != null)
			path = path.replace(library + ":", "");
		
		video.playVideo(path);
=======
		
		video.playVideo(Paths.video(name));
>>>>>>> upstream
	}
	#end

	/// mp4 bullshit ends here
	var DIRECTIONS:Array<String> = ["LEFT", "DOWN", "UP", "RIGHT"];
	var CAMERA_CONSTANT:Float = 10;

<<<<<<< HEAD
	public function sing(character:Character, direction:Int, ?isAlt:Bool = false)
=======
	function sing(character:Character, direction:Int, ?isAlt:Bool = false)
>>>>>>> upstream
	{
		var canAlt = character.animation.getByName('sing' + DIRECTIONS[direction] + "-alt") != null;
		var alt:String = (isAlt && canAlt ? "-alt" : "");

<<<<<<< HEAD
		if (!character.specialAnim)
		{
			character.holdTimer = 0;
			character.playAnim('sing' + DIRECTIONS[direction] + alt, true);
		}
=======
		character.holdTimer = 0;
		character.playAnim('sing' + DIRECTIONS[direction] + alt, true);
>>>>>>> upstream

		if (whosFocused == character)
			moveCamera(direction);
	}

<<<<<<< HEAD
	public function miss(character:Character, direction:Int)
	{
		var canMiss = character.animation.getByName('sing' + DIRECTIONS[direction] + "miss") != null;

		if (canMiss && !character.specialAnim)
=======
	function miss(character:Character, direction:Int)
	{
		var canMiss = character.animation.getByName('sing' + DIRECTIONS[direction] + "miss") != null;

		if (canMiss)
>>>>>>> upstream
			character.playAnim('sing' + DIRECTIONS[direction] + 'miss', true);

		if (whosFocused == character)
			moveCamera(direction);
	}

<<<<<<< HEAD
	public function moveCamera(direction:Int)
=======
	function moveCamera(direction:Int)
>>>>>>> upstream
	{
		switch (direction)
		{
			case 0:
				cameraOffsetX = -CAMERA_CONSTANT * Settings.dynamicCamera;
				cameraOffsetY = 0;
			case 1:
				cameraOffsetX = 0;
				cameraOffsetY = CAMERA_CONSTANT * Settings.dynamicCamera;
			case 2:
				cameraOffsetX = 0;
				cameraOffsetY = -CAMERA_CONSTANT * Settings.dynamicCamera;
			case 3:
				cameraOffsetX = CAMERA_CONSTANT * Settings.dynamicCamera;
				cameraOffsetY = 0;
		}
	}

<<<<<<< HEAD
	public function lightStrumNote(strum:FlxTypedSpriteGroup<StaticArrow>, dir:Int)
=======
	function lightStrumNote(strum:FlxTypedSpriteGroup<StaticArrow>, dir:Int)
>>>>>>> upstream
	{
		strum.forEach(function(spr:StaticArrow)
		{
			if (dir == spr.ID)
				spr.playAnim('confirm', true);
		});
	}

<<<<<<< HEAD
	public function interpVariables(funnyInterp:Interp):Void
	{
		ScriptEssentials.imports(funnyInterp);
=======
	function interpVariables(funnyInterp:Interp):Void
	{
		// imports
		funnyInterp.variables.set("BackgroundDancer", BackgroundDancer);
		funnyInterp.variables.set("BackgroundGirls", BackgroundGirls);
		funnyInterp.variables.set("FlxAtlasFrames", FlxAtlasFrames);
		funnyInterp.variables.set("FlxTypedGroup", FlxTypedGroup);
		funnyInterp.variables.set("Achievements", Achievements);
		funnyInterp.variables.set("FlxBackdrop", FlxBackdrop);
		funnyInterp.variables.set("StringTools", StringTools);
		funnyInterp.variables.set("FlxSprite", FlxSprite);
		funnyInterp.variables.set("Character", Character);
		funnyInterp.variables.set("FlxRandom", FlxRandom);
		funnyInterp.variables.set("FlxTween", FlxTween);
		funnyInterp.variables.set("FlxTimer", FlxTimer);
		funnyInterp.variables.set("FlxSound", FlxSound);
		funnyInterp.variables.set("FlxMath", FlxMath);
		funnyInterp.variables.set("FlxEase", FlxEase);
		funnyInterp.variables.set("FlxText", FlxText);
		funnyInterp.variables.set("Ratings", Ratings);
		funnyInterp.variables.set("Paths", Paths);
		funnyInterp.variables.set("Count", Count);
		funnyInterp.variables.set("Math", Math);
		funnyInterp.variables.set("Note", Note);
		funnyInterp.variables.set("FlxG", FlxG);
		funnyInterp.variables.set("Std", Std);
		funnyInterp.variables.set("Lib", Lib);

		// state funcs
		funnyInterp.variables.set("add", add);
		funnyInterp.variables.set("remove", remove);
>>>>>>> upstream

		// characters
		funnyInterp.variables.set("boyfriend", boyfriend);
		funnyInterp.variables.set("dad", dad);
		funnyInterp.variables.set("gf", gf);

<<<<<<< HEAD
=======
		// other shit
		funnyInterp.variables.set("MCFuncs", ModchartFunctions);

>>>>>>> upstream
		// note shit
		funnyInterp.variables.set("strumLineNotes", strumLineNotes);
		funnyInterp.variables.set("playerStrums", playerStrums);
		funnyInterp.variables.set("cpuStrums", cpuStrums);
		funnyInterp.variables.set("notes", notes);
		funnyInterp.variables.set("unspawnNotes", unspawnNotes);
<<<<<<< HEAD
		funnyInterp.variables.set("speakerNotes", speakerNotes);
		funnyInterp.variables.set("displayNotes", displayNotes);
		funnyInterp.variables.set("displaySustains", displaySustains);

		// modifier shit
		funnyInterp.variables.set("modifierMonochromes", modifierMonochromes);

=======
		funnyInterp.variables.set("displayNotes", displayNotes);
		funnyInterp.variables.set("displaySustains", displaySustains);

>>>>>>> upstream
		// ui
		funnyInterp.variables.set("healthBar", healthBar);
		funnyInterp.variables.set("strumLine", strumLine);
		funnyInterp.variables.set("healthBarBG", healthBarBG);
		funnyInterp.variables.set("iconP1", iconP1);
		funnyInterp.variables.set("iconP2", iconP2);
<<<<<<< HEAD
		funnyInterp.variables.set("songPosBG", songPosBG);
		funnyInterp.variables.set("songPosBar", songPosBar);
		funnyInterp.variables.set("songName", songName);
		funnyInterp.variables.set("consistencyBar", consistencyBar);
=======
>>>>>>> upstream

		// option stuff
		funnyInterp.variables.set("downscroll", Settings.downscroll);
		funnyInterp.variables.set("distractions", Settings.distractions);
		funnyInterp.variables.set("customNoteskin", Settings.noteSkin);

		// playstate
		funnyInterp.variables.set("difficulty", storyDifficulty);
		funnyInterp.variables.set("daPixelZoom", daPixelZoom);
		funnyInterp.variables.set("isStoryMode", isStoryMode);
		funnyInterp.variables.set("isHalloween", isHalloween);
<<<<<<< HEAD
		funnyInterp.variables.set("generatedMusic", generatedMusic);
		funnyInterp.variables.set("startedCountdown", startedCountdown);
		funnyInterp.variables.set("defaultCamZoom", defaultCamZoom);
		funnyInterp.variables.set("globalScrollSpeed", globalScrollSpeed);
=======
		funnyInterp.variables.set("defaultCamZoom", defaultCamZoom);
>>>>>>> upstream
		funnyInterp.variables.set("health", health);
		funnyInterp.variables.set("PlayState", PlayState.instance);
		funnyInterp.variables.set("PlayStateClass", PlayState);
		funnyInterp.variables.set("getScore", function()
		{
			return songScore;
		});
		funnyInterp.variables.set("setScore", function(huh:Int)
		{
			songScore = huh;
		});
<<<<<<< HEAD
=======
		funnyInterp.variables.set("noteMiss", noteMiss);
		funnyInterp.variables.set("goodNoteHit", goodNoteHit);
>>>>>>> upstream

		// mp4 videos!!!!
		#if VIDEOS_ALLOWED
		funnyInterp.variables.set("playVideo", playVideo);
<<<<<<< HEAD
=======
		funnyInterp.variables.set("MP4Sprite", MP4Sprite); // i have no clue how this works
>>>>>>> upstream
		#end

		// cameras
		funnyInterp.variables.set("camHUD", camHUD);
		funnyInterp.variables.set("camGame", camGame);
		funnyInterp.variables.set("camMisc", camMisc);
		funnyInterp.variables.set("camFollow", camFollow);
<<<<<<< HEAD
		funnyInterp.variables.set("curCamPos", curCamPos);
=======
>>>>>>> upstream

		// song
		funnyInterp.variables.set("songPosition", Conductor.songPosition);
		funnyInterp.variables.set("song", SONG.song);
<<<<<<< HEAD
		funnyInterp.variables.set("songLowercase", Paths.toSongPath(SONG.song));
=======
		funnyInterp.variables.set("songLowercase", SONG.song.replace(" ", "-").trim().toLowerCase());
>>>>>>> upstream
		funnyInterp.variables.set("songData", SONG);
		funnyInterp.variables.set("SONG", SONG);
		funnyInterp.variables.set("bpm", Conductor.bpm);
		funnyInterp.variables.set("stepCrochet", Conductor.stepCrochet);
		funnyInterp.variables.set("crochet", Conductor.crochet);
		funnyInterp.variables.set("curStep", curStep);
		funnyInterp.variables.set("curBeat", curBeat);
		funnyInterp.variables.set("songStarted", songStarted);
<<<<<<< HEAD
	}

	function debugPrint(s:Dynamic)
		Main.console.add(s, PLAYSTATE);
=======

		// uhh fuckin idk???
		funnyInterp.variables.set("FlxColor", function(huh:String)
		{
			return FlxColor.colorLookup.get(huh);
		});
		funnyInterp.variables.set("debugPrint", debugPrint);
		funnyInterp.variables.set("Settings", Settings);
		funnyInterp.variables.set("FlxTextBorderStyle", {
			NONE: FlxTextBorderStyle.NONE,
			SHADOW: FlxTextBorderStyle.SHADOW,
			OUTLINE: FlxTextBorderStyle.OUTLINE,
			OUTLINE_FAST: FlxTextBorderStyle.OUTLINE_FAST
		});
		funnyInterp.variables.set("FlxTextAlign", {
			CENTER: FlxTextAlign.CENTER,
			LEFT: FlxTextAlign.LEFT,
			RIGHT: FlxTextAlign.RIGHT,
			JUSTIFY: FlxTextAlign.JUSTIFY
		});
		funnyInterp.variables.set("FlxAxes", {
			X: X,
			Y: Y,
			XY: XY,
		});
	}

	function debugPrint(s:Dynamic, ?errorTypeOrColor:String = "normal")
	{
		var now = Date.now();
		var time = (now.getHours() < 10 ? "0" + now.getHours() : now.getHours() + "")
			+ ":"
			+ (now.getMinutes() < 10 ? "0" + now.getMinutes() : now.getMinutes() + "")
			+ ":"
			+ (now.getSeconds() < 10 ? "0" + now.getSeconds() : now.getSeconds() + "");
		
		s = "[" + time + "] " + s;

		var color = 0xFFAD34FF;
		switch (errorTypeOrColor.toLowerCase())
		{
			case "error":
				color = FlxColor.RED;
			case "success":
				color = FlxColor.LIME;
			default:
				color = FlxColor.WHITE;

				if (FlxColor.fromString("#" + errorTypeOrColor) != null)
					color = FlxColor.fromString("#" + errorTypeOrColor);

				if (FlxColor.colorLookup.exists(errorTypeOrColor.toUpperCase()))
					color = FlxColor.colorLookup.get(errorTypeOrColor.toUpperCase());
		}

		var print = new FlxText(10, 0, 0, s);
		print.setFormat(Paths.font("vcr.ttf"), 20, color, LEFT, OUTLINE, FlxColor.BLACK);
		print.borderSize = 3;

		if (debugPrints.members[debugPrints.length - 1] != null)
		{
			var last = debugPrints.members[debugPrints.length - 1];
			print.y = last.y + last.height + 5;
		}
		else 
			print.y = FlxG.height / 2;

		debugPrints.add(print);

		if (print.y + print.height > FlxG.height)
		{
			debugPrints.remove(debugPrints.members[0], true).destroy();

			var prevItem:FlxText = null;

			for (item in debugPrints.members)
			{
				if (prevItem != null)
					item.y = prevItem.y + prevItem.height + 5;
				else
					item.y = FlxG.height / 2;
				
				prevItem = item;
			}
		}
	}
>>>>>>> upstream

	override function stepHit()
	{
		super.stepHit();

<<<<<<< HEAD
		Modifiers.stepHit(curStep);

=======
>>>>>>> upstream
		if (Math.abs(FlxG.sound.music.time - Conductor.songPosition) > 20
			|| Math.abs(vocals.time - Conductor.songPosition) > 20
			|| Math.abs(FlxG.sound.music.time - vocals.time) > 20)
			resyncVocals();

		if (songName != null)
		{
			if (songName.text != "")
			{
				switch (Settings.posBarType)
				{
					case 0:
						songName.text = SONG.song.toUpperCase() + " (" + FlxStringUtil.formatTime(Math.abs(Conductor.songPosition) / 1000) + ")";
					case 1:
<<<<<<< HEAD
						songName.text = SONG.song.toUpperCase()
							+ " ("
							+ FlxStringUtil.formatTime(Math.abs(FlxG.sound.music.length - Conductor.songPosition) / 1000)
							+ ")";
=======
						songName.text = SONG.song.toUpperCase() + " (" + FlxStringUtil.formatTime(Math.abs(FlxG.sound.music.length - Conductor.songPosition) / 1000) + ")";
>>>>>>> upstream
					case 2:
						songName.text = SONG.song.toUpperCase();
					case 3:
						songName.text = FlxStringUtil.formatTime(Math.abs(Conductor.songPosition) / 1000);
					case 4:
						songName.text = FlxStringUtil.formatTime(Math.abs(FlxG.sound.music.length - Conductor.songPosition) / 1000);
					case 5:
						songName.text = "";
				}
			}
		}

		if (stageInterp.variables.get("stepHit") != null)
			stageInterp.variables.get("stepHit")(curStep);

<<<<<<< HEAD
		for (type => int in loadedNoteTypeInterps)
		{
			if (int.variables.get("stepHit") != null)
				int.variables.get("stepHit")(curStep);
		}

=======
>>>>>>> upstream
		if (executeModchart)
		{
			if (interp.variables.get("stepHit") != null)
				interp.variables.get("stepHit")(curStep);
		}

		#if desktop
		songLength = FlxG.sound.music.length;
<<<<<<< HEAD
		DiscordClient.changePresence(rpcPlaying, rpcLocation, iconRPC, true, songLength - Conductor.songPosition);
		#end
	}

	public var iconBeatFactor:Float = 30;

	override function beatHit()
	{
		super.beatHit();
		Modifiers.beatHit(curBeat);
=======
		DiscordClient.changePresence(SONG.song + " (" + CoolUtil.difficultyFromInt(storyDifficulty) + ") ", null, iconRPC, true, songLength - Conductor.songPosition);
		#end
	}

	override function beatHit()
	{
		super.beatHit();
>>>>>>> upstream

		if (songRecording && canPause)
		{
			new FlxTimer().start(Conductor.crochet / 1000, function(tmr:FlxTimer)
			{
<<<<<<< HEAD
				daLogo.scale.set(0.85 * 0.5, 0.85 * 0.5);
				FlxTween.tween(daLogo, {"scale.x": 0.75 * 0.5, "scale.y": 0.75 * 0.5}, Conductor.crochet / 1500, {ease: FlxEase.quadOut});
=======
				daLogo.scale.set(0.85, 0.85);
				FlxTween.tween(daLogo, {"scale.x": 0.75, "scale.y": 0.75}, Conductor.crochet / 1500, {ease: FlxEase.quadOut});
>>>>>>> upstream
			});
		}

		if (stageInterp.variables.get("beatHit") != null)
			stageInterp.variables.get("beatHit")(curBeat);

<<<<<<< HEAD
		for (type => int in loadedNoteTypeInterps)
		{
			if (int.variables.get("beatHit") != null)
				int.variables.get("beatHit")(curBeat);
		}

=======
>>>>>>> upstream
		if (executeModchart)
		{
			if (interp.variables.get("beatHit") != null)
				interp.variables.get("beatHit")(curBeat);
		}

		if (generatedMusic)
			notes.sort(FlxSort.byY, (Settings.downscroll ? FlxSort.ASCENDING : FlxSort.DESCENDING));

		if (SONG.notes[Math.floor(curStep / 16)] != null)
		{
			if (SONG.notes[Math.floor(curStep / 16)].changeBPM)
			{
				Conductor.changeBPM(SONG.notes[Math.floor(curStep / 16)].bpm);
				FlxG.log.add('CHANGED BPM!');
			}
		}

		if (camZooming && FlxG.camera.zoom < 1.35 && curBeat % 4 == 0)
		{
			FlxG.camera.zoom += 0.015;
			camHUD.zoom += 0.03;
		}

<<<<<<< HEAD
		iconP1.setGraphicSize(Std.int(iconP1.width + iconBeatFactor));
		iconP2.setGraphicSize(Std.int(iconP2.width + iconBeatFactor));
=======
		iconP1.setGraphicSize(Std.int(iconP1.width + 30));
		iconP2.setGraphicSize(Std.int(iconP2.width + 30));
>>>>>>> upstream

		iconP1.updateHitbox();
		iconP2.updateHitbox();

<<<<<<< HEAD
		if (!gf.animation.curAnim.name.startsWith("sing") && curBeat % gfSpeed == 0 && !gf.specialAnim)
=======
		if (curBeat % gfSpeed == 0 && !gf.specialAnim)
>>>>>>> upstream
			gf.dance();

		if (!boyfriend.animation.curAnim.name.startsWith("sing") && !boyfriend.specialAnim)
		{
			boyfriend.dance();

			if (whosFocused == boyfriend)
			{
				cameraOffsetX = 0;
				cameraOffsetY = 0;
			}
		}

		if (!dad.animation.curAnim.name.startsWith("sing") && !dad.specialAnim)
		{
			dad.dance();

			if (whosFocused == dad)
			{
				cameraOffsetX = 0;
				cameraOffsetY = 0;
			}
		}
	}

<<<<<<< HEAD
	function achievementCheck():Void
	{
		#if ACHIEVEMENTS_FEATURE
		var achs:Array<String> = [];

		// Hard PFC
		if (isStoryMode
			&& Paths.currentMod == null
			&& storyDifficulty == 2
			&& weekSicks > 0
			&& weekGoods == 0
			&& weekBads == 0
			&& weekShits == 0)
		{
			switch (storyWeek)
			{
				case 0:
					achs.push('pfc_tutorial_hard');
				default:
					achs.push('pfc_week${storyWeek}_hard');
			}
		}

		for (s in achs)
		{
			if (!Achievements.has(s))
				waitTime += 7;
			
			new FlxTimer().start((7 * achs.indexOf(s)), function(tmr:FlxTimer)
			{
				Achievements.give(s);
			});
		}
		#end
	}

=======
>>>>>>> upstream
	function set_paused(value:Bool):Bool
	{
		paused = value;

		if (botplayTween != null)
			botplayTween.active = !paused;

		return value;
	}

<<<<<<< HEAD
	function set_whosFocused(value:Character):Character
=======
	function set_whosFocused(value:Character):Character 
>>>>>>> upstream
	{
		if (whosFocused != value && songStarted && executeModchart)
		{
			if (interp.variables.get("onFocusChange") != null)
				interp.variables.get("onFocusChange")(value);
		}

		whosFocused = value;
<<<<<<< HEAD

		return value;
	}

	function set_previewMode(value:Bool):Bool
	{
		if (value != previewMode)
		{
			if (!Settings.botplay)
			{
				if (value)
				{
					FlxG.sound.music.pause();
					vocals.pause();
				}
				else
					resyncVocals();
	
				ending = value;
				paused = value;
				camZooming = value;
			}
			camHUD.visible = !value;

			previewMode = value;
		}
		return value;
	}

	override function destroy() 
	{
		if (Settings.autopause)
		{
			FlxG.signals.focusLost.remove(focusLost);
			FlxG.signals.focusGained.remove(focusGained);
		}

		FlxG.timeScale = 1;

		super.destroy();
	}
=======
		
		return value;
	}
>>>>>>> upstream
}
