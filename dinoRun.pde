//create empty array
Cactus[] cactuses = new Cactus[20];
//1.a. create empty array coins
Coin[] coins = new Coin[20];

public void setup() {
  size(800,400);
  spawnCacti();
  spawnCoins();
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
 
 //a.c. show and update coins
}
private void spawnCoins() {
 for (int i = 0; i < coins.length; i++){
  coins[i] = new Coin(50*i + 200, 150);
 }
}
//a.. spawn coins higher in the air

private void spawnCacti() {
 for(int i = 0; i < cactuses.length; i++){
  cactuses[i] = new Cactus(100 * i + 200,300);
 }
}
