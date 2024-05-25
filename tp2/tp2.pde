// TP2 Comisión 2
//Pilar Jara, 119058/2

int estado, contador, alpha;
PImage imagen1, imagen2, imagen3;
String texto1, texto2, texto3;
float posX, posY;
PFont miFuente;


void setup() {
  size(640, 480);
  
  imagen1 = loadImage ("imagen1.jpg");
  imagen2 = loadImage ("imagen2.jpg");
  imagen3 = loadImage ("imagen3.jpg");

  texto1 = "Monopoly es un juego de mesa basado en el intercambio y la compraventa de bienes raíces";
  texto2 = "Los jugadores mueven sus fichas, por turnos en sentido horario alrededor de un tablero, basándose en la puntuación de los dados.";
  texto3 = "El objetivo de este juego es comprar, alquilar y vender propiedades, de tal forma que uno de los jugadores llegue a ser el mas rico y por consiguiente el ganador.";

  miFuente = loadFont("CenturyGothic-Bold-48.vlw");
  textSize(32);
  textFont( miFuente );
  textAlign(CENTER, CENTER);
  alpha= 255;
  
  estado = 1;
  contador = 0;
  posX = 10;
  posY = 320;
}
void draw() {
  
  println("estado="+estado);
  background(0);
  if ( estado == 1 ) {
//pantalla 1

    image( imagen1, 0, 0, 640, 480);
    fill(255, 150,0);
    textSize(32);
    text ( texto1, posX, posY, 600, 150);

    contador++;
    if ( contador>=60 ) {
      estado++;
      contador = 0;
    }
  } else if ( estado == 2 ) {
    image( imagen1, 0, 0, 640, 480);
    fill(255, 150, 0, alpha);
    textSize( map(alpha, 255, 0, 32, 0 ) );
    text ( texto1, posX, posY, 600, 150);

    alpha-=4;
    if (alpha<=0) {
      posX+=1.5;
      estado = 3;
      contador = 0;
      posX = 20;
      posY = 320;
      alpha = 255;
    }
  } else if ( estado == 3 ) {
  //pantalla 2
  
    image( imagen2, 0, 0,640, 480);
    fill(255, 0,250 );      
    textSize(32);
    text ( texto2, posX, posY, 600, 150);
    posX+=1.5;
    contador++;
    if ( contador>=60 ) {
      estado++;
      contador = 0;
    }
  } else if ( estado == 4 ) {
    image( imagen2, 0, 0, 640, 480);
    fill(255, 0, 250);
    textSize(32);
    text ( texto2, posX, posY, 600, 150);

    posX+=2;
    if (posX>=width) {
      estado = 5;
      contador = 0;
      posX = 20;
      posY = 320;
    }
  } else if ( estado == 5 ) {
 //pantalla 3
 
     image( imagen3, 0, 0, 640, 480);
    fill(50,0,255);
    textSize(32);
    text ( texto2, posX, posY, 600, 150);

    posX+=2;
    if (posX>=width) {
      estado = 5;
      contador = 0;
      posX = 20;
      posY = 320;
  
    }
} else if (estado == 5);
    if ( mouseX>460 && mouseX<460+150
      && mouseY >370 && mouseY<370+50 ) {
      fill(255,0,0);
      rect( 460, 370, 150, 50);
      fill(255);
          text("Reiniciar", 535,395);
   
}else {
  }
 }

void mousePressed() {
  if ( estado==5) {
    if ( mouseX>460 && mouseX<460+150
      && mouseY >370 && mouseY<370+50 ) {
      estado = 1;
    }
  } else {
    estado++;
    contador = 0;
    posX = 20;
  }
}
 
