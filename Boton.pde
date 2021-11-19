class Boton {
  float x, y, ancho, alto;
  String label;
  
  Boton (String label_, float x_, float y_, float ancho_, float alto_){
    x = x_;
    y = y_;
    label = label_;
    ancho = ancho_;
    alto = alto_;
  }
    
  void actualizar(){
    dibujar();
    }
  
  void dibujar(){
//Boton
    pushMatrix();
    pushStyle();
    translate(x,y);
    if (mouseEstaEncima()) {
      fill(#FFC400);}
      else {
        fill(#FFE600);}
    stroke(#000000);
    strokeWeight(2);
    rectMode(CENTER);
    rect(0, 0, 200, 50,5);
// Texto
    fill(#000000);
    textAlign (CENTER,CENTER);
    text(label, 0, 0); 
    popMatrix();
    popStyle();
  }
  boolean mouseEstaEncima(){
    if (mouseX > x-ancho/2 && mouseX < x+ancho/2 && mouseY > y-alto/2 && mouseY < y+alto/2){
      return true;}
      else{
        return false;}
  }
}
