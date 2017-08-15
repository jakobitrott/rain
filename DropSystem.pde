class DropSystem {
  ArrayList<Drop> drops;
  

  DropSystem() {
    
    drops = new ArrayList<Drop>();
  }

  void addDrop() {
    drops.add(new Drop());
  }

  void run() {
    for (int i = drops.size()-1; i >= 0; i--) {
      Drop d = drops.get(i);
      d.run();
    
    if(d.isDead()){
      drops.remove(i);
      d.drawParticle();
  }
}
}
}