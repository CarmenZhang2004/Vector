class Fire extends GameObject{
 
  int alpha; //trensparency
 
  Fire(){
  location = myShip.location.copy();
  velocity = myShip.direction.copy();
  velocity.rotate(radians(180) + random(-0.5, 0.5));
  velocity.setMag(5);
  size = (random(0.5, 3));
  lives = 1;
  alpha = 255;
  }
 
  void show(){
  strokeWeight(3);
  stroke(pink, alpha);
  fill(pink, alpha);
  ellipse(location.x, location.y, size, size);
  alpha = alpha - 10;
  if (alpha <= 0) lives = 0;
  }
 
}
