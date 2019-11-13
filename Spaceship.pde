class Spaceship extends Floater  
{   
	Spaceship(){
		corners = 5;
		xCorners = new int[5];
		yCorners = new int[5];
		xCorners[0] = 0;
		yCorners[0] = -15;
		xCorners[1] = 7;
		yCorners[1] = 5;
		xCorners[2] = 15;
		yCorners[2] = 15;
		xCorners[3] = -15;
		yCorners[3] = 15;
		xCorners[4] = -7;
		yCorners[4] = 5; 
		myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
		myCenterX = 250;
		myCenterY = 250;
		myDirectionX = 0;
		myDirectionY = 0;
		myPointDirection = 0;
	}
	public void setDirectionX(double x){myDirectionX = x;}
	public void setDirectionY(double y){myDirectionY = y;}
	public void setCenterX(double x){myCenterX = x;}
	public void setCenterY(double y){myCenterY = y;}
	public void setPointDirection(double degrees){myPointDirection = degrees;}
}
