class Nota {
  float x, y, ancho, alto;
  float movX, movY;
  int contador;
  
  Nota(){
    x = random (0, width-40);
    y = random (-500, 0);
    ancho = 40;
    alto = 40;
    movX = 5;
    movY = 6;
  }
  void crear(){
    fill(255);
    image(img4,x,y,ancho,alto);

  }
  void mover(){
    y+=movY;
    if (y>height+alto/2){
      y=-alto/2;
      x= random (0, width -40 );
    }
  }
  void actualizar(){
    crear();
    mover();
  }
  boolean colision (float x_,float y_, float r_){
    if (dist (x,y,x_,y_) < ancho/2+r_){
      x = -25;
      y = 50;
      return true;
    }else{
      return false;
    }
    
  }
}
