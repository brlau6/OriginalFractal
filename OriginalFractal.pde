public void setup() {
  size(500, 500);
  frameRate(10);
  strokeWeight(0.5);
}
public void draw() {
  background(0);
  //myFractal(250, 250, 100);
  
  fill(255, 112, 203);
  textSize(20);
  text("Happy Valentines' Day! <3",40,50);
  
  //set center of rotation to middle of screen
  translate(250, 250);
  flower(150,30);//middle
  translate(-250,-250);
  
  //all subsequent translations add onto each other
  //unless you reverse translate?
  translate(80, 200);
  flower(50,20);//upper left
  translate(-80,-200);
  
  translate(325, 40);
  flower(70,40);//upper right
  translate(-325, -40);
  /*
  translate(350,350);
  flower(100,10);//bottom right
  translate(-350,-350);
  
  translate(100,400);
  flower(90,24);//bottom left
  */
}
public void flower(float size, int angle) {
  // draw 5 petals, rotating after each one
  //fill((float)Math.random()*255,(float)Math.random()*255,(float)Math.random()*255);
  fill(255,(float)Math.random()*50,(float)Math.random()*255);
  for (int i = 0; i < 360/angle; i++) {
    ellipse(0, mouseY/4, size/3, size);
    rotate(radians(angle));
  }
  if(size > 10){
    flower(size/2,angle-2); 
  }
}
//Basic circle fractal
public void myFractal(int x, int y, int size) {
  ellipse(x, y, size, size/2);
  //stroke((float)Math.random()*255,(float)Math.random()*255,(float)Math.random()*255);
  if (size > 10) {
    myFractal(x-size/4, y, size/2);
    myFractal(x+size/4, y, size/2);
  }
}
/*
SOURCES:
https://keyvan.net/2009/09/processing-getting-started/
http://btk.tillnagel.com/tutorials/rotation-translation-matrix.html
*/
