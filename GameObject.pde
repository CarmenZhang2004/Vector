class GameObject{
  PVector location;
  PVector velocity;
  float size;
  int lives;
 
  GameObject(){
  
  }
 
  void show(){

  }
 
  void act(){
  location.add(velocity);
  }
}
