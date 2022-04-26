
//Breaks up the poem into a 3D array organized as
//0-lines, 1-words, 2-syllables
void iambicStringToArrays(String s) {
  
  String[] iambicAsLines = s.split("&&"); 
  
  iambicTest = new String[iambicAsLines.length][][];
   
  for(int i = 0; i < iambicAsLines.length; i++) {
    
    String[] wordFromLine = iambicAsLines[i].split("&");
    
    iambicTest[i] = new String[wordFromLine.length][];
    
    for(int w = 0; w < wordFromLine.length; w++) {
                  
      String[] syllableFromWord = wordFromLine[w].split(">");
      
      iambicTest[i][w] = new String[syllableFromWord.length];
              
      for(int q = 0; q < syllableFromWord.length; q++) {
        
        iambicTest[i][w][q] = syllableFromWord[q];
                
        syllableCount++;
      
      }
    }
  }
}
