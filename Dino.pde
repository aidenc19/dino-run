public class Dino {
  private PVector pos, vel, size;
  private int hp, speed, jumpSpeed, score;
  private final float gravity = 0.4;
  private boolean inAir = false;
  
  //constructor
  public Dino() {
  pos = new PVector(50,300);
  speed = 10;
  vel = new PVector(0,0);
  jumpSpeed = -10;
  hp = 3;
  score = 0;
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

public boolean dinoVsCactus(Cactus c) {
    if (this.pos.x + this.size.x >= c.pos.x &&
      this.pos.x <= c.pos.x + c.size.x &&
      this.pos.y + this.size.y >= c.pos.y &&
      this.pos.y <= c.pos.y + c.size.y
    ) {
      System.out.println("hit");
      text("You Lose!",width/2, height/2);
      return true;      
    }
    else {
      return false;      
    }    
  }
  
  public int updateScore(Cactus[] cactuses) {
    int newScore = 0;
    for (Cactus c : cactuses){
      if ( this.pos.x > c.pos.x + c.size.x){
        newScore++;
      }
    }
    score = newScore;
    return newScore;
  }
}
