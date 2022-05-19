Bola bola;
Bolo bolo;
Pista pista;


void setup(){
  size(800,650,P3D);
  frameRate(1);
  bola = new Bola(); 
  pista = new Pista();
  bolo = new Bolo();
  frameRate(5);
  
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
  pista.display();
   lights();
  //ambientLight(255, 255, 255, width/2, height, 450);
  dibujaBolos();
  bola.display(width/2, height-250, 400);
  
  
  
  
  //println(mouseX + " : " + mouseY);
  
}
