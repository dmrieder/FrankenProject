
void iambicPoemWriter() {
  
  int counter = 0;
    
  stroke(255);
  fill(255);
  textSize(22);
  
  //Writes the poem to the screen
  for(int l = 0; l < iambicTest.length; l++) {
        
      for(int w = 0; w < iambicTest[l].length; w++) {
      
        for(int s = 0; s < iambicTest[l][w].length; s++) {
          
          for(int r = 0; r < iambicTest[l][w][s].length(); r++) {
            if(syllableActive[counter]) {
            text(iambicTest[l][w][s].charAt(r), positions.get(counter).x, positions.get(counter).y);
            }
            counter++;
            
          }
        }  
     }
  }
  

}
  
