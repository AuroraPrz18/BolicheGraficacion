Bola bola;
Bolo bolo1, bolo2, bolo3, bolo4, bolo5, bolo6, bolo;
Pista pista;
boolean ejecucion, inicio;
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
  pausa();
  ejecucion = false;
  inicio = true;
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
  if(ejecucion){
    if(bola.visible){
      pista.pistaPrincipal();
      lights();
      
      bola.avanzar();
      bola.display();
      
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
    } else{
      ejecucion = false;
      pausa();
    }
  }
}

void reiniciar(){
  pista.display();
  bola = new Bola();
  bolo = new Bolo();//Desaparece
  bolo1 = new Bolo();//Caida recta
  bolo2 = new Bolo();//Caida lado derecho
  bolo3 = new Bolo();//Caida lado derecho
  bolo4 = new Bolo();//Caida lado izq
  bolo5 = new Bolo();//Caida lado izq
  bolo6 = new Bolo();//No caen
}

void pausa(){
  fill(0, 200);
  rect(0, 0, width, height);
  
  noFill();
  stroke(255);
  strokeWeight(10);
  ellipse(width/2, height/2, 150, 150);
  triangle(width/2+40, height/2, width/2-25, height/2+40, width/2-25, height/2-40);
  
  strokeWeight(1);
}

void mouseClicked(){
  if(mouseX>=0 && mouseX<width && mouseY>=0 && mouseY<height){
    if(!bola.visible || inicio) reiniciar();
    ejecucion = true;
    inicio = false;
  }
}
