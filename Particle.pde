class Particle extends GameObject{
  int alpha;
  
  Particle(){
  location = new PVector (myAsteroid.location.x, myAsteroid.location.y);
  }
  
  Particle(float x, float y){
    location = new PVector (x, y);
    velocity = new PVector(1, 0);
    velocity.rotate (random(TWO_PI));
    lives = 1;
    size = random(5, 8);
    alpha = 255;
  }
  
  void show(){
  strokeWeight(3);
  stroke(255, alpha);
  fill(0, alpha);
  rect(location.x, location.y, size, size);
  alpha = alpha - 5;
  if (alpha <= 0) lives = 0;
  }
}
