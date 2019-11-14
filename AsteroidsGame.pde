Spaceship ufo;
Star[] background = new Star[200];

boolean wIsPressed = false;
boolean aIsPressed = false;
boolean dIsPressed = false;
boolean qIsPressed = false;

public void setup() 
{
	size(500,500);
    ufo = new Spaceship();
    for(int i = 0; i < background.length; i++){
    	background[i] = new Star();
    }
}
public void draw() 
{
	background(0);
	for(int i = 0; i < background.length; i++){
		background[i].show();
	}
	ufo.show();
	ufo.move();

	if(wIsPressed == true && aIsPressed == true){
		ufo.accelerate(.1);
		ufo.turn(-3);
	}
	if(wIsPressed == true && dIsPressed == true){
		ufo.accelerate(.1);
		ufo.turn(3);
	}
	if(wIsPressed == true){
		ufo.accelerate(.1);
	}
	if(aIsPressed == true){
		ufo.turn(-3);
	}
	if(dIsPressed == true){
		ufo.turn(3);
	}
}
public void keyPressed(){
	if(key == 'w'){wIsPressed = true;}
	if(key == 'a'){aIsPressed = true;}
	if(key == 'd'){dIsPressed = true;}
	if(key == 'q'){qIsPressed = true;}
	if(qIsPressed == true){
		ufo.setDirectionX(0);
		ufo.setDirectionX(0);
		ufo.setCenterX(500*Math.random());
		ufo.setCenterY(500*Math.random());
		ufo.setPointDirection(360*Math.random());
	}
}
public void keyReleased() {
	if(key == 'w'){wIsPressed = false;}
	if(key == 'a'){aIsPressed = false;}
	if(key == 'd'){dIsPressed = false;}
	if(key == 'q'){qIsPressed = false;}
}
