Spaceship ufo;
Star[] stars = new Star[200];
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();
ArrayList <Bullet> pewpew = new ArrayList <Bullet>();

boolean wIsPressed = false;
boolean aIsPressed = false;
boolean dIsPressed = false;
boolean qIsPressed = false;
boolean spaceIsPressed = false;

public void setup() 
{
	size(500,500);
    ufo = new Spaceship();
    for(int i = 0; i < stars.length; i++){stars[i] = new Star();}
    for(int i = 0; i < 20; i++){rock.add(new Asteroid());}  
}
public void draw() 
{
	background(0);
	for(int i = 0; i < stars.length; i++){stars[i].show();}
	ufo.show();
	ufo.move();
	for(int i = 0; i < rock.size(); i++)
	{
		rock.get(i).move();
		rock.get(i).show();
		if(dist((float)ufo.getCenterX(), (float)ufo.getCenterY(), (float)rock.get(i).getCenterX(), (float)rock.get(i).getCenterY()) < 15){
			rock.remove(i);
			rock.add(new Asteroid());
		}
	}
	for(int i = 0; i < pewpew.size(); i++)
	{
		pewpew.get(i).move();
		pewpew.get(i).show();
		for( int j = 0; i < rock.size(); i++)
		{
			if(dist(pewpew.get(i).getCenterX(), pewpew.get(i).getCenterY(), rock.gt(j).getCenterX(), rock.get(j).getCenterY()) < 5)
			{
				rock.remove(i);
				pewpew.remove(i);
				i--;
				j--;
			}
		}
	}
	if(wIsPressed == true){ufo.accelerate(.05);}
	if(aIsPressed == true){ufo.turn(-3);}
	if(dIsPressed == true){ufo.turn(3);}
	if(spaceIsPressed == true){pewpew.add(new Bullet(ufo));}
}
public void keyPressed()
{
	if(key == 'w'){wIsPressed = true;}
	if(key == 'a'){aIsPressed = true;}
	if(key == 'd'){dIsPressed = true;}
	if(key == 'q'){qIsPressed = true;}
	if(key == ' '){spaceIsPressed = true;}
	if(qIsPressed == true)
	{
		ufo.setDirectionX(0);
		ufo.setDirectionX(0);
		ufo.setCenterX(500*Math.random());
		ufo.setCenterY(500*Math.random());
		ufo.setPointDirection(360*Math.random());
	}
}
public void keyReleased()
{
	if(key == 'w'){wIsPressed = false;}
	if(key == 'a'){aIsPressed = false;}
	if(key == 'd'){dIsPressed = false;}
	if(key == 'q'){qIsPressed = false;}
	if(key == ' '){spaceIsPressed = false;}
}
