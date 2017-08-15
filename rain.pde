DropSystem drop;

void setup(){
size(640, 360);
drop = new DropSystem();
}

void draw(){
  background(84,47,191);
 //drop.addDrop();
  //drop.run();
 drawGrass();
 drawSun();
  drop.addDrop();
  drop.run();

  
}

void drawGrass(){
fill(16,150,72);
rect(-5,300,width+5,80);
}

void drawSun(){
  fill(244,157,55);
  noStroke();
arc(620, 5, 80, 80, 0, PI+QUARTER_PI, CHORD);
}