/*  Unit Conventions:
  mass      kg
  radius    km
  density   g/cm^3
*/



void setup() {
  color DarkSalmon = #E9967A;
  float mass = 6.39e23;
  Body mars = new Body(mass, color(233, 150, 122));
  mars.printData();
}

void draw() {
}
