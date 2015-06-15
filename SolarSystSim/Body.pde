static class Body {
  String name;
  float x, y; // center(x, y)
  float m; // mass
  float r; // scaled radius, a function of mass and U.DENSITY
  PVector v; // instantaneous velocity <v.x, v.y>
  PVector F; // instantaneous force (exerted on this) <F.x, F.y>
  color CoLoR;
  
  // Constructor
  Body(String name, float x, float y, float m, color CoLoR) {
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
    F.set(other.x - x, other.y - y);
    F.setMag(getForce(this, other));
    v.set(v.x + F.x/m * U.TIME_INT, v.y + F.y/m * U.TIME_INT);
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
}
