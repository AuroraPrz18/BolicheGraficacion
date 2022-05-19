class Bola{
  PShape bola;
  Bola(){
    bola=loadShape("bola.obj");
    bola.scale(0.3); 
  }
  void display(int x, int y , int z){
    pushMatrix();
    translate(x,y,z);
    shape(bola);
    popMatrix();
  }
  
  
}
