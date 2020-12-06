Spaceship myShip;
Enemy myEnemy;
Asteroid myAsteroid;
ArrayList<GameObject> myObjects;
boolean wkey, akey, skey, dkey, spacekey;

PFont font;
int shadowOffset = 8;
color purple = #490A3D;
color pink   = #BD1550;
color blue   = #5C95E3;

final int INTRO = 1;
final int GAME = 2;
final int GAMEOVER = 3;
final int WIN = 4;
final int PAUSE = 5;
int mode = INTRO;

void setup(){
  size(800, 800);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  myShip = new Spaceship();
  wkey = akey = skey = dkey = spacekey = false;
  myObjects = new ArrayList<GameObject>();
 
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
}
void draw(){
  
  if (mode == INTRO){
    intro();
  } else if (mode == GAME){
    game();
  } else if (mode == GAMEOVER){
    gameover();
  } else if (mode == WIN){
    win();
  } else if (mode == PAUSE){
    pause();
  } else {
    println ("Error : Mode = " + mode);
  }
  
  }
