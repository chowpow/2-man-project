class Ball {
  //data 
  PImage ball;
  float dx, dy, friction, imageScale;
  float x, y, radius;
  
  //constructor
  Ball(String imageName, float _imageScale, float _x, float _y) {
    x = _x;
    y = _y;
    ball = loadImage(imageName);
    dx = random(-20, 20);
    dy = random(-20, 20);
    friction = -0.8;
    imageScale = _imageScale;
    radius = ball.width * imageScale /2;
  }
  
  void display() {
    image(ball, x, y, ball.width*imageScale, ball.height*imageScale);
  }
  
  //behaviour
  void bounceBall() {
    x += dx;
    y += dy;
    
    bounceIfRequired();
  }
  
  void bounceIfRequired() {
    if (x > width - ball.width*imageScale/ 2 || x < 0 + ball.width*imageScale / 2) {
      dx *= -1;
    }
    if (y > height - ball.height*imageScale/ 2 || y < 0 + ball.height*imageScale / 2) {
      dy *= -1;
    }
  }
  
  void checkCollision(Ball otherBall) {
    float distanceBetweenBalls = dist(x, y, otherBall.x, otherBall.y);
    float sumOfRadii = radius + otherBall.radius;
    
    if (distanceBetweenBalls <= sumOfRadii) {
      float tempdx = dx*(1.05);
      float tempdy = dy*(1.05);
      
      dx = otherBall.dx;
      dy = otherBall.dy;
      
      otherBall.dx = tempdx;
      otherBall.dy = tempdy;
    }
  }
}