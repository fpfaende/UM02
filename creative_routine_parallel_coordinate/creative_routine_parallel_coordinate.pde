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
  
  for (String activity : artists.mins.keyArray()) {
    print(activity + " min is ");
    float min = artists.mins.get(activity);
    print(min + " & max is ");
    float max  = artists.maxs.get(activity);
    println(max + ". Min Y: " + map(min,0,max,0,height) + " " + artists.variances.get(activity));
  }
  
  for(Artist artist:artists.alist){
    println(artist.name); 
  }

}
