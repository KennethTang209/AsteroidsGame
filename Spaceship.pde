class Spaceship extends Floater  
{   
	Spaceship(){
		corners = 5;
		myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
		myCenterX = 30;
		myCenterY = 15;
		myDirectionX = 0;
		myDirectionY = 0;
		myPointDirection = 90;
	}
}
