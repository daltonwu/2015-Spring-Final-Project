static class Body {
  // CONSTANTS:
  static final float G = 6.67e-11; // Nm^2/kg^2
  static final float SCALE = 1e-1;
  static final float DENSITY = 5510; // Assume Earth's average density
  
  String name;
  float x, y; // center(x, y)
  float vx, vy; // velocity<vx, vy>
  float m; // mass
  float radius;
  color CoLoR;
  
  Body(float x, float y, float m, String name, color CoLoR) {
    this.x = x;
    this.y = y;
    this.vx = this.vy = 0;
    this.m = m;
    this.name = name;
    this.radius = pow(m / DENSITY, 1/3.) * 1e-3;
    this.CoLoR = CoLoR;
  }
  
  void printData() {
    System.out.format("(%f, %f)%n", x, y);
    println(name);
    println(m);
    println(radius);
    println(hex(CoLoR));
  }
  
  void update(Body other) {
    float theta = 
    float F = getForce(this, other);
    vx = 
  }
  
  static float getForce(Body one, Body two) {
    return G * one.m * two.m / sq(dist(one.x, one.y, two.x, two.y));
  }
}
