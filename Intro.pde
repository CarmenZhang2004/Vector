void intro(){
  background(0);
  stroke(255);
  strokeWeight(5);
  fill(255);
  if (mouseX>300 && mouseX<500 && mouseY>500 && mouseY<600){
    stroke(pink);
  } else {
    stroke (255);
  }
  rect(400, 550, 200, 100);
  fill(0);
  textSize(50);
  text("Start", 400, 545);
  textSize(100);
  fill(purple);
  text("ASTEROIDS", width/2+shadowOffset, height/3+shadowOffset);
  fill(pink);
  text("ASTEROIDS", width/2, height/3);
}

void introClicks(){
  if (mouseX>300 && mouseX<500 && mouseY>500 && mouseY<600){
  mode=GAME;
  }
}
