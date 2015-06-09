/*  Unit Conventions (MKS):
 mass      kg
 radius    km
 density   g/cm^3
 */

ArrayList<Body> bodies;

// CONSTANTS:
float G = 6.67e-11; // Nm^2/kg^2


void setup() {
  size(displayWidth, displayHeight);
  background(0);
  float scale = 1e-3;
  float rSun = 695800 * scale;
  float rMars = 3390 * scale;
  float rJupiter = 69911 * scale;
  fill(#FFCC00); // IKEA for the lulz
  ellipse(displayWidth/2, displayHeight/2, rSun, rSun);
  fill(#E9967A);
  ellipse(displayWidth/8, displayHeight/2, rMars, rMars);
  fill(#FF9966);
  ellipse(displayWidth * 7/8, displayHeight/2, rJupiter, rJupiter);
  bodies = new ArrayList<Body>();
  color DarkSalmon = #E9967A;
  float mass = 6.39e23;
  Body mars = new Body(mass, DarkSalmon);
  bodies.add(mars);
  mars.printData();
}

void draw() {
}

