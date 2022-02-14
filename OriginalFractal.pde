public void setup() {
  size(500, 500);
  //frameRate(10);
  //noLoop();
  //ellipseMode(CENTER);
  fill(255);
}
public void draw() {
  background(0);
  //translate(width/2, height/2);
  //rect(-104, -104, 208, 208);
  //rotate(radians(45));
  //rect(-104, -104, 208, 208);
  //myFractal(250, 250, 100);
  //sqr();
  // set centre point
  
  translate(width/2, height/2);
  flower(150,30,0);
}
public void sqr() {
  translate(width/4, height/4);
  rect(-104, -104, 208, 208);
  rotate(radians(45));
  rect(-104, -104, 208, 208);
}
public void flower(int size, int angle, int density) {
  // draw 5 petals, rotating after each one
  for (int i = 0; i < 12; i++) {
    ellipse(density, -60, 50, size);
    rotate(radians(angle));
  }
  if(size > 10){
    flower(size/2,angle-2,density+10); 
  }
}
public void myFractal(int x, int y, int size) {
  ellipse(x, y, size, size/2);
  //stroke((float)Math.random()*255,(float)Math.random()*255,(float)Math.random()*255);
  if (size > 10) {
    myFractal(x-size/4, y, size/2);
    myFractal(x+size/4, y, size/2);
  }
}
