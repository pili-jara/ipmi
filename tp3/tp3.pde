// Pilar Jara, comisión 2
// Legajo 119058/2
// Link https://youtu.be/U7aiIDds1cY

PImage imagen;
int cantidad, estado, tam, contador, posX, posY, x, y, i;
float lado;
 

void setup() {
  size(800, 400);
  imagen = loadImage ("imagen.jpeg");
  rectMode(CORNER);
  ellipseMode(CORNER);
  frameRate(4);
  estado = 1;
  contador = 0;
  cantidad = 3;
  lado = width/6;
}

void draw() {
  println("estado="+estado);
  image(imagen, 0, 0, width/2, height);
  translate(width/2, 0);

  if ( estado == 1) {
    DibujarOpArt();
    contador++;
    if ( contador>=5 ) {
      estado++;
      contador = 0;
    }
  } else if ( estado == 2 ) {
    Colores();
  }
}

void DibujarOpArt() {
  for (int x = 0; x < cantidad; x++) {
    for (int y = 0; y < cantidad; y++) {
      if (x % 2 == 0 && y  % 2 != 0) {
        fill(0);
      } else {
        fill(55, 40, 200);
      }
      if (x % 2 != 0 && y  % 2 == 0) {
        fill(0);
      }
      rect(x * lado, y * lado, lado, lado);
    }
  }

  for (int x = 0; x < cantidad; x++) {
    for (int y = 0; y < cantidad; y++) {
      if (x % 2 == 0 && y  % 2 != 0) {
        fill(55, 40, 200);
      } else {
        fill(0);
      }
      if (x % 2 != 0 && y  % 2 == 0) {
        fill(55, 40, 200);
      }
      ellipse(x * lado, y * lado, lado, lado);
    }
  }
}

void Colores() {
  for (int i=width; i>0; i-=55) {
    float r1 = random(255);
    float r2 = random(255);
    float r3 = random(255);
    color c1 = color(r1, r2, r3);
    color c2 = color(r3, r2, r1);
    for (int j=height; j>0; j-=50) {
      fill(c2);
      fill(c1);
    }
    for (int x = 0; x < cantidad; x++) {
      for (int y = 0; y < cantidad; y++) {
        if (x % 1 == 0 && y  % 18 != 3) {
          ellipse(x * lado, y * lado, lado, lado);
        }
      }
    }
  }
}

void mouseClicked() {
  DibujarOpArt();
  estado = 1;
}
