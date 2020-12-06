class Bullet extends GameObject{
  
  Bullet(){
  location = new PVector(myShip.location.x, myShip.location.y);
  velocity = new PVector(myShip.direction.x, myShip.direction.y);
  velocity.setMag(5);
  size = 10;
  lives = 1;
  }
  
  void show(){
    strokeWeight(3);
    stroke(pink);
    fill(pink);
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
