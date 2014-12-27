package scenes;

import entities.*;
import systems.*;
import com.haxepunk.Scene;
import com.haxepunk.Entity;
import com.haxepunk.graphics.Image;
import com.haxepunk.graphics.Text;

class MainScene extends Scene
{

    private var player:Player;
    private var bullet:Bullet;
    private var background:Entity;
    private var text:TestText;
    private var score:ScoreSystem = new ScoreSystem();

    public function new()
    {
        super();
        
    }



    public override function update()
    {
        super.update();
        if(score != null)
            score.updateSet();
    }


	public override function begin()
	{
        //graphic = new Image("graphics/xenoWalkSpriteSheet.png");
        
        background = add(new Background(0,0));
		player = add(new Player(0,333));
        bullet = add(new Bullet(0,0));
        text = add(new TestText(""));
        score.SetBullet(bullet);
        score.SetPlayer(player);
        score.SetOutPutText(text);
	}
}