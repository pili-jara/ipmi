//Jara, Pilar
//Comisión 2

PImage paisaje;

void setup (){
  size(800,400);
  background(140,205,255);
  paisaje = loadImage ("paisaje.jpg");
  paisaje.resize(400,400);
}

void draw(){
  image(paisaje,0,0);
  
  fill(240,120,100);
  noStroke();
rect(400,220,400,70);

fill(250,150,100);
noStroke();
rect(400,210,400,45);

fill(255,160,0);
noStroke();
rect(400,210,400,20);

fill(255,190,0);
noStroke();
rect(400,190,400,20);

fill(170,210,255);
noStroke();
rect(400,130,400,60);

fill(255,255,0);
noStroke();
ellipse(500,270,30,30);

fill(50,150,255);
noStroke();
rect(400,280,400,120);

fill(190);
stroke(0);
triangle(750,240,735,290,770,290);

fill(70);
noStroke();
rect(730,292,48,10);

fill(40);
noStroke();
triangle(400,400,400,330,600,400);

fill(25);
noStroke();
triangle(800,800,800,320,330,600);
}
