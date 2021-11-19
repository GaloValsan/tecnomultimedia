class Heroe {
  float x, y, ancho, alto;
  float movX, movY;
  int contador = 15;
  
  Heroe(){
    x = random (50, width-50);
    y = random (50, height-50);
    ancho = 40;
    alto = 60;
    movX = 0;
    movY = 0;
  }
  void crear(){
    fill(#00EFF5);
    image(img5,x,y,ancho,alto);

  }
  void mover(){
   x = mouseX-20;
   y = mouseY-20;
    }
  
  void actualizar(){
    crear();
    mover();
  }
}
