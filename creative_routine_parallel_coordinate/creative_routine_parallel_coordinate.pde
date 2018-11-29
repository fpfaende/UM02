import java.util.Map;

Artists artists;

PFont f;

void setup() {
  size(800, 600);
  surface.setResizable(true);
  background(255);
  fill(0);
  f = loadFont("FiraCode-Light-14.vlw");
  textFont(f, 14);

  artists = new Artists("creative-routines-enhanced.csv");
  
  for (Map.Entry me : artists.minHM.entrySet()) {
    print(me.getKey() + " min is ");
    float min = (float)me.getValue();
    print(min + " & max is ");
    float max  = (float)artists.maxHM.get(me.getKey());
    println(max + ". Min equivalent to: " + map(min,0,max,0,height));
  }


}
