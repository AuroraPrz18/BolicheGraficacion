PShape bolo;
PShape bola;

void pista() {
  fill(0, 0, 0);
  noStroke();
  beginShape();
  vertex(0, 0, 0);
  vertex(0, 128, 0);
  vertex(206, 133, 0);
  vertex(206, 0, 0);
  endShape();

  stroke(0);
  fill(253, 176, 40);
  beginShape();
  vertex(0, 126, 0);
  vertex(0, 250, 0);
  vertex(178, 131, 0);
  vertex(0, 126, 0);
  endShape();

  stroke(0);
  fill(90, 118, 170);
  beginShape();
  vertex(0, 271, 0);
  vertex(204, 132, 0);
  vertex(176, 132, 0);
  vertex(0, 250, 0);
  endShape();

  stroke(0);
  fill(232, 225, 136);
  beginShape();
  vertex(204, 132, 0);
  vertex(246, 129, 0);
  vertex(245, 0, 0);
  vertex(205, 0, 0);
  vertex(204, 132, 0);
  endShape();

  stroke(0);
  fill(232, 225, 136);
  beginShape();
  vertex(0, 271, 0);
  vertex(0, 308, 0);
  vertex(245, 129, 0);
  vertex(203, 132, 0);
  vertex(0, 271, 0);
  endShape();

  stroke(0); //pared gris
  fill(225, 224, 210);
  beginShape();
  vertex(245, 129, 0);
  vertex(278, 103, 0);
  vertex(278, 0, 0);
  vertex(245, 0, 0);
  vertex(245, 129, 0);
  endShape();

  noStroke(); //pared gris sombra
  fill(185, 185, 185);
  beginShape();
  vertex(245, 0, 0);
  vertex(278, 103, 0);
  vertex(278, 0, 0);
  vertex(245, 0, 0);
  endShape();

  noStroke(); //hueco principal para los bolos
  fill(0, 0, 0);
  beginShape();
  vertex(282, 117, 0);
  vertex(537, 113, 0);
  vertex(537, 0, 0);
  vertex(278, 0, 0);
  vertex(270, 113, 0);
  endShape();

  stroke(0); //line naranja (izquierda) pegada al hueco principal
  fill(253, 176, 40);
  beginShape();
  vertex(0, 308, 0);
  vertex(0, 315, 0);
  vertex(276, 113, 0);
  vertex(269, 111, 0);
  vertex(0, 308, 0);
  endShape();

  stroke(0); //line gris (izquierda) pegada al hueco principal
  fill(90, 118, 170);
  beginShape();
  vertex(0, 315, 0);
  vertex(0, 380, 0);
  vertex(291, 116, 0);
  vertex(275, 113, 0);
  vertex(0, 315, 0);
  endShape();


  stroke(0); //pista principal
  fill(253, 176, 40);
  beginShape();
  vertex(0, 380, 0);
  vertex(0, 650, 0);
  vertex(800, 650, 0);
  vertex(800, 380, 0);// listo
  vertex(513, 113, 0);// listo
  vertex(292, 115, 0);//;isto
  vertex(0, 380, 0);
  endShape();

  stroke(0); //line gris (derecha) pegada al hueco principal
  fill(90, 118, 170);
  beginShape();
  vertex(513, 113, 0);
  vertex(800, 380, 0);
  vertex(800, 342, 0);//yes
  vertex(533, 112, 0);
  vertex(513, 113, 0);
  endShape();

  stroke(0); //pared amarilla (derecha) pegada al hueco principal
  fill(232, 225, 136);
  beginShape();
  vertex(580, 129, 0);
  vertex(629, 128, 0);
  vertex(629, 0, 0);//yes
  vertex(579, 0, 0);
  endShape();

  stroke(0); //pared gris (derecha) pegada al hueco principal
  fill(225, 224, 210);
  beginShape();
  vertex(537, 104, 0);
  vertex(580, 129, 0);
  vertex(580, 0, 0);//yes
  vertex(537, 0, 0);
  endShape();

  noStroke(); //pared gris sombra (derecha) pegada al hueco principal
  fill(185, 185, 185);
  beginShape();
  vertex(537, 104, 0);
  vertex(580, 0, 0);
  vertex(537, 0, 0);//yes
  vertex(537, 104, 0);
  endShape();

  stroke(0); //linea amarilla (derecha) pegada al hueco principal
  fill(253, 176, 40);
  beginShape();
  vertex(534, 113, 0);
  vertex(800, 342, 0);
  vertex(800, 324, 0);//yes
  vertex(578, 128, 0);//yes
  vertex(537, 103, 0);//yes
  vertex(534, 113, 0);//yes
  endShape();

  stroke(0); //line amarilla parte de la pared (derecha) pegada al hueco principal
  fill(232, 225, 136);
  beginShape();
  vertex(578, 128, 0);
  vertex(800, 324, 0);//listo
  vertex(800, 268, 0);
  vertex(629, 128, 0);//listo
  vertex(578, 128, 0);
  endShape();

  stroke(0); //hueco izquierdo para los bolos
  fill(0, 0, 0);
  beginShape();
  vertex(629, 111, 0);
  vertex(800, 111, 0);//listo
  vertex(800, 0, 0);
  vertex(629, 0, 0);//listo
  vertex(629, 111, 0);
  endShape();

  stroke(0); //linea gris izquierda para el ultimo hueco
  fill(90, 118, 170);
  beginShape();
  vertex(629, 128, 0);
  vertex(800, 268, 0);//listo
  vertex(800, 232, 0);
  vertex(648, 112, 0);//listo
  vertex(630, 112, 0);
  vertex(629, 128, 0);
  endShape();

  stroke(0); //ultima pista (derecha)
  fill(253, 176, 40);
  beginShape();
  vertex(648, 112, 0);
  vertex(800, 232, 0);//listo
  vertex(800, 111, 0);
  vertex(648, 112, 0);//listo
  vertex(630, 112, 0);
  vertex(648, 112, 0);
  endShape();
}

void setup(){
  size(800,650,P3D);

  bolo = loadShape("bolo.obj");
  bolo.setFill(0xffffffff);
  bola=loadShape("bola.obj");
  pista();
}

void draw(){
  pushMatrix();
  translate(460,440,120);
  shape(bolo);
  popMatrix();
  
  pushMatrix();
  translate(380,300,120);
  shape(bola);
  popMatrix();
  
  println(mouseX + " : " + mouseY);
  
}
