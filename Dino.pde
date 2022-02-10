public class Dino {
  private PVector pos, vel, size;
  private int hp, speed, jumpSpeed;
  private final float gravity = 0.2;
  private boolean inAir = false;
  
  //constructor
  public Dino() {
  pos = new PVector(50,300);
  speed = 8;
  vel = new PVector(0,0);
  jumpSpeed = -8;
  hp = 3;
  size = new PVector(30,50);
}

public void show() {
 fill(120);
  rect(pos.x, pos.y, size.x, size.y);
  
}

public void update() {
 if (inAir){
  vel.y += gravity;
 }
 
 if(inAir && pos.y + vel.y >= 300){
   vel.y = 0;
   inAir = false;
 }
 pos.add(vel);
}

public void jump() {
  if(!inAir){
  inAir = true;
vel.y += jumpSpeed;
  }
}
}
