
void flockerAdd() {
  
  if(countdown == positions.size()) {
    //println("DONE!!!!");
  }
  else {
    if(counter >= 15) {
      
      counter = 0;
      
    }
    
    else {
      if(int(random(0,10)) > 3) {
      int r = int(random(0,random_picker.size()));
      syllableActive[random_picker.get(r)] = true;
      flock.addBoid(new Boid(positions.get(random_picker.get(r)).x,positions.get(random_picker.get(r)).y, justLetters.get(random_picker.get(r))));
      //println(r, countdown, random_picker.size(), random_picker.get(r));
      random_picker.remove(r);
      countdown++; 
      println(countdown + " of " + positions.size() + " letters");
    }    
    
    counter++;
    }
  } 
  
}
