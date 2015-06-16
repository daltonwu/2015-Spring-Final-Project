static class Body {
  String name;
  float x, y; // center(x, y)
  float m; // mass
  float r; // scaled radius, a function of mass and U.DENSITY
  PVector v; // instantaneous velocity <v.x, v.y>
  PVector F; // instantaneous force (exerted on this) <F.x, F.y>
  color CoLoR;
  int degree = 0;
  boolean selected;
  boolean moving;
  
  // Constructor
  Body(String name, float x, float y, float m, color CoLoR) {
    //selected = moving = false;
    this.name = name;
    this.x = x;
    this.y = y;
    this.m = m;
    this.r = pow(m / U.DENSITY, 1/3.) * 1e-3 * U.SCALE;
    v = new PVector();
    F = new PVector();
    this.CoLoR = CoLoR;
  }
  
  String toString() {
    return name;
  }
  
  // Debug data (what a pain)
  void printData() {
    println(r);
    System.out.format("(%f, %f)%n", x, y);
    println(v.array());
    println(F.array());
  }
  
  // Update velocity. Call before updateX().
  void updateV(Body other) {
    F.set((other.x - x)/U.SCALE, (other.y - y)/U.SCALE); // Takes care of direction
    F.setMag(getForce(this, other)); // Now, magnitude
    //v.set(v.x + F.x * U.TIME_INT, v.y + F.y * U.TIME_INT); // COMMENTED OUT BECAUSE SPEED IS TOO FAST **************
    v.rotate(degree); // ATTEMPT TO ROTATE THE PLANETS (DOESN'T WORK)
    v.set(.2, .2); // Temporary fix to the velocity problem
    //println(this.name + ":");
    //println(v.array());
    //println();
  }
  
  // Update position. Call after updateV().
  void updateX() {
    x += v.x * U.TIME_INT;
    y += v.y * U.TIME_INT;
  }
  
  // Static helper method that can be used outside of this class.
  static float getForce(Body one, Body two) {
    return U.G * one.m * two.m / sq(dist(one.x, one.y, two.x, two.y));
  }
  
  // Display this body. Call after update().
  void update(ArrayList<Body> bodies, int index) {
    for(int i=0; i<bodies.size(); i++) {
      if(i != index) {
        updateV(bodies.get(i));
      }
    }
    updateX();
  }
  
  /* ******************************** Code for selecting planets and moving them
  void moving?(){
    if(moving){
      x += cos(movingAngle)*speed;
      y += sin(movingAngle)*speed;
      if(sqrt(sq(destx-x)+sq(desty-y)) <= speed){
        moving = false;
      }
    }
    if(selected){
      stroke(255);
      fill(255,0,0);
    }
    else{
      stroke(0);
      fill(0,100,200);
    } 
    rect(x,y,50,50);
  }
  
  void mousePressed(){
  boolean selected = false;
  for(int i = Body.size()-1; i>= 0 ;i--){
    Body b = Body.get(i);
    if(mouseX > b.x && mouseX < b.x+50 &&mouseY > b.y && mouseY < b.y+50){
      mousePressed = true;
      if(b.selected){
        b.selected = false;
      }
      else{
        b.selected = true;
      }
      break;
    }
  }
  
  if(!mousePressed){
    for(int i = 0; i< Body.size();i++){
      Body b = Body.get(i);
      if(b.selected){
        b.goTo(mouseX+random(-50,50),mouseY+random(-50,50));
        b.selected = false;
      }
    }
  }
  }
  */
}
