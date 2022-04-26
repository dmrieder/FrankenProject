
void switchBoard() {

  // completedShapes == 16;, which is a total of 17
  // completedTextlines = 18;, which is a total of 19

  collageMachine();
    
  noodleMover(noodleCounter);
  
  if(muevalas) {
    stitchMover();
  }

  if(hr) {
    playHR();
  }
  
  drawLinesAndStitches(stitchy);

  if(startInfection) {
    virus.run();
  }
  
  
///////////////////////////////////

// Maybe have this run ONLY once all of the letters have shown up on the screen?

switch(devolution) {
  
  case 0: 

      flockerAdd();
      
     soundPlayer(3);
     
     if(!stitchyActive[0]) {
       println(devolution + ">> " + stitchy, completedShapes + " :: " + noodleCounter, completedTextlines);
       stitchyActive[0] = true;
       noodleActive[0] = true;
    }
        break;    
  case 1: 

     soundPlayer(4);
     sounds[4].setGain(0.3); // sounds[4].setGain(0.5);
     
     if(!stitchyActive[1]) {
       stitchyActive[1] = true;
       noodleActive[1] = true;
       println(devolution + ">> " + stitchy, completedShapes + " :: " + noodleCounter, completedTextlines);
     }
        break;
  case 2: 
    if((stitchy <= completedShapes) && !stitchyActive[2]) { 
      stitchy += 1;
      stitchyActive[2] = true;
      println(devolution + ">> " + stitchy, completedShapes + " :: " + noodleCounter, completedTextlines);
    }
    break;
    
  case 3: 
  
    if((stitchy <= completedShapes) && !stitchyActive[3]) { 
      stitchy += 2;
      stitchyActive[3] = true;
      println(devolution + ">> " + stitchy, completedShapes + " :: " + noodleCounter, completedTextlines);
    }    
    break;
    
  case 4: 
  
    soundPlayer(5);
    sounds[5].setGain(0.2); // sounds[5].setGain(0.5);
    
    if((stitchy <= completedShapes) && !stitchyActive[4]) { 
      stitchy += 1;
      stitchyActive[4] = true;
      println(devolution + ">> " + stitchy, completedShapes + " :: " + noodleCounter, completedTextlines);
    } 
    break;
    
  case 5: 
  
    if((stitchy <= completedShapes) && !stitchyActive[5]) { 
      stitchy += 1;
      stitchyActive[5] = true;
    } 

    if((noodleCounter <= completedTextlines) && !noodleActive[5]) {
      noodleCounter += 1;
      noodleActive[5] = true;
      println(devolution + ">> " + stitchy, completedShapes + " :: " + noodleCounter, completedTextlines);
      println(">>>>>>STARTED NOODLES");  
    }

    break;
    
  case 6: 
  
    soundPlayer(2);
         
    if((stitchy <= completedShapes) && !stitchyActive[6]) { 
      stitchy += 1;
      stitchyActive[6] = true;
    }  
    
    if((noodleCounter <= completedTextlines) && !noodleActive[6]) {
      noodleCounter += 1;
      noodleActive[6] = true;
      println(devolution + ">> " + stitchy, completedShapes + " :: " + noodleCounter, completedTextlines);
    }
    
    break;  
    
  case 7: 
  
    if((stitchy <= completedShapes) && !stitchyActive[7]) { 
      stitchy += 1;
      stitchyActive[7] = true;
    } 
    
    if((noodleCounter <= completedTextlines) && !noodleActive[7]) {
      noodleCounter += 1;
      noodleActive[7] = true;
      println(devolution + ">> " + stitchy, completedShapes + " :: " + noodleCounter, completedTextlines);
      
      startInfection = true;// STARTING INFECTION
      virus.addCell();
      virus.addCell();
      virus.addCell();
      
      println(">>>>>>STARTING INFECTION!");   
      
    }
    
    break;
    
  case 8: 
  
    soundPlayer(1);
    sounds[3].setGain(0.2);
    sounds[4].setGain(0.2);
    
    if((stitchy <= completedShapes) && !stitchyActive[8]) { 
      stitchy += 1;
      stitchyActive[8] = true;
    }   
    
     if((noodleCounter <= completedTextlines) && !noodleActive[8]) {
      noodleCounter += 1;
      noodleActive[8] = true;
      println(devolution + ">> " + stitchy, completedShapes + " :: " + noodleCounter, completedTextlines);
      virus.addCell();
      virus.addCell();

    }
    
    break;
    
  case 9: 
  
    if((stitchy <= completedShapes) && !stitchyActive[9]) { 
      stitchy += 2;
      stitchyActive[9] = true;
    } 
    
    if((noodleCounter <= completedTextlines) && !noodleActive[9]) {
      noodleCounter += 2;
      noodleActive[9] = true;
      println(devolution + ">> " + stitchy, completedShapes + " :: " + noodleCounter, completedTextlines);
      
      virus.addCell();
      
    }
    
    break;
    
  case 10: 
    
    if((stitchy <= completedShapes) && !stitchyActive[10]) { 
      stitchy += 1;
      stitchyActive[10] = true;
      
      muevalas = true;
    }  
    
    
    if((noodleCounter <= completedTextlines) && !noodleActive[10]) {
      noodleCounter += 1;
      noodleActive[10] = true;
      println(devolution + ">> " + stitchy, completedShapes + " :: " + noodleCounter, completedTextlines);
      
      virus.addCell();
      virus.addCell();      
      virus.addCell();
      virus.addCell();
    
    }
    
    break;
    
  case 11: 
  
    if((noodleCounter <= completedTextlines) && !noodleActive[11]) {
      noodleCounter += 1;
      noodleActive[11] = true;
      println(devolution + ">> " + stitchy, completedShapes + " :: " + noodleCounter, completedTextlines);
      
      virus.addCell();
      virus.addCell();      
      virus.addCell();
      
    }
    
    break;  
    
  case 12: 
  
    if((noodleCounter <= completedTextlines) && !noodleActive[12]) {
      noodleCounter += 1;
      noodleActive[12] = true;
      println(devolution + ">> " + stitchy, completedShapes + " :: " + noodleCounter, completedTextlines);
      
      virus.addCell();
      virus.addCell();      
      virus.addCell();
      
    }
    
    break;   
    
  case 13: 
  
    if((noodleCounter <= completedTextlines) && !noodleActive[13]) {
      noodleCounter += 1;
      noodleActive[13] = true;
      println(devolution + ">> " + stitchy, completedShapes + " :: " + noodleCounter, completedTextlines);

      virus.addCell();
      virus.addCell();      
      virus.addCell();
      virus.addCell();      
      virus.addCell();
      
    }
    
    break; 
    
  case 14: 

    if((stitchy <= completedShapes) && !stitchyActive[14]) { 
      stitchy += 2;
      stitchyActive[14] = true;
    }  
    
    if((noodleCounter <= completedTextlines) && !noodleActive[14]) {
      noodleCounter += 1;
      noodleActive[14] = true;
      println(devolution + ">> " + stitchy, completedShapes + " :: " + noodleCounter, completedTextlines);
    }
    
    break;  
    
  case 15: 

    if((stitchy <= completedShapes) && !stitchyActive[15]) { 
      stitchy += 1;
      stitchyActive[15] = true;
    }  
    
    if((noodleCounter <= completedTextlines) && !noodleActive[15]) {
      noodleCounter += 1;
      noodleActive[15] = true;
      println(devolution + ">> " + stitchy, completedShapes + " :: " + noodleCounter, completedTextlines);
      
      gameOn = true;
          
    }
    
    gameOn = false;
    
    break;  
    
  case 16: 

    if((stitchy <= completedShapes) && !stitchyActive[16]) { 
      stitchy += 1;
      stitchyActive[16] = true;
    }  
    
    if((noodleCounter <= completedTextlines) && !noodleActive[16]) {
      noodleCounter += 1;
      noodleActive[16] = true;
      println(devolution + ">> " + stitchy, completedShapes + " :: " + noodleCounter, completedTextlines);
    }
    
    break;   
    
  case 17: 

    if((stitchy <= completedShapes) && !stitchyActive[17]) { 
      stitchy += 1;
      stitchyActive[17] = true;
    }  
    
    if((noodleCounter <= completedTextlines) && !noodleActive[17]) {
      noodleCounter += 1;
      noodleActive[17] = true;
      println(devolution + ">> " + stitchy, completedShapes + " :: " + noodleCounter, completedTextlines);
    }
    
    break;  
    
  case 18:  
    
    if((noodleCounter <= completedTextlines) && !noodleActive[18]) {
      noodleCounter += 1;
      noodleActive[18] = true;
      println(devolution + ">> " + stitchy, completedShapes + " :: " + noodleCounter, completedTextlines);

    }
    gameOn = true;
    
    break;  
    
  case 19: 
    if((noodleCounter <= completedTextlines) && !noodleActive[19]) {
      noodleCounter += 2;
      noodleActive[19] = true;
      println(devolution + ">> " + stitchy, completedShapes + " :: " + noodleCounter, completedTextlines);
    }
    
    break;     
  case 20:
  
    if((noodleCounter <= completedTextlines) && !noodleActive[20]) {
      noodleCounter += 1;
      noodleActive[20] = true;
      println(devolution + ">> " + stitchy, completedShapes + " :: " + noodleCounter, completedTextlines);
      println("ALL DONE - ALL DONE - ALL DONE");
      hr = true;
    }
    
    break; 
         
}


  textSize(32);
  fill(255);
  flock.run();
}
