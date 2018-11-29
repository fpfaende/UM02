class Artist {
  String name;
  float primaryWork;
  float sleep;
  float socialMeals;
  float exercise;
  float otherWorks;
  float makingEndsMeet;
  String occupation;

  Artist(TableRow row) {
    name = row.getString("Artist");
    primaryWork = row.getFloat("Primary Work");
    sleep = row.getFloat("Sleep");
    socialMeals = row.getFloat("Social and Meals");
    exercise = row.getFloat("Exercise");
    otherWorks = row.getFloat("Other works");
    makingEndsMeet = row.getFloat("Making ends meet");
    occupation = row.getString("Occupation");
  }

  float getActivity(String activity) {
    float value = 0;
    switch(activity) {
      case "Primary Work": value = primaryWork; break;
      case "Sleep": value = sleep; break;
      case "Social & Meals": value = socialMeals; break;
      case "Exercise": value = exercise; break;
      case "Other Works": value = otherWorks; break;
      case "Making Ends Meet": value = makingEndsMeet; break;
    }
    return value;
  }
}
