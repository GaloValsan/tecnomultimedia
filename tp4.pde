/* Alumno Galo Valsangiacomo Antonucci
   Legajo num 88278/7
   https://youtu.be/RY4kB_tj9Y0
*/
int pantalla;
PImage img1, img2, img3, img4, img5, img6, img7, img8, img9, img10, img11, img12, img13,img14;
PFont miFuente;


void setup() {
  size (600,500);
  img1 = loadImage("Inicio.png");
  img2 = loadImage("Bosque_Fondo.png");
  img3 = loadImage("Ciudad_Fondo.png");
  img4 = loadImage("Carnaval_Fondo.png");
  img5 = loadImage("Rastah.png");
  img6 = loadImage("Final_Feliz.png");
  img7 = loadImage("Florista.png");
  img8 = loadImage("Final_Floreria.png");
  img9 = loadImage("Vampiro.png");
  img10 = loadImage("Final_Carrera.png");
  img11 = loadImage("Mago_Verde.png");
  img12 = loadImage("Final_Juego.png");
  img13 = loadImage("Sapo.png");
  img14 = loadImage("Angel_del_Rock.png");
  pantalla = 0;
  miFuente = loadFont("Candara-48.vlw");
  textFont (miFuente, 30);

}
void draw() {
 background(#000000);
 
//Inicio
 
if (pantalla == 0){
   image (img1, 0, 0, width, height);
    DibujaBoton(50,400);
    text("COMENZAR",75,435);
    DibujaBoton(340,400);
    text("CREDITOS",375,435);}

if (pantalla == 1){
   image (img2, 0, 0, width, height);
   DibujaCuadrodeTexto();
   DibujaTriangulo();
   text("Te despiertas en un bosque lejano,",60,370);
   text("Pero a lo lejos ves una ciudad",60,450);
}
if (pantalla == 2){
   image (img2, 0, 0, width, height);
   DibujaCuadrodeTexto();
   text("¿Que Quieres hacer?", 170,370);
   DibujaBoton(50,400);
   text("Ir a la Ciudad",73,435);
   DibujaBoton(340,400);
   text("Dormir",400,435);
 }
 
//Ciudad 

if (pantalla == 3){
   image (img3, 0, 0, width, height);
   DibujaCuadrodeTexto();
   DibujaTriangulo();
   text("Llegas a la ciudad y ves que",120,370);
   text("hay muchas cosas para hacer.",110,450);   
}

if (pantalla == 4){
   image (img3, 0, 0, width, height);
   DibujaCuadrodeTexto();
   text("¿Que Quieres hacer?", 170,370);
   DibujaBotonChico(50,400);
   text("Reloj", 95,435);
   DibujaBotonChico(230,400);
   text("Puerta Loca", 230,435);
   DibujaBotonChico(410,400);
   text("Tienda", 450,435);   
}

//Rhasta 

if (pantalla == 5){
  image (img5, 5, 0, width, 300);
  DibujaCuadrodeTexto();
  text("Te encuentras con Rhasta",140,370);
  text("Parece Preocupado",175,430);
  DibujaTriangulo();
} 
if (pantalla == 6){
  image (img5, 5, 0, width, 300);
  DibujaCuadrodeTexto();
  pushStyle();
  fill(#ADADAD);
  text("¡Que suerte que llegaste!",140,370);
  text("¿Quieres acompañarme a una aventura?",50,430);
  popStyle();
  DibujaTriangulomini();
}  
if (pantalla == 7){
  image (img5, 5, 0, width, 300);
  DibujaCuadrodeTexto();
  text("¿Que Quieres hacer?", 170,370);
  DibujaBoton(50,400);
  text("Ayudarlo",95,435);
  DibujaBoton(340,400);
  text("Volver",410,435);
}
if (pantalla == 8){
  image (img6,0,0, width, 300);
  DibujaCuadrodeTexto();
  text("Te vas de aventura con tu nuevo amigo",50,370);
  text("*Final Feliz*",200,430);
  DibujaTriangulo();
}

//Carnaval

if (pantalla == 9){
  image (img4,0,0, width, 300);
  DibujaCuadrodeTexto();
  DibujaTriangulo();
  text("Llegas a un divertido carnaval",120,370);
  text("Tienes muchas cosas para hacer.",110,450);
}
if (pantalla == 10){
   image (img4, 0, 0, width, 300);
   DibujaCuadrodeTexto();
   text("¿Que Quieres hacer?", 170,370);
   DibujaBotonChico(50,400);
   text("Vampiro", 65,435);
   DibujaBotonChico(230,400);
   text("Chica", 270,435);
   DibujaBotonChico(410,400);
   text("Volver", 450,435);
} 

//Vampiro

if (pantalla == 11){
  image (img9, 100, 0, 400, 300);
  DibujaCuadrodeTexto();
  text("Te encuentras con un Vampiro",100,370);
  text("Lo escuchas resoplar",175,430);
  DibujaTriangulo();  
}
if (pantalla == 12){
  image (img9, 100, 0, 400, 300);
  DibujaCuadrodeTexto();
  pushStyle();
  fill(#FF0004);
  text("¡Hola camarada extraño!",140,370);
  text("¿Te apetece un poco de emocion?",80,430);
  popStyle();
  DibujaTriangulomini();
}
if (pantalla == 13){
  image (img9, 100, 0, 400, 300);
  DibujaCuadrodeTexto();
  text("¿Que Quieres hacer?", 170,370);
  DibujaBoton(50,400);
  text("Aceptar",95,435);
  DibujaBoton(340,400);
  text("Volver",410,435);
}
if (pantalla == 14){
  image (img10,0,0, width, 300);
  DibujaCuadrodeTexto();
  text("Partcipas en una carrera de Minikart",50,370);
  text("*Final Mario Kart*",200,430);
  DibujaTriangulo();
}

//Mago Verde

if (pantalla == 15){
  image (img11, 100, 0, 400, 300);
  DibujaCuadrodeTexto();
  text("Al acercarte te das cuenta que",100,370);
  text("No es una chica! Es un mago!",100,430);
  DibujaTriangulo();  
}
if (pantalla == 16){
  image (img11, 100, 0, 400, 300);
  DibujaCuadrodeTexto();
  pushStyle();
  fill(#137C1A);
  text("¡JA! Caiste en mi trampa",140,370);
  text("Ahora tienes que obedecerme",100,430);
  popStyle();
  DibujaTriangulomini();
}
if (pantalla == 17){
  image (img11, 100, 0, 400, 300);
  DibujaCuadrodeTexto();
  text("¿Que Quieres hacer?", 170,370);
  DibujaBoton(50,400);
  text("Seguirlo",95,435);
  DibujaBoton(340,400);
  text("Volver",410,435);
}
if (pantalla == 18){
  image (img12,0,0, width, 300);
  DibujaCuadrodeTexto();
  text("El solo necesitaba un sacerdote para D&D",50,370);
  text("*Final NEEEEEEEEEERDDS*",120,430);
  DibujaTriangulo();
}

//Florista

if (pantalla == 19){
  image (img7, 100, 0, 400, 300);
  DibujaCuadrodeTexto();
  text("Entras a la tienda",160,370);
  text("Y te recibe un amable Florista",100,430);
  DibujaTriangulo();  
}
if (pantalla == 20){
  image (img7, 100, 0, 400, 300);
  DibujaCuadrodeTexto();
  pushStyle();
  fill(#9626DE);
  text("Hola queride",210,370);
  text("¿Me podrias ayudar a mover unas cosas?",50,430);
  popStyle();
  DibujaTriangulomini();
}
if (pantalla == 21){
  image (img7, 100, 0, 400, 300);
  DibujaCuadrodeTexto();
  text("¿Que Quieres hacer?", 170,370);
  DibujaBoton(50,400);
  text("Ayudarlo",95,435);
  DibujaBoton(340,400);
  text("Volver",410,435);
}
if (pantalla == 22){
  image (img8,0,0, width, 300);
  DibujaCuadrodeTexto();
  text("Te quedas ayudando al extraño hombre",50,370);
  text("*Final ayudante*",180,430);
  DibujaTriangulo();
}

//Sapo Dios

if (pantalla == 23){
  image (img13, 100, 0, 400, 300);
  DibujaCuadrodeTexto();
  text("En tus sueños ves a un sapo",130,370);
  text("Tocando una hermosa melodia",110,430);
  DibujaTriangulo();  
}
if (pantalla == 24){
  image (img13, 100, 0, 400, 300);
  DibujaCuadrodeTexto();
  pushStyle();
  fill(#FFF412);
  text("Oh please don't say that'll you'll go",70,370);
  text("My heart can't bear to lose...",110,430);
  popStyle();
  DibujaTriangulomini();
}
if (pantalla == 25){
  image (img13, 100, 0, 400, 300);
  DibujaCuadrodeTexto();
  text("¿Que Quieres hacer?", 170,370);
  DibujaBoton(50,400);
  text("Aplaudir",95,435);
  DibujaBoton(340,400);
  text("Despertar",380,435);
}
if (pantalla == 26){
  image (img14,0,0, width, 300);
  DibujaCuadrodeTexto();
  text("Has molestado al Dios de la musica",80,370);
  text("*Final Sapo Sensible*",175,430);
  DibujaTriangulo();
}

// Creditos

if (pantalla == 27){
  pushStyle();
  Fondo();
  DibujaTriangulomini();
  textSize(50);
  textAlign(CENTER);
  text("Creditos",300,250);
  popStyle();
}
if (pantalla == 28){
  Fondo();
  DibujaTriangulo();
  pushStyle();
  textAlign(CENTER);
  textSize(50);
  text("Idea basada en el juego de",300,200);
  textSize(30);
  text("Chris y Jordi",300,250);
  text("Developers Indie",300,300);
  popStyle();
}  
if (pantalla == 29){
  Fondo();
  DibujaTriangulomini();
  pushStyle();
  textAlign(CENTER);
  textSize(50);
  text("Ilustraciones",300,200);
  textSize(30);
  text("Creadas por Chris",300,250);
  text("Robadas por Galo",300,300);
  popStyle();
}  
if (pantalla == 30){
  Fondo();
  DibujaTriangulo();
  pushStyle();
  textAlign(CENTER);
  textSize(50);
  text("Programacion",300,200);
  textSize(30);
  text("Galo Valsangiacomo",300,250);
  text("Aun me duelen los dedos de escribir",300,300);
  popStyle();
}  
}  
// Modulos

void DibujaTriangulomini(){
  pushStyle();
  stroke(#FFFFFF);
  fill(#FFFFFF);
  triangle (300,475, 280,455,320,455);
  popStyle();
}  

void DibujaTriangulo(){
  pushStyle();
  stroke(#FFEB08);
  fill(#FFEB08);
  triangle (525,450,575,450,550,475);
  popStyle();
}
  
void DibujaCuadrodeTexto(){
  pushStyle();
  stroke(#6100E3);
  fill(#000000);
  rect(0, 300, 599, 199);
  rect(20, 320,560,160);
  popStyle();
}

void DibujaBoton(float x_,float y_){
  pushStyle();
  stroke(#6100E3);
  fill(#000000);
  rect(x_, y_, 200, 50);
  popStyle();
}
void DibujaBotonChico(float x_,float y_){
  pushStyle();
  stroke(#6100E3);
  fill(#000000);
  rect(x_, y_, 150, 50);
  popStyle();
}

void Fondo(){
  pushStyle();
  for (int a=0; a<20; a++) {
    fill(a*255/(20-1),0,a*255/(20-1));
    ellipse( random (1,width),a*height/20, width/20, width/20);}
  popStyle();
}

//Avance de pantallas y tomas de decisiones

void mouseClicked(){
  if (pantalla == 0){
    if ( 50 >= dist (mouseX, mouseY, 150,425)){
      pantalla = 1;}
      else if ((50 >= dist (mouseX, mouseY, 440,425)))
        pantalla = 27;}
  if (pantalla == 1){
    if ((25 >= dist (mouseX, mouseY, 550,460))){
    pantalla = 2;}
    if ((50 >= dist (mouseX, mouseY, 440,425)))
        pantalla = 23;}
  if (pantalla == 2){
    if ( 50 >= dist (mouseX, mouseY, 150,425)){
      pantalla = 3;}
      else if ((50 >= dist (mouseX, mouseY, 440,425)))
        pantalla = 23;}
  if (pantalla == 3){
    if ((25 >= dist (mouseX, mouseY, 550,460)))
    pantalla = 4;}
  if (pantalla == 4){
    if ( 25 >= dist (mouseX, mouseY, 125,425)){
      pantalla = 5;}
    if ((25 >= dist (mouseX, mouseY, 300,425))){
        pantalla = 9;}
    if ((25 >= dist (mouseX, mouseY, 485,425))){  
        pantalla = 19;}}
  if (pantalla == 5){
    if ((25 >= dist (mouseX, mouseY, 550,460))){
    pantalla = 6;
    }}
  if (pantalla == 6){    
    if ((25 >= dist (mouseX, mouseY, 300,465)))
    pantalla = 7;}
  if (pantalla == 7){
    if ( 50 >= dist (mouseX, mouseY, 150,425)){
      pantalla = 8;}
      else if ((50 >= dist (mouseX, mouseY, 440,425)))
        pantalla = 4;}
  if (pantalla == 8){
    if ((25 >= dist (mouseX, mouseY, 550,460)))
    setup ();}
  if (pantalla == 9){
    if ((25 >= dist (mouseX, mouseY, 550,460)))
    pantalla = 10;
    }
  if (pantalla == 10){
    if ( 25 >= dist (mouseX, mouseY, 125,425)){
      pantalla = 11;}
    if ((25 >= dist (mouseX, mouseY, 300,425))){
        pantalla = 15;}
    if ((25 >= dist (mouseX, mouseY, 485,425))){  
        pantalla = 3;}}
  if (pantalla == 11){
    if ((25 >= dist (mouseX, mouseY, 550,460))){
    pantalla = 12;
    }}
  if (pantalla == 12){    
    if ((25 >= dist (mouseX, mouseY, 300,465)))
    pantalla = 13;}
  if (pantalla == 13){
    if ( 50 >= dist (mouseX, mouseY, 150,425)){
      pantalla = 14;}
      else if ((50 >= dist (mouseX, mouseY, 440,425)))
        pantalla = 9;}
  if (pantalla == 14){
    if ((25 >= dist (mouseX, mouseY, 550,460)))
    setup ();}  
  if (pantalla == 15){
    if ((25 >= dist (mouseX, mouseY, 550,460)))
    pantalla = 16;
    }  
  if (pantalla == 16){
    if ((25 >= dist (mouseX, mouseY, 300,465)))
    pantalla = 17;}
  if (pantalla == 17){
    if ( 50 >= dist (mouseX, mouseY, 150,425)){
      pantalla = 18;}
      else if ((50 >= dist (mouseX, mouseY, 440,425)))
        pantalla = 9;}  
  if (pantalla == 18){
    if ((25 >= dist (mouseX, mouseY, 550,460)))
    setup ();}  
  if (pantalla == 19){
    if ((25 >= dist (mouseX, mouseY, 550,460)))
    pantalla = 20;
    }   
  if (pantalla == 20){    
    if ((25 >= dist (mouseX, mouseY, 300,465)))
    pantalla = 21;}
  if (pantalla == 21){
    if ( 50 >= dist (mouseX, mouseY, 150,425)){
      pantalla = 22;}
      else if ((50 >= dist (mouseX, mouseY, 440,425)))
        pantalla = 3;}  
  if (pantalla == 22){
    if ((25 >= dist (mouseX, mouseY, 550,460)))
    setup ();}  
  if (pantalla == 23){
    if ((25 >= dist (mouseX, mouseY, 550,460)))
    pantalla = 24;
    }   
  if (pantalla == 24){    
    if ((25 >= dist (mouseX, mouseY, 300,465)))
    pantalla = 25;}
  if (pantalla == 25){
    if ( 50 >= dist (mouseX, mouseY, 150,425)){
      pantalla = 26;}
      else if ((50 >= dist (mouseX, mouseY, 440,425)))
        pantalla = 3;} 
  if (pantalla == 26){
    if ((25 >= dist (mouseX, mouseY, 550,460)))
    setup ();}  
  if (pantalla == 27){    
    if ((25 >= dist (mouseX, mouseY, 300,465)))
    pantalla = 28;}
  if (pantalla == 28){    
    if ((25 >= dist (mouseX, mouseY, 550,460))){
    pantalla = 29;}}
  if (pantalla == 29){    
    if ((25 >= dist (mouseX, mouseY, 300,465)))
    pantalla = 30;}
  if (pantalla == 30){    
    if ((25 >= dist (mouseX, mouseY, 550,460))){
    setup ();}
}
}    
