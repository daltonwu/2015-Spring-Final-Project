/*  Unit Conventions:
  mass      kg
  radius    km
  density   g/cm^3
*/



void setup() {
  color DarkSalmon = #E9967A;
  float mass = 6.39e23;
  Planet mars = new Planet(mass, DarkSalmon);
  mars.printData();
}

void draw() {
}
