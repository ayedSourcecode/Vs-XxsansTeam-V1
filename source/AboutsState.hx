package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.unit.FlxColor;

class AboutsState extends MainMenuState
{
    var BG:FlxSprite;
    var Abouts:FlxText;
    var Back:FlxButton; 
    
    override function create()
    {

        BG = new FlxSprite();
	BG.loadGraphic("menuXxabouts.png");
        BG.screenCenter();
        add(BG);

        Abouts = new FlxText(0, 0, 0, "that's mods fnf by Xxsans Team also thanks for download X3", 64);
        Abouts.screenCenter();
        Abouts.color = 0xFF2F00FF;
        add(Abouts);

        Back = new FlxButton(0, 50, "Back", ClickBack);
        // Back.size = 32;
        add(Back);
        
        super.create();
    }

    private function ClickBack()
    {
        FlxG.camera.fade(FlxColor.BLACK, 0.33, false, () -> {
            FlxG.sound.play(Paths.sound('cancelMenu'));
            FlxG.switchState(new MainMenuState());
        });
    }
}
