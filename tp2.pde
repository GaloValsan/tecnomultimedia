/* Nombre Galo Valsangiacomo
Num Legajo 88278/7
Titulos Basados en el Videojuego "Night in the Woods" de Alec Holowka
*/

PImage img1, img2, img3, img4, img5, img6;
PFont miFuente;
int pantalla;
float y, yy, yyy, yyyy, yyyyy, yyyyyy, circleX1, randomX, randomY, randomY2, randomX2;

//Setup

void setup() {
  size (500,500);
  img1 = loadImage("Hojas.png");
  img2 = loadImage("NotaMusical.png");
  img3 = loadImage("Lapiz.png");
  img4 = loadImage("Lluvia.png");
  img5 = loadImage("CalaveraMae.png");
  img6 = loadImage("Finji.png");
  miFuente = loadFont("Calibri-48.vlw");
  y = 0;
  yy = 0;
  yyy = 0;
  yyyy = 0;
  yyyyy = 500;
  pantalla = 0;
  circleX1 = 250;
}

void draw(){
  background(#000000);
  

  //Luciernagas 
  
  fill(255,255,0);
  randomX = random (12, 488);
  randomY = random (12, 488);
  randomY2 = random (12,488);
  randomX2 = random (12,488);

  ellipse (randomX, randomY, 5, 5);
  ellipse (randomX2, randomY, 5, 5);
  ellipse (randomX, randomY2, 5, 5);
  ellipse (randomX2, randomY2, 5, 5);
  

  
  //Pantallas
  
  fill(#FFFFFF);
  textAlign(CENTER);
  textFont (miFuente, 18);
  
  if(keyPressed && (key == CODED))
    if (keyCode == LEFT){
     pantalla-=1;
    }else if (keyCode == RIGHT){
      pantalla+=1;}
    if (pantalla > 6){
      pantalla = 6;
    if (pantalla < 0){
      pantalla = 0;}
 }
  
  if (pantalla == 0) {
    image (img2, 205, y, 100, 100);
    y++;
      if (y >= 225){
           y = 225;}
    text("CREATED BY",250,215);
    text("ALEC HOLOWKA   BETHANY HOCKENBERRY   SCOTT BENSON", 250, 235);
    }
     else if (pantalla == 1){
       image (img1, 205, yy, 100, 60);
       yy++;
         if (yy >= 250){
           yy = 250;}
       text("BETHONY HOCKENBERRY",250,215);
       text("CO-WRITING RESEARCH", 250, 235);}
       else if (pantalla == 2){
         text("SCOTT BENSON",250,215);
         text("CO-WRITING, ART, ANIMATION ", 250,235);}
         else if (pantalla == 3){
           image (img5, 210, yyy, 80, 80);
           yyy++;
             if (yyy >= 125){
           yyy = 125;}
           text("ALEC HOLOWKA",250,215);
           text("MUSIC & CODE", 250, 235);}
           else if (pantalla == 4){
             image (img3, 100, yyyyyy, 80, 80);
             yyyyyy++;
               if (yyyyyy >= 190){
               yyyyyy = 190;}
             text("ADDITIONAL ANIMATION",250,215);
             text("CHARLES HUETTNER", 250, 235);}
             else if (pantalla == 5){
               image (img6, 210, yyyy, 80, 80);
               yyyy++;
                 if (yyyy >= 220){
                    yyyy = 220;}
               text("PUBLISHED BY",250,210);}
               else if (pantalla == 6){
                 text("SOUND DESIGN BY",250,215);
                 text("A SHELL IN THE PIT AUDIO, INC", 250, 235);
                 image (img4, 210, yyyyy, 80, 60);}
                 yyyyy--;
                   if (yyyyy <= 250){
                    yyyyy = 250;}
 
               
//Boton de reinicio
  
  ellipse (475, 25, 25, 25);
  textAlign(CENTER);
  fill(0);
  textSize(20);
  text ("R",475,32);
}
  

void mousePressed(){
 pantalla++;
 if (pantalla > 6){
   pantalla = 6;}
}

void mouseClicked(){
  if ((25 >= dist (mouseX, mouseY, 475,25))){
   setup();
  } 
}

  

  
  
  
  
  
