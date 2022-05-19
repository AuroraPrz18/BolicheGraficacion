class Bolo{
  PShape bolo;
  Bolo(){
    bolo = loadShape("bolo.obj");
    bolo.setFill(0xffffffff);
    bolo.scale(0.3);
     
  }
  void display(int x, int y, int z){
    pushMatrix();
    translate(x, y, z);
    shape(bolo);
    popMatrix();
  }
  
  
}
