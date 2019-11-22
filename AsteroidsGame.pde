Spaceship ufo;
Star[] stars = new Star[200];
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();

boolean wIsPressed = false;
boolean aIsPressed = false;
boolean dIsPressed = false;
boolean qIsPressed = false;

public void setup() 
{
	size(500,500);
    ufo = new Spaceship();
    for(int i = 0; i < stars.length; i++){
    	stars[i] = new Star();
    }
    for(int i = 0; i < 20; i++){
    	rock.add(new Asteroid());
    }  
}
public void draw() 
{
	background(0);
	for(int i = 0; i < stars.length; i++){
		stars[i].show();
	}
	ufo.show();
	ufo.move();
	for(int i = 0; i < rock.size(); i++){
		rock.get(i).move();
		rock.get(i).show();
		if(dist((float)ufo.getCenterX(), (float)ufo.getCenterY(), (float)rock.get(i).getCenterX(), (float)rock.get(i).getCenterY()) < 13){
			rock.remove(i);
			rock.add(new Asteroid());
		}
	}
	if(wIsPressed == true && aIsPressed == true){
		ufo.accelerate(.05);
		ufo.turn(-3);
	}
	if(wIsPressed == true && dIsPressed == true){
		ufo.accelerate(.05);
		ufo.turn(3);
	}
	if(wIsPressed == true){
		ufo.accelerate(.05);
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
