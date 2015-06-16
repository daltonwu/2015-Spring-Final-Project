THE FINAL FRONTIER:
======================
Solar System Simulator
======================

A 2D simulation of astronomical objects, written in Processing
--------------------------------------------------------------



About:
------
APCS22X Final Project
Pd. 10
Authors:
    Dalton Wu
    Eric He
    Brandon Hwang

This is a simulation of bodies in space interacting solely through
Newtonian gravity. Each body has attributes including mass, radius,
color, and density that remain constant, as well as variables such 
as velocity and acceleration. A number of example planets mimic 
the characteristics of the planets in our solar system.


Controls:
---------
To initiate the simulation, use Processing's present mode, or 
Ctrl + Shift + R.

The simulation begins with one planet.
Click to select a planet.
Click and drag to move a planet.

      Key   |  Function
     -----------------------------------
       A    |  Add a planet to the window.
       D    |  Remove the selected planet.
       Up   |  Rotate the selected planet's velocity counterclockwise by 10 degrees.
       Down |  Rotate the selected planet's velocity clockwise by 10 degrees.


Concepts from Class:
--------------------
* Use of Processing for visual display.
* Not a genetic algorithm, but each object is continually altered by
the others. Every step requires computation of numerous force pairs. 
The skills used to do this were learned in writing code for earlier
Processing assignments.


Known Issues:
-------------
* The selecting and dragging does not work as intended.
* The control keys are working, but not as intended. They remove or add planets,
but they remove or add a random number rather than one at a time.
* The vector calculations for the positions of the planets are incorrect. This may be 
because of unit conversion problems and/or inconsistent scaling between Processing's
coordinate grid and the measurements used for calculations (tricky, tricky MKS).
* Computational cost for each step can be halved due to Newton's Third Law. The force
between any two objects at a given time need be calculated only once.
