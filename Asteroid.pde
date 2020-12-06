class Asteroid extends GameObject{
  
  int a = 21;
  
  Asteroid(){
  location = new PVector (random(width), random(height));
  velocity = new PVector (1, 0);
  velocity.rotate (random(TWO_PI));
  size = random(80, 100);
  lives = 1;
  }
 
  Asteroid(float s, float x, float y){
  lives = 1;
  location = new PVector (x, y);
  velocity = new PVector (1, 0);
  velocity.rotate (random(TWO_PI));
  size = s;
  }
  
  void show(){
    strokeWeight(3);
    stroke(255);
    fill(0);
    rect(location.x, location.y, size, size);
  }
 
  void act(){
  super.act();
  if (location.x < -size/2) location.x = width+size/2;
  if (location.x > width+size/2) location.x = -size/2;
  if (location.y < -size/2) location.y = height+size/2;
  if (location.y > height+size/2) location.y = -size/2;
  
  if(size<=15) lives = 0;
  
  int i = 0;
  while(i < myObjects.size()){
  GameObject obj = myObjects.get(i);
  if(obj instanceof SBullet){
    if(dist(location.x, location.y, obj.location.x, obj.location.y)<=size/2+obj.size){
      obj.lives = 0;
      lives = 0;
      a--;
      
      myObjects.add(new Asteroid(size/2, location.x, location.y));
      myObjects.add(new Asteroid(size/2, location.x, location.y));
      
      myObjects.add(new Particle(location.x, location.y));
      myObjects.add(new Particle(location.x, location.y));
      myObjects.add(new Particle(location.x, location.y));
      myObjects.add(new Particle(location.x, location.y));
    }
  }
    i++;
   }
    if (a == 0) mode = WIN;
  }
  
}
