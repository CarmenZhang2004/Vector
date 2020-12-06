void win(){
  background(0);
  textSize(100);
  fill(purple);
  text("YOU WIN", width/2+shadowOffset, height/3+shadowOffset);
  fill(pink);
  text("YOU WIN", width/2, height/3);
  textSize(50);
  fill(purple);
  text("<ckick to restart>", width/2+shadowOffset-3, height/3+height/3+shadowOffset-3);
  fill(pink);
  text("<ckick to restart>", width/2, height/3+height/3);
}

void winClicks(){
  mode = INTRO;
}
