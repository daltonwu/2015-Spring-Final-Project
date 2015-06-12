static class Body {
  String name;
  float x, y; // center(x, y)
  PVector v; // instantaneous velocity<v.x, v.y>
  PVector F; // instantaneous force exerted ON this<F.x, F.y>
  float m; // mass
  float r; // radius
  color CoLoR;
  
  Body(float x, float y, float m, String name, color CoLoR) {
    this.x = x;
    this.y = y;
    this.m = m;
    v = new PVector();
    F = new PVector();
    this.name = name;
    this.r = pow(m / U.DENSITY, 1/3.) * 1e-3;
    this.CoLoR = CoLoR;
  }
  
  void printData() {
    System.out.format("(%f, %f)%n", x, y);
    println(name);
    println(m);
    println(r);
    println(hex(CoLoR));
    println(v.array());
  }
  
  void update(Body other) {
    F.set(other.x - x, other.y - y);
    F.setMag(getForce(this, other));
    v.set(v.x + F.x/m * U.TIME_INT, v.y + F.y/m * U.TIME_INT);
  }
  
  static float getForce(Body one, Body two) {
    return U.G * one.m * two.m / sq(dist(one.x, one.y, two.x, two.y));
  }
}
