//Marcus Dha
//March 2, 2026
// 2-1

color grey = #5F5E5A;

void setup() {
  size(800, 800);
}

void draw () {
  println(mouseX, mouseY);
  
  nuke(400,400);
}

void nuke (int x, int y) {

  pushMatrix();
  translate(x,y);
  
  fill(255,0,0);
  stroke(grey);
  ellipse(0,0,60,70); // bottom part
  
  //tail
  fill( grey);
  triangle(-25,-20,25,-20,0,-160);
  //right
  rect(9,-114,20,20);
  triangle(9,-114,29,-114,29,-134);
  triangle(29,-94,9,-74,9,-94);
  //left
  rect(-9,-114,-20,20);
  triangle(-9,-114,-29,-114,-29,-134);
  triangle(-29,-94,-9,-74,-9,-94);
  
  
  
  
  
  //customiztions
  ellipse(0,-10,60,65);
  
  popMatrix();
}
