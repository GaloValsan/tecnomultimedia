class Creditos{
  float x, y, movy;
  String Titulo;
  
  Creditos(){
  x = 630;  
  y = 600;
  movy = -2;
  Titulo = "Creditos\n\nJuego creado por\n\nGalo Valsangiacomo\n\nIDEA\n\nDevGnomes\n\nAgradecimientos\n\nDavid Bedoian\nAriel Dapia Graziani\n";
  
  }
  void mover(){
    y+=movy;
    
  }
}
