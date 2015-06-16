/*
  Solar System Simulator
  MKS22X (APCS) Spring 2015 Final Project
  Dalton Wu
  Brandon Hwang
  Eric He
*/

// bodies.get(0) is the central body
ArrayList<Body> bodies;


void setup() {
  size(displayWidth, displayHeight);
  background(0);
  
  bodies = new ArrayList<Body>();
  Body mars = new Body("Mars", displayWidth/4, displayHeight/4, 6.39e23, U.DarkSalmon);
  Body earth = new Body("Earth", displayWidth/2, displayHeight/2, 5.97e24, U.EarthColor);
  Body uranus = new Body("Uranus", displayWidth * 3/4, displayHeight * 3/4, 8.681e25, U.UranusColor);
  bodies.add(earth);
  bodies.add(mars);
  bodies.add(uranus);
  
  println(bodies.toArray());
}

void draw() {
  background(0);
  for(int i=0; i<bodies.size(); i++) {
    Body b = bodies.get(i);
    
    //b.update(bodies, i);
    
    fill(b.CoLoR);
    ellipse(b.x, b.y, b.r, b.r);
  }
}
