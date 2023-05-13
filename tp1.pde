// TP#1 
// Agustin Villalba Guillerat (88182/9)
// Para reiniciar con click izquierdo :D


int miVariable =1000;
PImage martillo1;
PImage martillo2;
PImage martillo3;
PFont jp;

float posY;
int estado;

void setup(){
  size (640,480); 
  martillo1 = loadImage ("martillo1.jpg");
  jp = createFont("jurassicpark.ttf",80);
  textFont(jp);
  martillo2 = loadImage ("martillo2.jpg");
  martillo3 = loadImage ("martillo2.jpg");
  println(frameCount);  
  
  posY = 1200;
}

void draw(){
    
  println(frameCount);
  
  miVariable = frameCount;
  
  println (miVariable);
  
 if (estado==0) 
  
  background(0);
  image(martillo1,-200,-15);
  textSize (150);
  fill(255,255,0);
  text ("MARTILLO",249,posY-500);
  text ("MARTILLO",251,posY-500);
  fill(255,0,0);
  text ("MARTILLO",250,posY-500);
  
 if (estado==1) 
  
  background(0); 
  
    textAlign(CENTER);
    textSize (60);
    fill(255);
    text("es una herramienta de mano \n, diseñada para golpear \n consta de una cabeza pesada \n y de un mango que sirve \n para dirigir el movimiento de aquella", 249,posY);
   
    posY--;
      
  if (estado==2) {

    background(0);
    image(martillo2,-200,-15);
    textSize(57);
    fill(255);
    text("La parte superior de la cabeza \n se llama boca y puede\n tener formas diferentes.", 249, posY);
  
    posY--;
    
    
  }
  
      if (estado==3) {

    background(0);
    image(martillo3,-200,-15);
    textSize(70);
    fill(255);
    text("Existen 5 tipos:  \n  Martillo de carpintero tradicional \nMartillo de una \n Martillo o maza de nylon \nMartillo de bola \nMartillo de chapistaS", 249, posY);
   
    posY--;
  }

/////////////////////////////////////
  if (posY<10 && estado==0) {
    estado=2;
    posY=width;
  }
   if (posY<10 && estado==1) {
    estado=2;
    posY=width;
  }
  if (posY<10 && estado==2) {
    estado=3;
    posY=width;
  }
}

void mousePressed(){
  
  estado=0;
  posY = 700;
}
