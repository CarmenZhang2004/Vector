void game(){
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
  text("||", 750, 46);
  
  myShip.show();
  myShip.act();

  int i = 0;
  while(i < myObjects.size()){
  GameObject obj = myObjects.get(i);
  if (obj.lives > 0){
    obj.act();
    obj.show();
  }
  if (obj.lives == 0){
    myObjects.remove(i);
  } else {
    i++;
  }
  }
  
  if (frameCount % 1000 == 0){
  myObjects.add(new Enemy());
  }
}

void gameClicks(){
  if(dist(mouseX, mouseY, 750, 50)<15){
   mode=PAUSE;
  }

}
