//create empty array
Cactus[] cactuses = new Cactus[20];
//1.a. create empty array coins
Coin[] coins = new Coin[20];
Dino player;

public void setup() {
  size(800,400);
  spawnCacti();
  spawnCoins();
  player = new Dino();
}

public void draw() {
 background(220); 
 for (int i = 0; i < cactuses.length; i++){
  cactuses[i].show();
  cactuses[i].update();
 }
 for (int i = 0; i < coins.length; i++){
  coins[i].show();
  coins[i].update();
 }
 player.show();
 player.update();

 //a.c. show and update coins
}
private void spawnCoins() {
 for (int i = 0; i < coins.length; i++){
  coins[i] = new Coin(100*i + 300, 150);
 }
}
//a.. spawn coins higher in the air

private void spawnCacti() {
 for(int i = 0; i < cactuses.length; i++){
  cactuses[i] = new Cactus(100 * i + 400,300);
 }
}

public void keyPressed() {
 if (keyCode == 32) {
   player.jump();

 }
}
