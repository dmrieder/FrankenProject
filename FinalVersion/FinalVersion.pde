import processing.sound.*;
import ddf.minim.*;

Minim minim;
AudioPlayer[] sounds;

Flock flock;

int devolution, stitchy;
Boolean[] stitchyActive = {false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false};
Boolean[] noodleActive = {false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false};
Boolean[] syllableActive;

// LETS SEE IF THIS WORKS
IntList random_picker = new IntList();
Boolean complete, muevalas;
int counter;
int countdown;
// LETS SEE

int noodleCounter;

Boolean[] soundsPlaying;

PImage img, poemBg, filmbg;
PImage[] collage;

Boolean gameOn, iambicOn, startInfection, hr;

PShape[] stitches = new PShape[32];

String[] iambics, spaghettitexts;
char[] messageAsChars;

PShape[] textlines = new PShape[32];
color[] colors;
int syllableCount, completedShapes, completedTextlines, count;
color stitchStroke;

ArrayList<Character> justLetters;

int[] textSizes;
PFont[] fonts;

String[][][] iambicTest;
float[][][] textNoodles;

ArrayList<PVector> positions;

Virus virus;

PImage covid;

void setup() {
  
  size(2048,1367); 
  background(0);

  syllableCount = 0;

  devolution = -1;
  stitchy = 0;
  startInfection = false;
  muevalas = false;
  hr = false;
  
  stitchStroke = #807D7E;
  
  textSizes = new int[32];
    textSizes[0] = 20;
    textSizes[1] = 18;
    textSizes[2] = 12;
    textSizes[3] = 12;
    textSizes[4] = 10;
    textSizes[5] = 12;
    textSizes[6] = 14;
    textSizes[7] = 14;
    textSizes[8] = 20;
    textSizes[9] = 18;
    textSizes[10] = 26;
    textSizes[11] = 16;
    textSizes[12] = 10;
    textSizes[13] = 10;
    textSizes[14] = 18;
    textSizes[15] = 12;
    textSizes[16] = 10;
    textSizes[17] = 14;
    //textSizes[18] = 14;
    //textSizes[19] = 12;
    //textSizes[20] = 10;
    //textSizes[21] = 10;
    //textSizes[22] = 10;
    //textSizes[23] = 20;
    //textSizes[24] = 20;
    //textSizes[25] = 10;
    //textSizes[26] = 12;
    //textSizes[27] = 10;
    //textSizes[28] = 10;
    //textSizes[29] = 10;
    //textSizes[30] = 20;
    //textSizes[31] = 20;    
    
  colors = new color[32];
    colors[0] = #D9D9D9;
    colors[1] = #F2F2F2;
    colors[2] = #A676A3;
    colors[3] = #565D73;
    colors[4] = #8A8EA6;
    colors[5] = #FFFFFF;
    colors[6] = #A676A3;
    colors[7] = #6C808C;
    colors[8] = #A67F5D;
    colors[9] = #6C808C;
    colors[10] = #F2F2F2;
    colors[11] = #6C808C;
    colors[12] = #8D6802;
    colors[13] = #A84F03;
    colors[14] = #958777;   //? 
    colors[15] = #F28902;
    colors[16] = #A84F03;
    colors[17] = #D9D9D9;
    //colors[18] = #FFFFFF;
    //colors[19] = #FFFFFF;
    //colors[20] = #FFFFFF;
    //colors[21] = #FFFFFF;
    //colors[22] = #FFFFFF; 
    //colors[23] = #FFFFFF;
    //colors[24] = #FFFFFF;
    //colors[25] = #FFFFFF;
    //colors[26] = #FFFFFF;
    //colors[27] = #FFFFFF;    
    //colors[28] = #FFFFFF;
    //colors[29] = #FFFFFF;
    //colors[30] = #FFFFFF;
    //colors[31] = #FFFFFF;

  minim = new Minim(this);

  sounds = new AudioPlayer[8];
    sounds[0] = minim.loadFile("hr_slow.wav", 1024);
    sounds[1] = minim.loadFile("frankenstein1910.mp3", 1024);
    sounds[2] = minim.loadFile("ocean.wav", 1024);
    sounds[3] = minim.loadFile("fauci.wav", 1024);
    sounds[4] = minim.loadFile("floyd.wav", 1024);   
    sounds[5] = minim.loadFile("deflatedTrump.wav", 1024);  
    
  soundsPlaying = new Boolean[8];
    soundsPlaying[0] = false;
    soundsPlaying[1] = false;    
    soundsPlaying[2] = false;
    soundsPlaying[3] = false;
    soundsPlaying[4] = false;    
    soundsPlaying[5] = false;  
    
  fonts = new PFont[6];
    fonts[0] = createFont("SilkRemington-SBold.ttf", 20);
    fonts[1] = loadFont("NirmalaUI-36.vlw");

  collage = new PImage[10];
    collage[0] = loadImage("genevaMap.png");
    collage[1] = loadImage("galvani.png");
    collage[2] = loadImage("frankenstein-trimmed.png");
    collage[3] = loadImage("paper.jpg");
    collage[4] = loadImage("hand2.png");
    collage[5] = loadImage("print2.png");    
  iambics = loadStrings("iambics.txt");
  spaghettitexts = loadStrings("spaghettitexts.txt"); // length of 2

  justLetters = new ArrayList<Character>();
    
  messageAsChars = spaghettitexts[0].toCharArray();
  
  iambicStringToArrays(iambics[0]);

  positions = new ArrayList<PVector>(syllableCount);
  
  shapeMaker();// initializes all of the vectors as lines
  spaghettiMaker();
   
  countShapeAndTextLines(); //counts how many are actually being used and writes val to int completedShapes and completedTextlines
  
  textNoodles = new float[completedTextlines][][];
      
  makeBowlOfNoodles();
    
  img = loadImage("rotatedAtlanta.png");
  filmbg = loadImage("filmStock.png");
  poemBg = loadImage("textBg.png");
   
  textAlign(LEFT);
  fill(255);
  stroke(0);
  //textFont(font);
  textSize(35);  
  smooth();

  gameOn = false;
  iambicOn = false;
  
  noodleCounter = 0;

  //syllableActive = new Boolean[positions.size()]; // I think this one can be deleted
  iambicVectorPreparer();  //create separate function so no waivering

  syllableActive = new Boolean[positions.size()];

  // THIS IS WHAT I"M WORKING ON
  for(int q = 0; q < syllableActive.length; q++) {
    syllableActive[q] = false;
  }

  for(int i = 0; i < positions.size(); i++) {
    random_picker.append(i);
  }
  
  counter = 0;
  countdown = 0;

  //THIS IS IT
  
  println("\n\n\n\n\n");
  println("---------------------");
  println("---------------------");
  println("Franken Project");
  println("Kelsey Dufresne, Calvin Olsen, David M Rieder");
  println("CRDM, English, NC State. 2021");
  println("---------------------");
  println("---------------------");
  
  //println(completedTextlines);
  println(">>>>> " + justLetters.size());
  flock = new Flock();
    // Add an initial set of boids into the system
    for (int i = 0; i < positions.size(); i++) {
      if(syllableActive[i]) {
        flock.addBoid(new Boid(positions.get(i).x,positions.get(i).y, justLetters.get(i)));
      }
    }
  covid = loadImage("covid_small.png");
  
  virus = new Virus();  
  
  imageMode(CENTER);
     
}

void draw() {
  
  background(filmbg);
  
  //flockerAdd();
  
  switchBoard();
  
}

void mouseClicked() { // something about gameOn boolean with this before?
  devolution += 1;

}

// --------------------------------------------------------------
// --------------------------------------------------------------

class Flock {
  ArrayList<Boid> boids; // An ArrayList for all the boids

  Flock() {
    boids = new ArrayList<Boid>(); // Initialize the ArrayList
  }

  void run() {
    for (Boid b : boids) {
      //if(b.active) { // this didn't work. it rendered all boids invisible
        b.run(boids);  // Passing the entire list of boids to each boid individually 
      }
    //}
  }

  void addBoid(Boid b) {
    boids.add(b);
  }

}




// The Boid class

class Boid {

  PVector position;
  PVector velocity;
  PVector acceleration;
  float r;
  float maxforce;    // Maximum steering force
  float maxspeed;    // Maximum speed
  char letter;
  Boolean active;
  
    Boid(float x, float y, char l) {
    acceleration = new PVector(0, 0);

    // This is a new PVector method not yet implemented in JS
    // velocity = PVector.random2D();

    // Leaving the code temporarily this way so that this example runs in JS
    float angle = random(TWO_PI);
    velocity = new PVector(cos(angle), sin(angle));

    position = new PVector(x, y);
    r = 4.0;        // this was 2.0
    maxspeed = 1.0;  // this was 2
    maxforce = 0.5;// this was 0.03
    active = false;
    letter = l;
  }

  void run(ArrayList<Boid> boids) {
    flock(boids);
      if(gameOn) {
        update(); 
      }
      borders();
      render();
  }

  void applyForce(PVector force) {
    // We could add mass here if we want A = F / M
    acceleration.add(force);
  }

  // We accumulate a new acceleration each time based on three rules
  void flock(ArrayList<Boid> boids) {
    PVector sep = separate(boids);   // Separation
    PVector ali = align(boids);      // Alignment
    PVector coh = cohesion(boids);   // Cohesion
    // Arbitrarily weight these forces
    sep.mult(1.5);
    ali.mult(1.0);
    coh.mult(1.0);
    // Add the force vectors to acceleration
    applyForce(sep);
    applyForce(ali);
    applyForce(coh);
  }

  // Method to update position
  void update() {
    // Update velocity

    velocity.add(acceleration);
    // Limit speed
    velocity.limit(maxspeed);
    position.add(velocity);
    // Reset accelertion to 0 each cycle
    acceleration.mult(0);

  }

  // A method that calculates and applies a steering force towards a target
  // STEER = DESIRED MINUS VELOCITY
  PVector seek(PVector target) {
    PVector desired = PVector.sub(target, position);  // A vector pointing from the position to the target
    // Scale to maximum speed
    desired.normalize();
    desired.mult(maxspeed);

    // Above two lines of code below could be condensed with new PVector setMag() method
    // Not using this method until Processing.js catches up
    // desired.setMag(maxspeed);

    // Steering = Desired minus Velocity
    PVector steer = PVector.sub(desired, velocity);
    steer.limit(maxforce);  // Limit to maximum steering force
    return steer;
  }

  void render() {
  
    // Draw a triangle rotated in the direction of velocity
    float theta = velocity.heading() + radians(90) * .1;

    pushMatrix();
    translate(position.x, position.y);
      //rotate(theta);
      text(letter, 0, 0);
    popMatrix();
 
  }

  // Wraparound
  void borders() {
    if (position.x < -r) position.x = width+r;
    if (position.y < -r) position.y = height+r;
    if (position.x > width+r) position.x = -r;
    if (position.y > height+r) position.y = -r;
  }

  // Separation
  // Method checks for nearby boids and steers away
  PVector separate (ArrayList<Boid> boids) {
    float desiredseparation = 25.0f; // this was 25.0f
    PVector steer = new PVector(0, 0, 0);
    int count = 0;
    // For every boid in the system, check if it's too close
    for (Boid other : boids) {
      float d = PVector.dist(position, other.position);
      // If the distance is greater than 0 and less than an arbitrary amount (0 when you are yourself)
      if ((d > 1) && (d < desiredseparation)) {  // it was (d > 0)
        // Calculate vector pointing away from neighbor
        PVector diff = PVector.sub(position, other.position);
        diff.normalize();
        diff.div(d);        // Weight by distance
        steer.add(diff);
        count++;            // Keep track of how many
      }
    }
    // Average -- divide by how many
    if (count > 0) {
      steer.div((float)count);
    }

    // As long as the vector is greater than 0
    if (steer.mag() > 0) {
      // First two lines of code below could be condensed with new PVector setMag() method
      // Not using this method until Processing.js catches up
      // steer.setMag(maxspeed);

      // Implement Reynolds: Steering = Desired - Velocity
      steer.normalize();
      steer.mult(maxspeed);
      steer.sub(velocity);
      steer.limit(maxforce);
    }
    return steer;
  }

  // Alignment
  // For every nearby boid in the system, calculate the average velocity
  PVector align (ArrayList<Boid> boids) {
    float neighbordist = 40;  // this was 50
    PVector sum = new PVector(0, 0);
    int count = 0;
    for (Boid other : boids) {
      float d = PVector.dist(position, other.position);
      if ((d > 0) && (d < neighbordist)) {
        sum.add(other.velocity);
        count++;
      }
    }
    if (count > 0) {
      sum.div((float)count);
      // First two lines of code below could be condensed with new PVector setMag() method
      // Not using this method until Processing.js catches up
      // sum.setMag(maxspeed);

      // Implement Reynolds: Steering = Desired - Velocity
      sum.normalize();
      sum.mult(maxspeed);
      PVector steer = PVector.sub(sum, velocity);
      steer.limit(maxforce);
      return steer;
    } 
    else {
      return new PVector(0, 0);
    }
  }

  // Cohesion
  // For the average position (i.e. center) of all nearby boids, calculate steering vector towards that position
  PVector cohesion (ArrayList<Boid> boids) {
    float neighbordist = 30;
    PVector sum = new PVector(0, 0);   // Start with empty vector to accumulate all positions
    int count = 0;
    for (Boid other : boids) {
      float d = PVector.dist(position, other.position);
      if ((d > 0) && (d < neighbordist)) {
        sum.add(other.position); // Add position
        count++;
      }
    }
    if (count > 0) {
      sum.div(count);
      return seek(sum);  // Steer towards the position
    } 
    else {
      return new PVector(0, 0);
    }
  }
}


//--------------------------------------------------------

class Virus {
  ArrayList<Cell> cells;
  float period;
  PVector amplitude;
  
  Virus() {

    cells = new ArrayList<Cell>();
    
    period = 100;
    amplitude = new PVector(50,75);
    
  }

  void addCell() {
    
    cells.add(new Cell(new PVector(random(0,width),random(0,height)), random(50,1500), new PVector(random(.5,.8), random(.9,1.1))));
    
  }

  void run() {
     
    //float test = amplitude.x * cos(TWO_PI * frameCount / period);

    for (int i = cells.size()-1; i >= 0; i--) {
      
      Cell c = cells.get(i);
      
      c.run();
      
      //if (c.isDead()) {
      //  cells.remove(i);
      //}
      
    } // end of for loop

  } // end of run()
  
} // end of Virus class


class Cell {
  
  PVector position;
  float period;
  PVector amplitude;

  Cell(PVector l, float p, PVector a) {
    
    position = l.copy();
    period = p;
    amplitude = a.copy();
    
  }

  void run() {
    
    position.add(position.x * cos(TWO_PI * frameCount / period)/500, position.y* sin(TWO_PI * frameCount / period)/500);
    
    update();
    
    display();
    
  }

  // Method to update position
  void update() {
       
    image(covid, position.x, position.y); 
    
  }

  // Method to display
  void display() {
    
    tint(255, random(75,90));
    image(covid, position.x, position.y);

}

  // Is the particle still useful?
  boolean isDead() {
    
    return true;
    
  }
}
