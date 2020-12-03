public class Balloon {
  private int x, y, size, vx, vy;
  public boolean alive = true;
  
  public Balloon(int cwidth, int cheight) {
  this.x = (int) random(cwidth);
  this.y = (int) random(cheight);
  this.vx = 3;
  this.vy = 3;
  this.size = (int) random(8,24);  
  }
  
  public void draw() {
    fill(255, 0, 0);
    circle(x, y, size);
  }
  
  public void move() {
    vx = (int) random(-5,5);
    vy = (int) random(-5,5);
    x += vx;
    y += vy;
  }
  
  public void balloonVsMouse() {
   if (dist(x,y,mouseX,mouseY) <= size/2) {
     score++;
     alive = false;
   }
  }
  
  public boolean alive() {
    return alive;
  }
  
  public int getX() {
   return x; 
  }
  
  public int getY() {
    return y;
  }
  
  public int getSize() {
   return size; 
  }
  
  public void pop() {
    alive = false;
}
}
