class Spaceship extends GameObject{
  //1. instance variables
  PVector direction;
  int shotTimer, threshold, t;
 
  //2. constructors
  Spaceship(){
  location = new PVector(width/2, height/2);
  direction = new PVector(0.1, 0);
  velocity = new PVector(0, 0);
  size = 30;
  lives = 3;
  shotTimer = 0;
  threshold = 60;
  }
 
  //3. behaviour functions
  void show(){
  pushMatrix();
    if(t<=0){
      stroke(255);
    } else {
      stroke(pink);
    }
    
  strokeWeight(3);
  translate(location.x, location.y);
  rotate(direction.heading());
  line(50, 0, -15, -15);
  line(50, 0, -15, 15);
  line(0, 0, -15, -15);
  line(0, 0, -15, 15);
  popMatrix();
  }
 
  void act(){
  super.act();
  
   t--;

    int i = 0;
    while (i < myObjects.size()) {
      GameObject obj = myObjects.get(i);
      if (obj instanceof EBullet) {
        if (dist(location.x, location.y, obj.location.x, obj.location.y)<=size/2+obj.size && t<=0) {
          obj.lives = 0;
          lives--;
          t = 60;
        }
      }
      if (obj instanceof Asteroid) {
        if (dist(location.x, location.y, obj.location.x, obj.location.y)<size/2+obj.size && t<=0) {    
          lives--;
          t = 60;
        }
      }

      i++;
    }
  
  if (lives == 0){
    mode = GAMEOVER;
  }
  
  shotTimer++;
  
  if (akey) direction.rotate(radians(5));
  if (dkey) direction.rotate(-radians(5));
  if (wkey) {
    velocity.add(direction);
    myObjects.add(new Fire());
    myObjects.add(new Fire());
    myObjects.add(new Fire());
  }
  if (skey) velocity.sub(direction);
   if (spacekey && shotTimer >= threshold){
    myObjects.add(new Bullet());
    shotTimer = 0;
  }
  
  if (velocity.mag() > 3) velocity.setMag(3);
  
  if (location.x > width+size/2) location.x = -size/2;
  if (location.x < -size/2) location.x = width+size/2;
  if (location.y > height+size/2) location.y = -size/2;
  if (location.y < -size/2) location.y = height+size/2;
  
  }
}
