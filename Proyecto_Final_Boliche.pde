Bola bola;
Bolo bolo1, bolo2, bolo3, bolo4, bolo5, bolo6, bolo;
Pista pista;
void setup(){
  size(800,650,P3D);
  bola = new Bola(); 
  pista = new Pista();
  bolo = new Bolo();//Desaparece
  bolo1 = new Bolo();//Caida recta
  bolo2 = new Bolo();//Caida lado derecho
  bolo3 = new Bolo();//Caida lado derecho
  bolo4 = new Bolo();//Caida lado izq
  bolo5 = new Bolo();//Caida lado izq
  bolo6 = new Bolo();//No caen
  pista.display();
  frameRate(30);
}
void dibujaBolos(){
  //ambientLight(0,255,255,width/2+5, height/5+12, 90);
  // Bolo central
  bolo1.display(width/2+5, height/5+12, 80);
  // Bolos segunda fila
  bolo2.display(width/2+30, height/5, 60);
  bolo4.display(width/2-20, height/5, 60);
  // Bolos tercera fila
  bolo3.display(width/2+55, height/5-12, 40);
  bolo.display(width/2+5, height/5-12, 40);
  bolo5.display(width/2-45, height/5-12, 40);  
  // Bolos cuarta fila 
  bolo.display(width/2+30, height/5-24, 20);
  bolo.display(width/2-20, height/5-24, 20);   
}

void dibujaBolosNoCaen(){
  bolo6.display(width/2+80, height/5-24, 20);
  bolo6.display(width/2-70, height/5-24, 20);    
}

void draw(){
  pista.pistaPrincipal();
  lights();
  bola.display();
  
  if(bola.visible){
    bola.avanzar();
    bola.display();
  }
  
  dibujaBolosNoCaen();
  if(bola.posicion.y<=200){
     bolo1.caer(0.08, PI/10); 
     bolo2.caer(0.05, PI/10);
     bolo3.caer(0.03, PI/12);
     bolo4.caer(-0.05, PI/10);
     bolo5.caer(-0.03, PI/12);
  }else{
     dibujaBolos(); 
  }
  
  //println(mouseX + " : " + mouseY);
  
}
