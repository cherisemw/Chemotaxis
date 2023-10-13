Bacteria [] circles;
void setup() {
  size(500,500);
  circles = new Bacteria[100];
  for (int i = 0; i < circles.length; i++){
    circles[i] = new Bacteria();
  }
}

void draw() {
  for (int i = 0; i < circles.length; i++) {
    circles[i].move();
    circles[i].show();
  }
}

class Bacteria {
  int myX, myY, myColor;
  
  Bacteria () {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    myColor = color((int)(Math.random()*250),(int)(Math.random()*250),(int)(Math.random()*250));
  }

  void move() {
    myX = myX + (int)((Math.random()*3)-1);
    myY = myY + (int)((Math.random()*3)-1);
  }
  
  void show() {
    fill(myColor);
    noStroke();
    ellipse(myX, myY, 5, 5);
  }
}    
