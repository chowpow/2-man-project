int centerX, centerY, rectX, rectY;
int goalTop, goalBottom, goalLeft, goalRight, goalWidth, goalHeight;
Player Barca, Madrid;

void setup(){
  size(1000, 600);
  centerX = width/2;
  centerY = 0;
  rectX = -3;
  rectY = 150;
  goalWidth = 40;
  goalHeight = 100;
  goalTop = 0;
  goalLeft = 250;
  goalRight  = goalLeft + goalWidth;
  goalBottom= goalTop + goalHeight;
  
  
  Barca = new Player();
  Madrid = new Player();
}

void draw(){
 drawPitch();
 Barca.display();
 Madrid.display2();
}
void drawPitch(){
  background(52,245,108);
  stroke(0);
  strokeWeight(3);
  fill(52,245,108);
  ellipse(centerX, height/2, 150, 150);
  line(centerX, centerY, centerX, centerY + height);
  rect(rectX, rectY, 180, 280);
  rect(width-177, rectY, 180, 280);
  drawGoal();
}
  
void drawGoal(){
  noStroke();
  fill(0, 0, 255);
  rect(goalTop-3, goalLeft, goalWidth, goalHeight);
  rect(width - goalWidth +3, goalLeft, goalWidth, goalHeight);
  
}