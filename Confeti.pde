class Gota {
  float x = random(width);
  float y = random(-500, -50);
  float dista = random(3, 14);
  float movY = dista;
  float peso = dista;
  
  void caida() {
       y += movY;
       movY += 0.02;
       
       if (y > height) {
         x = random(width);
         y = random(-500, -50);
         movY = dista;
       }
  }
  
  void crear() {
    stroke(138, 43, 226);
    strokeWeight(peso/12);
    line(x, y, x, y+dista);
  }
}
