class Drop{
 // ParticleSystem ps;
 
 
    float x;
  float y;

  float z;
  float length;
  float ySpeed;


Drop(){
 x = random(width);
 y = random(-500,-100);
 z = random(0,20);
 length = map(z,0,20,10,20);
  ySpeed = map(z,0,20,1,20);
  
}


void run(){
fall();
show();
}
  
  void fall(){
 
    y += ySpeed;
    float gravity = map(z,0,20,0,0.1);
    ySpeed = ySpeed + gravity;
    
   
  }
  
boolean isDead(){
if(y >= height){
return true;
}
else return false;

}





void show(){
   
  //ps.addParticle();
  //ps.run();
  float thick = map(z,0,20,1,3);
  strokeWeight(thick+1);
  stroke(35,201,255); // change to random colour
  line(x+2,y,x-1,y+length);
  

}
}