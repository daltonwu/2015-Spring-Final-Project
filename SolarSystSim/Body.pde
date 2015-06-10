class Body {
  float DENSITY = 5510; // Assume Earth's average density
  
  float x, y;
  String name;
  float mass;
  float radius;
  color CoLoR;
  
  Body(float x, float y, String name, float mass, color CoLoR) {
    this.x = x;
    this.y = y;
    this.name = name;
    this.mass = mass;
    this.radius = pow(mass / DENSITY, 1/3.) * 1e-3;
    this.CoLoR = CoLoR;
  }
  
  void printData() {
    System.out.format("(%f, %f)%n", x, y);
    println(name);
    println(mass);
    println(radius);
    println(hex(CoLoR));
  }
}
