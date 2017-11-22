class Ball {
  //data
  PImage ball;
  PVector ballLocation;
  float dx, dy, imageScale;

  //constructor
  Ball(String imageName) {
    ball = loadImage(imageName);
    ballLocation = new PVector(width / 2, height / 2);
    dx = random(-20, 20);
    dy = random(-20, 20);
    imageScale = 0.4;
  }

  //behaviour
  void bounceBall() {
    ballLocation.x = ballLocation.x + dx;
    ballLocation.y = ballLocation.y + dy;

    bounceIfRequired();

    image(ball, ballLocation.x, ballLocation.y, ball.width*imageScale, ball.height*imageScale);
  }

  void bounceIfRequired() {
    if (ballLocation.x > width - ball.width*imageScale/ 2 || ballLocation.x < 0 + ball.width*imageScale / 2) {
      dx *= -1;
    }
    if (ballLocation.y > height - ball.height*imageScale/ 2 || ballLocation.y < 0 + ball.height*imageScale / 2) {
      dy *= -1;
    }
  }
}