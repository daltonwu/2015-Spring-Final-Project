/*
  Solar System Simulator
  MKS22X (APCS) Spring 2015 Final Project
  Dalton Wu
  Brandon Hwang
  Eric He
*/

// bodies.get(0) is the central body
ArrayList<Body> bodies;
ArrayList<Body> planets;
int pop = 1;
boolean degree;


void setup() {
  size(displayWidth, displayHeight);
  background(0);
  
  bodies = new ArrayList<Body>();
  planets = new ArrayList<Body>();
  
  Body mars = new Body("Mars", displayWidth/4, displayHeight/4, 6.39e23, U.DarkSalmon);
  Body earth = new Body("Earth", displayWidth/2, displayHeight/2, 5.97e24, U.EarthColor);
  Body uranus = new Body("Uranus", displayWidth * 3/4, displayHeight * 3/4, 8.681e25, U.UranusColor);
  Body pluto = new Body("Pluto", displayWidth/6, displayHeight/6, 1.3e22, U.EarthColor);
  planets.add(mars);
  planets.add(uranus);
  planets.add(pluto);
  bodies.add(earth);
  
  println(bodies.toArray());
}

void draw() {
  background(0);
  controls();
  for(int i=0; i<pop; i++) {
    Body b = bodies.get(i);
    if (degree) {
      b.degree+=10;
    }
    else {
      b.degree-=10;
    }
    b.update(bodies, i);
    
    fill(b.CoLoR);
    ellipse(b.x, b.y, b.r, b.r);
  }
}
//Basic controls for manipulating planets. (Work in progress) **************************
void controls() {
  //The arrayList Planets holds all the unadded planets. The arrayList Bodies will add the first index of arrayList planet when 'a' is pressed. The arraylist planets in turn will remove the planet added from its list
  if (keyCode == 65) { // a: add planets
    if (pop < planets.size()) {
        bodies.add(planets.get(0));
        planets.remove(0);
        pop++;
    }
    else {
      System.out.println("All available planets shown!");
    }
  }
  //ArrayList planets will add the first index of arrayList bodies. Then arrayList bodies will remove the planet in its first index.
  if (keyCode == 68) { //d: removes planet
    if (pop > 0) {
        planets.add(bodies.get(0));
        bodies.remove(0);
        pop--;
    }
    else {
      System.out.println("Cannot remove anymore planets!");
    }
  }
  if (keyCode == 38) { //up: increases angle by 10;
    degree = true;
  }
  if (keyCode == 40) {//down: decrease angle by 10;
    degree = false;
  }
}

