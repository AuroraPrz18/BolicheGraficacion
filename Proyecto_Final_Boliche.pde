Bola bola;
Bolo bolo;
Pista pista;
void setup(){
  size(800,650,P3D);
  bola = new Bola(); 
  pista = new Pista();
  bolo = new Bolo();
  pista.display();
  frameRate(20);
}
void dibujaBolos(){
  //ambientLight(0,255,255,width/2+5, height/5+12, 90);
  // Bolo central
  bolo.display(width/2+5, height/5+12, 80);
  // Bolos segunda fila
  bolo.display(width/2+30, height/5, 60);
  bolo.display(width/2-20, height/5, 60);
  // Bolos tercera fila
  bolo.display(width/2+55, height/5-12, 40);
  bolo.display(width/2+5, height/5-12, 40);
  bolo.display(width/2-45, height/5-12, 40);
  // Bolos cuarta fila
  bolo.display(width/2+80, height/5-24, 20);
  bolo.display(width/2+30, height/5-24, 20);
  bolo.display(width/2-20, height/5-24, 20);
  bolo.display(width/2-70, height/5-24, 20);
    
}

void draw(){
  
  lights();
  dibujaBolos();
  bola.display();
  
  if(bola.visible){
    bola.avanzar();
    bola.display();
  }
  
  //println(mouseX + " : " + mouseY);
  
}
