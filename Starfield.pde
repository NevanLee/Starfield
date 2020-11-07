Particle[] bob = new Particle[1000];
void setup()
{
  size(400,400);
  for(int i = 0; i < bob.length; i++){
    bob[i] = new Particle();
    bob[0] = new OddballParticle();
  }
}
void draw()
{
  background(0);
  for(int i = 0; i < bob.length; i++)
   {
    bob[i].move();
    bob[i].show();
   }
}

class Particle
{
  double myX;
  double myY;
  int myColor;
  double myAngle; 
  double mySpeed;
  Particle()
  {
    myX = 200;
    myY = 200;
    myColor = color(255,255,0);
    myAngle = (Math.random() * 2*Math.PI);
    mySpeed = (Math.random() * 11);
  }
  void move()
  {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }
  void show()
  {
    fill(myColor);
    stroke(myColor);
    ellipse((float) myX, (float) myY, (float)Math.random() * 10 + 2, (float)Math.random() * 10 + 2);
  }
}

class OddballParticle extends Particle
{
  OddballParticle()
  {
  }
  void move(){
    myX = myX + (int)(Math.random() * 5) - 1;
    myX = myX + (int)(Math.random() * 5) - 3;
    myY = myY + (int)(Math.random() * 5) - 1;
    myY = myY + (int)(Math.random() * 5) - 3;
    
  }
  void show()
  {
    fill(255,255,255);
    noStroke();
    ellipse((float)myX, (float)myY, 50, 50);
  }
}
