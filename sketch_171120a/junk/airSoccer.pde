

class Player{
  PImage Barca;
  PImage Madrid;
  //float barcaX, barcaY;
  //data
  
  
  //constructor
  Player(){
    Barca = loadImage("barca.png");
    Madrid = loadImage("madrid.png");
   
  }
  //behavior
  void display(){
    imageMode(CENTER);
    float radius = Barca.width * .1;
    float barcaX = constrain(mouseX , 0, width/2);
    float barcaY = constrain(mouseY , 0, height);
    //if (mouseX <= 0+radius){
    //  barcaX = 0+radius;
      
    //}
    //else if (mouseX >= width - radius){
    //  barcaX = width-radius;
    //}
    //else if (mouseY <= 0 + radius){
    //  barcaY = 0 + radius;
    //}
    //else if (mouseY >= height- radius){
    //  barcaY = height- radius;
    //}
    
     image(Barca, barcaX,barcaY, width*.2, height*.2);
     
  }
  void display2(){
    image(Madrid, 600, 400, width * 0.1, height *.3);
    
  }
  
}