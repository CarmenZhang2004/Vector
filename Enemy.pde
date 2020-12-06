class Enemy extends GameObject{
  
  Enemy(){
  location = new PVector (random(width), random(height));
  velocity = new PVector (1, 0);
  velocity.rotate (random(TWO_PI));
  lives = 1;
  }
  
  void show(){
    pushMatrix();
    stroke(blue);
    strokeWeight(10);
    fill(0);
    ellipse(0, 0, 15, 15);
    strokeWeight(3);
    fill(blue);
    ellipse(0, 0, 5, 5);
    popMatrix();
  }
  
  void act(){
    super.act();
    //myObjects.add(new EBullet());
  }
  
  
}
