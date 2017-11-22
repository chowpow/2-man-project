PImage ball;
PVector ballLocation;
float dx, dy;


void setup() {
  size(1000, 600);
  ballLocation = new PVector(width/2, height/2);
  
  ball = loadImage("will.png");
  imageMode(CENTER);
  
  dx = random(-20, 20);
  dy = random(-20, 20);
}

void draw() {
  background(54, 245, 108);
  bounceBall();
  image(ball, ballLocation.x, ballLocation.y, ball.width*0.05, ball.height*0.05);
}

void bounceBall() {
  ballLocation.x = ballLocation.x + dx;
  ballLocation.y = ballLocation.y + dy;
  
  bounceIfRequired();
}

void bounceIfRequired() {
  if (ballLocation.x > width - ball.width*0.05 / 2 || ballLocation.x < 0 + ball.width*0.05 / 2) {
    dx *= -1;
  }
}