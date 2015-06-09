class Body {
  float DENSITY = 3.93; // Assume Earth's avg density
  
  float mass;
  float radius;
  color CoLoR; // HiLaRiOuS
  
  Body(float mass, color CoLoR) {
    this.mass = mass;
    this.radius = pow(mass / DENSITY, 1/3.) * 1e-4; // cm -> km
    this.CoLoR = CoLoR;
  }
  
  void printData() {
    println(DENSITY);
    println(mass);
    println(radius);
    println(CoLoR);
  }
}
