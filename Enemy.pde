float e;

class Enemy extends GameObject{
  
  int shotTimer, threshold;
  
  Enemy(){
    e = random(0, 4);
  
    if (e>=0 && e<1) {
    location = new PVector (random(50, 750), -size/2);
    velocity = new PVector (0, 2);
    } else if (e>=1 && e<2) {
    location = new PVector (random(50, 750), height+size/2);
    velocity = new PVector (0, -2);
    } else if (e>=2 && e<3) {
    location = new PVector (-size/2, random(50, 750));
    velocity = new PVector (2, 0);
    } else if (e>=3 && e<=4){
    location = new PVector (width+size/2, random(50, 750));
    velocity = new PVector (-2, 0);
    }
    
    size = 30;
    lives = 1;
    shotTimer = 0;
    threshold = 120;
  }
  
  void show(){
    pushMatrix();
    translate(location.x, location.y);
    stroke(blue);
    strokeWeight(5);
    fill(0);
    ellipse(0, 0, size, size);
    strokeWeight(3);
    fill(blue);
    ellipse(0, 0, 10, 10);
    popMatrix();
  }
  
    void act(){
    super.act();
    
    int i = 0;
    while(i < myObjects.size()){
    GameObject obj = myObjects.get(i);
    if(obj instanceof Bullet){
      if(dist(location.x, location.y, obj.location.x, obj.location.y)<=size/2+obj.size){
       obj.lives = 0;
       lives = 0;
       }
      }
      i++;
    }
    
    shotTimer++;
    if (shotTimer >= threshold){
    myObjects.add(new EBullet(location.x, location.y));
    shotTimer = 0;
  }
  
    if (location.x < -size) lives = 0;
    if (location.x > width+size) lives = 0;
    if (location.y < -size) lives = 0;
    if (location.y > height+size) lives = 0;
  }
}
