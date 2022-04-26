
void stitchMover() {
  
  for(int j = 0; j < completedShapes; j++) {
    for(int i = 0; i < stitches[j].getVertexCount(); i++) {
     //if(random(0,10) < 4) {
     PVector s = stitches[j].getVertex(i);
     s.x += random(-0.1,0.1); // random(-0.5,0.5);
     s.y += random(-0.1,0.2); // random(-0.4,0.6);
     stitches[j].setVertex(i, s);
     //}
     }
  }
}
