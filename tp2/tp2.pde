// TP2
// COMISION 5
// Manuel Canseco 118984/0

PImage hongos, monstruos, portada;
PFont fuente;
int animacion, pantalla, limiteDeAnimacion, opacidad, tamTexto;
int diametro = 50;
int margen = 20;
String txt1, txt2, txt3;

void setup() {
  fuente = createFont("PoetsenOne-Regular.ttf", 24);
  textFont(fuente);
  animacion = 0;
  limiteDeAnimacion = 300;
  opacidad = 0;
  pantalla = 1;
  tamTexto = 48;
  size(640, 480);
  
  hongos = loadImage("hongos.jpg");
  monstruos = loadImage("monstruos.jpg");
  portada = loadImage("portada.jpg");
  textSize(tamTexto);
  txt1 = "'Viaje al Centro de la Tierra' de Julio Verne.";
  txt2 = "El profesor Otto Lidenbrock, \nsu sobrino Axel y el guía Hans Belker \nemprenden un viaje al centro de la Tierra.";
  txt3 = "Temas principales: \nExploración, curiosidad científica \ny valentía.";
}

void draw() {
  background(0);
  animacion++;
  if (animacion > limiteDeAnimacion) {
    animacion = 0;
    if (pantalla < 4) {
      pantalla++;
    }
  }

  if (pantalla == 1) {
    image(portada, 0, 0, width, height);
    textSize(24);
    fill(0);
    textAlign(CENTER);
    text(txt1, width/2, height/2 + animacion/2);
  }

  if (pantalla == 2) {
    image(hongos, 0, 0, width, height);
    textSize(24);
    fill(0);
    textAlign(CENTER);
    text(txt2, width/2, height/2 + animacion/2);
  }

  if (pantalla == 3) {   
    image(monstruos, 0, 0, width, height);
    textSize(24);
    fill(0);
    textAlign(CENTER);
    text(txt3, width/2, height/2 + animacion/2);
  }

  if (pantalla == 4) {   
    image(monstruos, 0, 0, width, height);
    fill(255);
    rect(width/2 - 100, height - 70, 200, 50);
    fill(0);
    textAlign(CENTER, CENTER);
    text("Reiniciar", width/2, height - 45);
  }

}

void mouseClicked() {
  if (dist(mouseX, mouseY, width - margen - diametro/2, height - margen - diametro/2) < diametro/2) {
    pantalla = 1;
  }
  
  if (pantalla == 4 && mouseX > width/2 - 100 && mouseX < width/2 + 100 && mouseY > height - 70 && mouseY < height - 20) {
    reiniciar();
  }
}

void reiniciar() {
  animacion = 0;
  pantalla = 1;
}
