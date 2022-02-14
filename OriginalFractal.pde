public void setup() {
  size(500, 500);
  frameRate(10);
  //noLoop();
}
public void draw() {
  background(0);
  //myFractal(250, 250, 100);
  
  //set center of rotation to middle of screen
  translate(250, 250);
  flower(150,30,0);
  //all subsequent translations add onto each other
  translate(0, -150);
  flower(50,20,0);
  translate(-100, 300);
  flower(70,40,0);
}
public void flower(float size, int angle, int density) {
  // draw 5 petals, rotating after each one
  //fill((float)Math.random()*255,(float)Math.random()*255,(float)Math.random()*255);
  fill(255,(float)Math.random()*155,(float)Math.random()*255);
  for (int i = 0; i < 360/angle; i++) {
    ellipse(0, 30+mouseY/5, size/3, size);
    rotate(radians(angle));
  }
  if(size > 10){
    flower(size/2,angle-2,density+10); 
  }
}
//BASIC THING
public void myFractal(int x, int y, int size) {
  ellipse(x, y, size, size/2);
  //stroke((float)Math.random()*255,(float)Math.random()*255,(float)Math.random()*255);
  if (size > 10) {
    myFractal(x-size/4, y, size/2);
    myFractal(x+size/4, y, size/2);
  }
}
