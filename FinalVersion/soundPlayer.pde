
void soundPlayer(int s) {
  
  if(!soundsPlaying[s]) {
    sounds[s].loop();
    soundsPlaying[s] = true;
  }
  
}
