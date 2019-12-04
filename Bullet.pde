class Bullet extends Floater
{

	Bullet(Spaceship theShip)
	{
		myCenterX = theShip.getCenterX();
		myCenterY = theShip.getCenterY();
		myPointDirection = theShip.getPointDirection();
		double dRadians = myPointDirection*(Math.PI/180);
		myDirectionX = 5 * Math.cos(dRadians) + theShip.getDirectionX();
		myDirectionY = 5 * Math.cos(dRadians) + theShip.getDirectionY();
	}
	public void show(){ellipse((float)myCenterX, (float)myCenterY, 5, 5);}
	public void move()
	{
		myCenterX += myDirectionX;    
   		myCenterY += myDirectionY;
	}
}