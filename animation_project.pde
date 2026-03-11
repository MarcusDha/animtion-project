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
float grow2 = 0;
float grow3 = 0;
int y = 0;
int r = 0;
int r1 = 0;
float a = 0;
int b = 0;
int up = 1200;
int go = 200;
int go2 = 200;


void setup() {
  size(800, 800);
}

void draw () {
  println(mouseX, mouseY);

  //setting
  background(blue);
  fill(yellow);
  ellipse(400, 150, 150, 150);
  cloud(150, 200);
  cloud(450, 100);
  cloud(620, 220);


  nuke(400, y);
  y = y + 2;


  mushcloud(400, 400, grow);
  grow = grow - 1.2;

  mushcloud2(400, 1000, grow2);
  grow2 = grow2 +0.8;

  mushcloudtop(400, 400, grow3);

  if (grow < -900 ) {
    grow3 = grow3 + 0.7;
  }
  if (grow < -1200 ) {
    grow = grow + 1.2;
    grow3 = grow3 - 0.7;
  }

  hill(200, 700);
  house(go, 695,r);
  trees(go2, 700, r1);

  if (grow2 > 1100) {
    go = go - 3;
    r = -10;
    go2 = go2 + 3;
    r1 = 10;
  }

    //shadows / transparency
    fill(0, a);
    rect(0, 0, width, height);
    a = a + 0.15;

    nukeShadow(400, up, b);
    up = up - 2;
    
    if (up < 600) {
      up = -1000;
    }
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

    fill(brown);
    rect(-45, -120, 70, 1000);//path


    //rocks
    fill(rock);
    circle(330, 10, 10);
    circle(370, 15, 10);
    circle(410, -20, 15);
    circle(490, 30, 10);

    popMatrix();
  }

  void house (int x, int y, int r) {
    pushMatrix();
    translate(x, y);
    rotate( radians ( r ) );

    fill(yellow);
    rect(-60, -230, 100, 100);//base
    fill(red);
    triangle(-10, -290, 60, -230, -80, -230);//roof
    fill(blue);
    rect(-50, -200, 30, 40);//window
    fill(brown);
    rect(-5, -195, 30, 65);//door

    popMatrix();
  }

  void trees (int x, int y, int r1) {
    pushMatrix();
    translate(x, y);
    rotate( radians ( r1 ) );

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

    popMatrix();
  }

  void mushcloud (int x, int y, float grow) {
    pushMatrix();
    translate(x, y);

    fill(grey);
    rect(-60, 1000, 120, grow);

    popMatrix();
  }

  void mushcloudtop (int x, int y, float grow3) {
    pushMatrix();
    translate(x, y);

    fill(245,210,10);
    stroke(grey);
    strokeWeight(25);
    ellipse(0, grow+1000, grow3+120, grow3+25);
    strokeWeight(2);

    popMatrix();
  }


  void mushcloud2 (int x, int y, float grow2) {
    pushMatrix();
    translate(x, y);

    stroke(grey);
    strokeWeight(35);
    fill(245, 210, 10);
    ellipse(0, 0, grow2-50, grow2);
    strokeWeight(2);

    popMatrix();
  }

  void nukeShadow (int x, int y, int b) {

    pushMatrix();
    translate(x, y);
    rotate( radians ( 180 ) );

    fill(100, b);
    stroke(100, b);
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
    ellipse(0, -10, 60, 65);

    popMatrix();
  }
