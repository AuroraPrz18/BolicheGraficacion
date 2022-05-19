class Bolo{
  PShape bolo;
  boolean visible;
  float xs, ys, zs, xI, yI, zI, pix, piy; 
  Bolo(){
    bolo = loadShape("bolo.obj");
    bolo.setFill(0xffffffff);
    bolo.scale(0.3);
    xs = 0.06;
    ys = -0.8;
    pix=0;
    piy=0;
    bolo.rotateY(xs);
    bolo.rotateX(ys); 
    visible = true;
  }
  void display(int x, int y, int z){
    if(visible==true) {
      xI=x;
      yI=y;
      zI=z;
      zs=z;
      pushMatrix();
      translate(x, y, z);
      shape(bolo);
      popMatrix();
    }    
  }
  
  void display(){
    pushMatrix();
    translate(xI, yI, zI);
    shape(bolo);
    popMatrix();
  }
  
  void caer(float xR, float yR){ 
    if(zI>10){
      yI-=1.5;
      zI-=1.5;
      //xs+=xR;
      pix+=xR;
      //ys+=yR;
      piy-=yR;
      if(piy<=PI/2)bolo.rotateY(xR);
      if(pix>=PI/2)bolo.rotateX(yR);      
      display();
    } else visible = false;
  }
  
  
}
