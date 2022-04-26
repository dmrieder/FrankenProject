
//positions holds the x-y vector data for the syllables
//comprising the iambic poem. This function assigns the
//x-y data based on a fixed start with some randomization 
//added to it.
void iambicVectorPreparer() {
  
  int x = 674;
  int y = 600;
  float tw;

  count = 0;
    
  for(int l = 0; l < iambicTest.length; l++) {
      
    for(int w = 0; w < iambicTest[l].length; w++) {
    
      for(int s = 0; s < iambicTest[l][w].length; s++) {
        
        for(int g = 0; g < iambicTest[l][w][s].length(); g++) {
          tw = textWidth(iambicTest[l][w][s].charAt(g));
          positions.add(new PVector(x + random(-1,1), y + random(-1,1)));
          x += tw;
          justLetters.add(iambicTest[l][w][s].charAt(g));
          count++;
        }
      }
      x += 15;
    }
    y += 40;
    x = 674; 
  }
  
   // stitches[0] established here with
   // data from positions array
  // stitches[0] = createShape();
  //    stitches[0].beginShape();
  //    stitches[0].noFill();
  //    stitches[0].stroke(stitchStroke);
      
  //for(int h = 0; h < positions.size(); h++) {
  //    stitches[0].vertex(positions.get(h).x, positions.get(h).y);
  //  }

  //stitches[0].endShape();  
  
}
