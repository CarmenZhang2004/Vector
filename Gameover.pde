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
  
  
}

void gameoverClicks(){
  mode = INTRO;
}
