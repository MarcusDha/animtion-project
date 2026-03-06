//Marcus Dha
//March 2, 2026
// 2-1

color grey = #5F5E5A;
color rock = #B1B7B2;
color blue = #66EAE7;
color yellow = #F5EF3E;
color green = #59C46A;
color dgreen = #0F7C1A;
color red = #FA6656;
color brown = #8E6815;
float grow = 0;
int y = 0;



void setup() {
  size(800, 800);
}

void draw () {
  println(mouseX, mouseY);

  //setting
  background(blue);
  fill(yellow);
  ellipse(650, 150, 150, 150);
  cloud(150, 200);
  cloud(400, 100);
  cloud(600, 200);


  nuke(400, y);
  y = y + 2;

  mushcloud(400,400,grow);
  grow = grow - 1.5;
  

  hill(200, 700);
}

void nuke (int x, int y) {

  pushMatrix();
  translate(x, y);


  fill(255, 0, 0);
  stroke(grey);
  ellipse(0, 0, 60, 70); // bottom part

  //tail
  fill( grey);
  triangle(-25, -20, 25, -20, 0, -160);
  //right
  rect(9, -114, 20, 20);
  triangle(9, -114, 29, -114, 29, -134);
  triangle(29, -94, 9, -74, 9, -94);
  //left
  rect(-9, -114, -20, 20);
  triangle(-9, -114, -29, -114, -29, -134);
  triangle(-29, -94, -9, -74, -9, -94);


  //customiztions
  ellipse(0, -10, 60, 65);
  fill(yellow);
  //triangle(-10,0,10,0,-10,0);
  triangle(0, 10, 20, -25, -20, -25);


  popMatrix();
}

void cloud ( int x, int y) {

  pushMatrix();
  translate(x, y);

  fill(255);
  stroke(255);
  circle(0, 0, 70);
  circle(50, 0, 70);
  circle(25, 35, 50);
  circle(-20, 35, 60);

  popMatrix();
}

void hill (int x, int y) {

  pushMatrix();
  translate(x, y);

  fill(green);
  ellipse(0, 0, 500, 300);
  ellipse(400, 100, 500, 300);

  //house
  fill(yellow);
  rect(-60, -230, 100, 100);//base
  fill(red);
  triangle(-10, -290, 60, -230, -80, -230);//roof
  fill(blue);
  rect(-50, -200, 30, 40);//window
  fill(brown);
  rect(-5, -195, 30, 65);//door
  rect(-45, -120, 70, 1000);//path

  //trees
  rect(330, -110, 30, 100);
  fill(dgreen);
  triangle(345, -160, 300, -110, 390, -110);
  triangle(345, -190, 315, -140, 375, -140);
  triangle(345, -230, 325, -170, 365, -170);

  fill(brown);
  rect(450, -80, 30, 100);
  fill(dgreen);
  triangle(465, -130, 420, -80, 510, -80);
  triangle(465, -160, 435, -110, 495, -110);
  triangle(465, -200, 445, -140, 485, -140);

  //rocks
  fill(rock);
  circle(330, 10, 10);
  circle(370, 15, 10);
  circle(410, -20, 15);
  circle(490, 30, 10);

  popMatrix();
}

void mushcloud (int x, int y, float grow) {
  pushMatrix();
  translate(x, y);

  fill(grey);
  rect(-60, 1000, 120, grow);


  popMatrix();
}

void mushcloud2 (int x, int y, int grow2) {
  pushMatrix();
  translate(x, y);

  ellipse(0,0,grow2-50,grow2);


  popMatrix();
}
