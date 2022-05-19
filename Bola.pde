class Bola{
  PShape bola;
  PVector posicion;
  boolean visible;
  Bola(){
    bola = loadShape("bola.obj");
    bola.scale(0.3); 
    posicion = new PVector(width/2, height-250, 400);
    visible = true;
  }
  
  void avanzar(){//z=190 se ve que choca con el pino de enfrente
    if(posicion.z>140){
      posicion.y--;
      posicion.z--;
      bola.rotateX(0.1);
    } else visible = false;
  }
  
  void display(){
    pushMatrix();
    translate(posicion.x, posicion.y, posicion.z);
    shape(bola);
    popMatrix();
  }
}
