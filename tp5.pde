//Alumno Galo Valsangiacomo. 
//Legajo 88278/7.
//Trabajo Practico num 5 "Videojuego"
//Link a youtube https://youtu.be/r76IGnmy_HY


int pantalla = 0, vidas,num = 500,cantNotas = 50;
PFont miFuente;
PImage img1, img2,img3, img4, img5, img6, img7, img8;
float angle, contador;
PVector[] gotas = new PVector[num];
PVector[] velocidad = new PVector[num];
float[] tam = new float[num];

Creditos creditos = new Creditos();
Nota [] Notas;
Heroe Titere;
Boton boton1;
Boton boton2;

void setup(){
  size (800,600);
  img7 = loadImage("Trofeo.png");
  img6 = loadImage("Corazon.png");
  img5 = loadImage("Rojo.png");
  img4 = loadImage("Nota.png");
  img3 = loadImage("Inicio.png");
  img2 = loadImage("Rana_Derrota.png");
  img1 = loadImage("Fondo.png");
  miFuente = loadFont("Candara-48.vlw");
  textFont (miFuente, 30);
  vidas = 3;
  Notas = new Nota[cantNotas];
  for (int i = 0; i<cantNotas; i++){
    Notas[i] = new Nota();
  }
  Titere = new Heroe();
  boton1 = new Boton("Comenzar",280,500, 200, 50);
  boton2 = new Boton("Creditos",520,500, 200, 50);

  for(int i =0; i<num; i=i+1)
 {
  gotas[i] = new PVector(random(width),random(-height,-10));
  velocidad[i] = new PVector(0,random(5,8));
  tam[i]=  random(0,2);
 }
}


void draw(){
  background(#F2AA18);
  if (pantalla == 0){
    
    fill(#0F0F0F);
    image (img1, 0, 0, width, height);
    image (img3,120, 200, 550, 200);
    boton1.actualizar();
    boton2.actualizar();
    }
    
 if (pantalla == 1){
   image (img1, 0, 0, width, height);
   image (img6, 25, 15 ,40 ,40);
   noCursor();
   for (int i = 0; i<cantNotas; i++){
     Notas[i].actualizar();
  }
   Titere.actualizar();
   for (int i = 0; i<cantNotas; i++){
     if (Notas[i].colision(Titere.x, Titere.y, Titere.ancho/2)){
      vidas--;
    }
     if (vidas<1){
      pantalla = 3;
    }
  }
  
  textSize(30);
  fill(000000);
  text (vidas,40, 40);
  int elapsed = int(millis()-contador)/1000;
  text (Titere.contador-elapsed,width-40, 40);

  if (Titere.contador <= elapsed)
    pantalla =6;
 }
  
 if (pantalla == 3){
   cursor();
   pushStyle();
   background(#050505);
   fill(#FFFFFF);
   textSize(90);
   text("DERROTA",200,170);
   textSize(30);
   text("Haz Click para reiniciar",250,480);
   imageMode(CENTER);
   image (img2, width/2, height/2, 200, 200);
   popStyle();
   
 }
  if (pantalla == 4 || pantalla == 5){
   float x = width;
   float dia = 120;
   int num = 70;
   pushMatrix();
   translate(width/2, height/2);
   fill(#FFFA5F);
   for (int a=0; a<360; a+=45) {
     rotate(radians(a));
     pushMatrix();
     for (int i=0; i<num; i++) {
      scale(0.92);
      rotate(radians(angle));
      noStroke();
      ellipse(x, 0, dia, dia);
    }
    popMatrix();
  }
  popMatrix();
  angle+=0.04;
  fill(#4C057C);
  textSize(70);
  text(creditos.Titulo, 0, creditos.y);
  creditos.mover();
  }
  
  if (pantalla == 6){
   cursor();
   image (img7, 295, 100, 200, 200);
   pushMatrix();
   fill(#FFFFFF);
   textSize(90);
   text("¡FELICITACIONES!",85,400);
   popMatrix();
   for(int a=0; a<gotas.length; a=a+1)
  {
    gotas[a].add(velocidad[a]);
  
  strokeWeight(tam[a]);
  stroke(random(0,255),random(0,255),random(0,255));
  fill(#FFFFFF);
  rect(gotas[a].x,gotas[a].y,1,5);
  if(gotas[a].y > height-10)
  {
   gotas[a].y=random(-height,-10);
   gotas[a].x=random(width);
   
  }
  }
  }
 }

void mouseClicked(){
  if (pantalla == 0){
    if ( boton1.mouseEstaEncima()){
      pantalla = 1;
      contador = millis();}
      else 
    if ( boton2.mouseEstaEncima()){
      pantalla = 4;
        }
  
  }
    
  if (pantalla == 3 || pantalla == 5){
    setup();
    pantalla = 0;
    creditos = new Creditos();
  }
  if (pantalla == 4){
    pantalla = 5;
    setup();}
  if (pantalla == 6){
    pantalla = 0;
    setup();}
}
