class Timer {
  PFont font;
 
  int timeInterval = 1000;
  int timeInterval2 = 60000;
  int endTime;
  int startTime;
  int seconds; 
  int minute;

  boolean timerStarted = false;

  Timer(int _seconds, int _startTime) {
    seconds = _seconds;
    minute = 0;
    startTime = _startTime; 
    textAlign(CENTER);
  }

  void update() {
    fill(127);
    textSize(30);
    text("Time: " + seconds, width - 85, 30);
  }

  void draw() {
    endTime = millis();
    if (endTime - startTime >= timeInterval) {
      
      //counts each second
      seconds += 1;
      
      //resets timer
      startTime = millis();
    }
    
    if (endTime - startTime >= timeInterval2) {
      minute += 1;
      startTime = millis();
    }
    timerStarted = true;
  }

  void run() {
    update();
    draw();
  }
}
