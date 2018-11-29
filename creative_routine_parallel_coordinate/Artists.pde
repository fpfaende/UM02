class Artists {
  ArrayList<Artist> alist;

  String[] activities = {"Sleep", "Primary Work", "Social & Meals", "Exercise", "Other Works", "Making Ends Meet"};
  HashMap <String, Float> minHM = new HashMap <String, Float>();
  HashMap <String, Float> maxHM = new HashMap <String, Float>();
  
  Artists(String filename) {
    alist = new ArrayList<Artist>();
    Table table = loadTable(filename, "header");

    for (TableRow row : table.rows()) {
      alist.add(new Artist(row));
    }

    for (String activity : activities) {
      float min=24;
      float max=0;
      for (Artist artist : alist) {
        if (artist.getActivity(activity)<min)
          min=artist.getActivity(activity);
        if (artist.getActivity(activity)>max)
          max=artist.getActivity(activity);
      }
      minHM.put(activity, min);
      maxHM.put(activity, max);
    }
  }
  
}
