Bola bola;
Bolo bolo;
Pista pista;
void setup(){
  size(800,650,P3D);
  bola = new Bola(); 
  pista = new Pista();
  bolo = new Bolo();
  frameRate(20);
}

void draw(){
  pista.display();
  ambientLight(255, 255, 255, width/2, height, 450);
  bolo.display(width/2+5, height/5, 40);
  bolo.display(width/2+25, height/5-5, 30);
  bolo.display(width/2+45, height/5-10, 20);
  bolo.display(width/2+65, height/5-15, 10);
  
  if(bola.visible){
    bola.avanzar();
    bola.display();
  }
  
  //println(mouseX + " : " + mouseY);
  
}
