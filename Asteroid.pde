class Asteroid extends Floater
{
	private int rotSpeed;

	public Asteroid()
	{
		rotSpeed = (int)(Math.random()*10-5);
		corners = 5;
		xCorners = new int[5];
		yCorners = new int[5];
		xCorners[0] = 10;
		yCorners[0] = 10;
		xCorners[1] = 15;
		yCorners[1] = 0;
		xCorners[2] = 10;
		yCorners[2] = -10;
		xCorners[3] = -5;
		yCorners[3] = -7;
		xCorners[4] = -5;
		yCorners[4] = 7;
		myColor = color((int)(Math.random()*256+100), (int)(Math.random()*256+100), (int)(Math.random()*256+100));
		myCenterX = Math.random()*500;
		myCenterY = Math.random()*500;
		myDirectionX = Math.random()*2-1;
		myDirectionY = Math.random()*2-1;

	}
	public void move()
	{
		turn(rotSpeed);
		super.move();
	}
	public double getCenterX(){return myCenterX;}
	public double getCenterY(){return myCenterY;}
}