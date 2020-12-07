void gameover(){
  background(0);
  textSize(100);
  fill(purple);
  text("GAMEOVER", width/2+shadowOffset, height/3+shadowOffset);
  fill(pink);
  text("GAMEOVER", width/2, height/3);
  textSize(50);
  fill(purple);
  text("<ckick to restart>", width/2+shadowOffset-3, height/3+height/3+shadowOffset-3);
  fill(pink);
  text("<ckick to restart>", width/2, height/3+height/3);
  
  a = 0;
  
  myShip = new Spaceship();
  wkey = akey = skey = dkey = spacekey = false;
  myObjects = new ArrayList<GameObject>();
 
  myObjects.add(new Enemy());
  
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
}

void gameoverClicks(){
  mode = INTRO;
}
