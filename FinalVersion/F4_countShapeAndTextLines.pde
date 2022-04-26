
// Determines how many shapes for stitches and 
// spaghetti text are actually being used
void countShapeAndTextLines() {
 
 int counter = 0;
 
 for(int n = 0; n < stitches.length; n++) {
   
    try {
      
      if(stitches[n].getVertexCount() != 0) {
        println("NUM OF STITCHES: " + stitches[n].getVertexCount(), n);
      }
 
    } 
    
    catch (NullPointerException e) {
    
    completedShapes = n;
    break;
    
    }
  }
  
for(int n = 0; n < textlines.length; n++) {
   
    try {
      
      println("NUM OF NOODLES: " + textlines[n].getVertexCount(), counter);
      counter++;
      
    } 
    
    catch (NullPointerException e) {
    
    completedTextlines = counter;
    break;
    
    }
    completedTextlines = counter;
  }
  
}
