
void makeBowlOfNoodles() {
  
  for(int k = 0; k < completedTextlines; k++) {
   
    textNoodles[k] = new float[textlines[k].getVertexCount()][];

    for(int j = 0; j < textlines[k].getVertexCount(); j++) {
      
      textNoodles[k][j] = new float[2];
      
      PVector v = textlines[k].getVertex(j);
      
      textNoodles[k][j][0] = v.x;
      textNoodles[k][j][1] = v.y;

    }
  }
}
