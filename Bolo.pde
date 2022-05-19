class Bolo{
  PShape bolo;
  Bolo(){
    bolo = loadShape("bolo.obj");
    bolo.setFill(0xffffffff);
    bolo.scale(0.3);
    bolo.rotateY(0.06);
    bolo.rotateX(-0.8); 
  }
  void display(int x, int y, int z){
    pushMatrix();
    translate(x, y, z);
    shape(bolo);
    popMatrix();
  }
  
  
}
