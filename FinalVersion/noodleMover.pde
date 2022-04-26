

void noodleMover(int nm) {
    
  for(int q = 0; q < nm; q++) {
    
    textSize(textSizes[q]);
    fill(colors[q]);
    
    for(int k = 0; k < textlines[q].getVertexCount()-3; k++) {
       
    float x = curvePoint(textNoodles[q][k][0], textNoodles[q][k+1][0], textNoodles[q][k+2][0], textNoodles[q][k+3][0], 1);
    float y = curvePoint(textNoodles[q][k][1], textNoodles[q][k+1][1], textNoodles[q][k+2][1], textNoodles[q][k+3][1], 1); 

    //float x_stitch = curvePoint(textNoodles[q][k][0], textNoodles[q][k+1][0], textNoodles[q][k+2][0], textNoodles[q][k+3][0], 0);
    //float y_stitch = curvePoint(textNoodles[q][k][1], textNoodles[q][k+1][1], textNoodles[q][k+2][1], textNoodles[q][k+3][1], 0);     

    float tx = curveTangent(textNoodles[q][k][0], textNoodles[q][k+1][0], textNoodles[q][k+2][0], textNoodles[q][k+3][0], 1);
    float ty = curveTangent(textNoodles[q][k][1], textNoodles[q][k+1][1], textNoodles[q][k+2][1], textNoodles[q][k+3][1], 1);
    float a = atan2(ty, tx);
        
    pushMatrix();
    
      translate(x, y);
      if(q == 25) {
        println("IS THIS WORKING?: " + messageAsChars[k], x, y, a);
      }
      rotate(a);
      
      if(mouseX < 220) {
        
        text(messageAsChars[k+mouseX], 0, 0);
        
      }
      
      else {
        
        text(messageAsChars[k], 0, 0);
        
      }
     
    popMatrix();
    
    //pushMatrix();
    //  translate(x_stitch,y_stitch);
    //  rotate(a);
    //  stroke(stitchStroke);
    //  line(0,-5, 0 ,5);
    //popMatrix();
    
    }
      
  }
    
}
