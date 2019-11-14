class Star //note that this class does NOT extend Floater
{
  private int x,y,colour;
  public Star(){
  	x = (int)(Math.random()*500);
  	y = (int)(Math.random()*500);
  	colour = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  public void show(){
  	fill(colour);
  	stroke(colour);
  	ellipse(x,y,5,5);
  }
}
