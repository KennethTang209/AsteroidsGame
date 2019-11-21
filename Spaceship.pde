class Spaceship extends Floater  
{   
	public Spaceship(){
		corners = 5;
		xCorners = new int[5];
		yCorners = new int[5];
		xCorners[0] = 15;
		yCorners[0] = 0;
		xCorners[1] = -5;
		yCorners[1] = 7;
		xCorners[2] = -15;
		yCorners[2] = 15;
		xCorners[3] = -15;
		yCorners[3] = -15;
		xCorners[4] = -5;
		yCorners[4] = -7; 
		myColor = color((int)(Math.random()*256+150), (int)(Math.random()*256+150), (int)(Math.random()*256+150));
		myCenterX = 250;
		myCenterY = 250;
		myDirectionX = 0;
		myDirectionY = 0;
		myPointDirection = -90;
	}
	public void setDirectionX(double x){myDirectionX = x;}
	public void setDirectionY(double y){myDirectionY = y;}
	public void setCenterX(double x){myCenterX = x;}
	public void setCenterY(double y){myCenterY = y;}
	public double getCenterX(){return myCenterX;}
	public double getCenterY(){return myCenterY;}
	public void setPointDirection(double degrees){myPointDirection = degrees;}
}
