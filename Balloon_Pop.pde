Balloon[] balloons = new Balloon[400];
Spike[] spikes = new Spike[6];

public void setup() {
  size(600,600);
  
  for (int i = 0; i < balloons.length; i++) {
  balloons[i] = new Balloon(600,600);
   }
   for (int i = 0; i < spikes.length; i++) {
    spikes[i] = new Spike(600,600); 
   }
}

public void draw() {
  background(255);
  for (Balloon balloon : balloons) {
    if (!balloon.alive()) continue; 
    
    balloon.balloonVsMouse();
    balloon.move();
    balloon.draw();
    
  }
  
  for (Spike spike : spikes) {
   spike.collideWorldBounds(600,600);
   spike.move();
   spike.draw();
  }
}
