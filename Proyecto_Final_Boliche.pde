PImage fondo;
PShape bolo;

void setup(){
  size(800,650,P3D);

  bolo = loadShape("bolo.obj");
  bolo.setFill(0xffffffff);
  fondo=loadImage("pista bolos2.png");
  image(fondo,0,0);
}

void draw(){
  pushMatrix();
  translate(460,440,120);
  shape(bolo);
  popMatrix();
  
}
