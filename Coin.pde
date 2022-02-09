public class Coin {
  private PVector pos, vel;
  private int speed;
  private final int size = 30;

  //constructor
  public Coin(float x, float y) {
  pos = new PVector(x,y);
  speed = 4;
  vel = new PVector(-speed,0);
}

public void show() {
 fill(255,215,0);
  circle(pos.x, pos.y, size);
  
}
public void update() {
  pos.add(vel); 
}
}
