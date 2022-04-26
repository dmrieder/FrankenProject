
void stitchMaker(int num, int s) {
    
  for(int q = 0; q < stitches[num].getVertexCount()-3; q++) {
      
      float x_stitch = curvePoint(stitches[num].getVertex(q).x, stitches[num].getVertex(q+1).x, stitches[num].getVertex(q+2).x, stitches[num].getVertex(q+3).x, 0);
      float y_stitch = curvePoint(stitches[num].getVertex(q).y, stitches[num].getVertex(q+1).y, stitches[num].getVertex(q+2).y, stitches[num].getVertex(q+3).y, 0);     
  
      float tx = curveTangent(stitches[num].getVertex(q).x, stitches[num].getVertex(q+1).x, stitches[num].getVertex(q+2).x, stitches[num].getVertex(q+3).x, 1);
      float ty = curveTangent(stitches[num].getVertex(q).y, stitches[num].getVertex(q+1).y, stitches[num].getVertex(q+2).y, stitches[num].getVertex(q+3).y, 1);
      float a = atan2(ty, tx);
  
    pushMatrix();
      translate(x_stitch,y_stitch);
      rotate(a);
      stroke(#A8A8B3);
      line(0,-5, 0 ,5);
    popMatrix();
       
       }   
  
}
