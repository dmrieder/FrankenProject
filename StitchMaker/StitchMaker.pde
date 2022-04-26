PImage img, img2, img3;
PrintWriter output;
int counter;
Boolean firsttime;

int num;

void setup() {
  
 size(2048,1367); 
 
 output = createWriter("positions.txt"); 
 
 img = loadImage("StitchesScreenCap.png");
 img2 = loadImage("rotatedAtlanta.png");
 img3 = loadImage("testingTHings.png");
 
 firsttime = true;
 
 counter = 0;
 
 num = 0;
}

void draw() {
  
  //background(0);
  stroke(0);
  strokeWeight(5);
  
  imageMode(CENTER);
  //image(img, width/2, height/2);
  tint(255, 75);
  image(img2, width/2, height/2);
  noTint();
   
}

void mouseClicked() {
  output.println("stitches[" + num + "].endShape();"); // Write the coordinate to the file
  println("DONE: " + counter);
  output.flush(); // Writes the remaining data to the file
  output.close(); // Finishes the file
  exit(); // Stops the program
}

void keyPressed() {
    if(firsttime) {
      output.println("stitches[" + num + "] = createShape();");
      output.println("stitches[" + num + "].beginShape();");
      output.println("stitches[" + num + "].noFill();");
      output.println("stitches[" + num + "].stroke(stitchStroke);");
      firsttime = false;
      println(counter + ", RECORDED: " + mouseX, mouseY);
    }
    else {
    output.println("stitches[" + num + "].vertex("+ mouseX + "," + mouseY + ");"); // Write the coordinate to the file
    println(counter + ", RECORDED: " + mouseX, mouseY);
    }
    counter++;

}
