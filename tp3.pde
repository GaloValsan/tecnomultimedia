// Galo Valsangiacomo
// Num Legajo 88278/7
// Trabajo Practico 3 "Efecto Visual"
// https://youtu.be/sbLkK1OoUjw

float angle;
int colorr, colorg, colorb;

void setup() {
  size (500,500);
  noStroke();
  colorr = 59;
  colorg = 242;
  colorb = 139;
}

void draw() {
  background(255);
  
  //Generacion de Circulos
   
  float x = width;
  float dia = 120;
  int num = 70;
  pushMatrix();
  translate(width/2, height/2);
  fill(colorr,colorg,colorb);
  for (int a=0; a<360; a+=45) {
    rotate(radians(a));
    pushMatrix();
    for (int i=0; i<num; i++) {
      scale(0.92);
      rotate(radians(angle));
      ellipse(x, 0, dia, dia);
    }
    popMatrix();
  }
  popMatrix();
  angle+=0.04;
  
  // Boton de Reinicio
  
  fill(0, 0, 0);
  ellipse (475, 25, 25, 25);
  fill (255, 255, 255);
  textAlign(CENTER);
  textSize(20);
  text ("R",475,32);
  fill(#3BF28B);  
}

void mousePressed(){
  
  // Random Color
  
  colorr = (int)random(255);
  colorg = (int)random(255);
  colorb = (int)random(255);
  
  // Reinicio Programa
  
  if ((25 >= dist (mouseX, mouseY, 475,25))){
   setup();
   angle = 0;
  } 
}

  
