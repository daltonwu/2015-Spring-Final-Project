/*  Unit Conventions (MKS):
  mass      kg
  radius    km
  density   kg/m^3
*/

/*  bodies.get(0) is the central body
*/
ArrayList<Body> bodies;

// CONSTANTS:
float G = 6.67e-11; // Nm^2/kg^2
float SCALE = 1e-1; // we'll fix this eventually

// Color values from http://w3schools.com/html/html_colornames.asp
color DarkSalmon = #E9967A; // Mars
color DeepSkyBlue = #00BFFF; // Earth
color What = 0xDEADBEEF;
color IceBuddha = 0x1CEB00DA;
color EarthColor = #206E4F;

void setup() {
  size(displayWidth, displayHeight);
  background(0);
  
  /*float scale = 1/3390.;
  float rSun = 695800 * scale;
  float rMars = 3390 * scale;
  float rJupiter = 69911 * scale;
  fill(#FFCC00); // IKEA for the lulz
  ellipse(displayWidth/2, displayHeight/2, rSun, rSun);
  fill(#E9967A);
  ellipse(displayWidth/8, displayHeight/2, rMars, rMars);
  fill(#FF9966);
  ellipse(displayWidth * 7/8, displayHeight/2, rJupiter, rJupiter);
  */
  
  bodies = new ArrayList<Body>();
  Body mars = new Body(displayWidth/2, displayHeight/2, "Mars", 6.39e23, DarkSalmon);
  Body earth = new Body(displayWidth/2, displayHeight/2, "Earth", 5.97e24, DeepSkyBlue);
  bodies.add(earth);
  fill(earth.CoLoR);
  ellipse(earth.x, earth.y, earth.radius*SCALE, earth.radius*SCALE);
  
}

void draw() {
}

