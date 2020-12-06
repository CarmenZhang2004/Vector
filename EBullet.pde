class EBullet extends GameObject{
  
  EBullet (float x, float y){
    location = new PVector(x, y);
    velocity = new PVector(myShip.location.x - x, myShip.location.y - y);
    velocity.setMag (5);
    size = 5;
    lives = 1;
  }
  
   void show(){
    strokeWeight(3);
    stroke(blue);
    fill(blue);
    rect(location.x, location.y, size, size);
  }
 
  void act(){
  super.act();
  if (location.x < 0-size/2 || location.x > width+size/2 || 
      location.y < 0-size/2 || location.y > height+size/2){
    lives = 0;
  }
  
}

}
