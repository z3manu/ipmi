//MANUEL CANSECO 
//LEGAJO: 118984/0
//COMISION 5
//https://youtu.be/L4bccFOoBUs

PImage img;
int columnas = 3;
int filas = 3;
int tamaño = 100;
int margen = 0;

boolean[][] rombo = new boolean[columnas][filas];
color[] colores = new color[9];
color[] coloresO = {
  color(0, 128, 0), color(0, 0, 255), color(255, 0, 0), 
  color(128, 0, 128), color(255, 255, 0), color(0, 0, 255), 
  color(255, 0, 0), color(0, 128, 0), color(0, 0, 255)
};

void setup() {
  size(800, 400);
  img = loadImage("large_item_2141822_6994733f6d.jpg");
  rcolor();
  rombo[1][1] = true;
}

void draw() {
  background(255);
  strokeWeight(0);
  image(img, 0, 0, width / 2, height);
  
  translate(width / 2, height / 6);
  for (int i = 0; i < columnas; i++) {
    for (int j = 0; j < filas; j++) {
      obra(i * (tamaño + margen), j * (tamaño + margen), tamaño, acolor(i, j), rombo[i][j], i, j);
    }
  }
}

void obra(int x, int y, int tamaño, color c, boolean rombo, int col, int fila) {
  fill(c);
  rect(x, y, tamaño, tamaño);

  if (rombo) {
    fill(0);
    beginShape();
    vertex(x + tamaño * 0.5, y + tamaño * 0.2);
    vertex(x + tamaño * 0.8, y + tamaño * 0.5);
    vertex(x + tamaño * 0.5, y + tamaño * 0.8);
    vertex(x + tamaño * 0.2, y + tamaño * 0.5);
    endShape(CLOSE);
  } else {
    fill(200);
    ellipse(x + tamaño / 2, y + tamaño / 2, tamaño * 0.9, tamaño * 0.9);
  }
}

void rcolor() {
  for (int i = 0; i < coloresO.length; i++) {
    colores[i] = coloresO[i];
    rombo[i % columnas][i / columnas] = false;
  }
}

color acolor(int col, int fila) {
  return colores[fila * columnas + col];
}

void mousePressed() {
  int col = (mouseX - width / 2) / (tamaño + margen);
  int fila = (mouseY - height / 6) / (tamaño + margen);
  if (col >= 0 && col < columnas && fila >= 0 && fila < filas) {
    rombo[col][fila] = !rombo[col][fila];
    redraw();
  }
}

void keyPressed() {
  if (key == 'c' || key == 'C') {
    for (int i = 0; i < colores.length; i++) {
      colores[i] = color(random(255), random(255), random(255));
    }
    redraw();
  } else if (key == 'r' || key == 'R') {
    rcolor();
    rombo[1][1] = true;
    redraw();
  }
}
