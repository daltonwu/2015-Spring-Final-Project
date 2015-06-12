static abstract class U {
  /*  U = Uni
    An abstract class used to store constants.
    
    Unit Conventions:
    mass      kg
    radius    km
    density   kg/m^3
    force     N
    time      s
  */
  
  // PHYSICAL CONSTANTS:
  static final float G = 6.67e-11; // Nm^2/kg^2
  static final float SCALE = 1e-1;
  static final float DENSITY = 5510; // Assume Earth's average density
  
  static final float TIME_INT = 3.15569e6; // Time interval; Google:    1 year / 10 to seconds
  
  // COLORS:
  // http://w3schools.com/html/html_colornames.asp
  // http://w3schools.com/html/html_colors.asp
  static color DarkSalmon = #E9967A; // Mars
  static color DeepSkyBlue = #00BFFF; // Earth
  static color EarthColor = #206E4F; // Trash
}
