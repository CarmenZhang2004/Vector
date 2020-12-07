void pause(){
  background(0);
  stroke(255);
  strokeWeight(3);
  if (dist(mouseX, mouseY, 750, 50)<15){
  fill(255);
  }else{
  fill(0);
  }
  ellipse(750, 50, 30, 30);
  if (dist(mouseX, mouseY, 750, 50)<15){
  fill(0);
  }else{
  fill(255);
  }
  textSize(20);
  text(">", 752, 46);
  textSize(80);
  fill(purple);
  text("PAUSE...", width/2+shadowOffset, height/2+shadowOffset);
  fill(pink);
  text("PAUSE...", width/2, height/2);
}

void pauseClicks(){
  if (dist(mouseX, mouseY, 750, 50)<15){
   mode=GAME;
  }
}
