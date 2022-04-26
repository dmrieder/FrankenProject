
void drawLinesAndStitches(int sn) {
  
  for(int u = 0; u < sn; u++) {
    shape(stitches[u], 0, 0);
    stitchMaker(u, stitchStroke);  // draws the perpendicular lines along PShape lines to simulate stitches
    }
    
}
