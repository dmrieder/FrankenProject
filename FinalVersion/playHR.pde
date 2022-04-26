
void playHR() {
 
  if(!soundsPlaying[0]) {
    sounds[0].loop();
    soundsPlaying[0] = true;
  }
  else {
    //println("Working?");
    textSizes[12] = int(map(ceil(sounds[0].left.level() * 1000), 1, 400, 10, 18));
    textSizes[4] = int(map(ceil(sounds[0].left.level() * 1000), 1, 400, 10, 22));
    textSizes[16] = int(map(ceil(sounds[0].left.level() * 1000), 1, 400, 10, 24));
    int x = int(map(ceil(sounds[0].left.level() * 1000), 1, 400, 10, 18));
    println(x, ceil(sounds[0].left.level() * 1000));
  }
 
}
