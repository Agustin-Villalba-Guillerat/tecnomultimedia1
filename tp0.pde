// Agustin Villalba Guillerat (88182/9)


PImage llavefija;

void setup(){

size(800,400);
background(255);
llavefija = loadImage ("llavefija.jpg");
strokeWeight(0);
}

void draw(){  
  
  image(llavefija,430,-1);
  
   fill (60);
  rect ( 153,120,40,75);
   ellipse (175, 80,90,90);
   
   fill (55);
  rect ( 150,185,45,183);
  
  fill (255);
 ellipse (173, 95,10,10);
 rect ( 150,25,37,55);
}
