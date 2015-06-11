/*
  Solar System Simulator
  MKS22X (APCS) Spring 2015 Final Project
  Dalton Wu
  Brandon Hwang
  Eric He
  
  Unit Conventions (MKS):
  mass      kg
  radius    km
  density   kg/m^3
  force     N
  
  Physical constants are found in class Body.
*/

// bodies.get(0) is the central body
ArrayList<Body> bodies;

// Color values from http://w3schools.com/html/html_colornames.asp
static color DarkSalmon = #E9967A; // Mars
static color DeepSkyBlue = #00BFFF; // Earth
static color EarthColor = #206E4F;


void setup() {
  size(displayWidth, displayHeight);
  background(0);
  
  /*float Body.SCALE = 1/3390.;
  float rSun = 695800 * Body.SCALE;
  float rMars = 3390 * Body.SCALE;
  float rJupiter = 69911 * Body.SCALE;
  fill(#FFCC00); // IKEA for the lulz
  ellipse(displayWidth/2, displayHeight/2, rSun, rSun);
  fill(#E9967A);
  ellipse(displayWidth/8, displayHeight/2, rMars, rMars);
  fill(#FF9966);
  ellipse(displayWidth * 7/8, displayHeight/2, rJupiter, rJupiter);
  */
  
  bodies = new ArrayList<Body>();
  Body mars = new Body(displayWidth/2, displayHeight/2, "Mars", 6.39e23, DarkSalmon);
  Body earth = new Body(displayWidth/2, displayHeight/2, "Earth", 5.97e24, EarthColor);
  bodies.add(earth);
  fill(earth.CoLoR);
  ellipse(earth.x, earth.y, earth.radius*Body.SCALE, earth.radius*Body.SCALE);
  
}

void draw() {
}
