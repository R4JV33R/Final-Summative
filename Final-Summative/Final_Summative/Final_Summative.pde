import processing.sound.*;
SoundFile file;
int COUNT =40;
int playerX = 400;
int playerY = 400;
int score;
PImage square;
int screen;
Enemy enemy;

void setup()
{
  size (800, 800);
  square = loadImage ("shapes.jpg");
  square.resize(800, 800);
  //song
  file = new SoundFile(this, "dash.mp3");
  file.play();
  enemy = new Enemy();
  screen = 1;
}

void draw()
{

  if (screen == 1)
  {
    background(square);
    enemy.render();
    enemy.move();
    textSize(32);
    text("Score"+score, 10,30);
    fill (255, 0, 0);
    ellipse(playerX, playerY, 20, 20);


    for (int i=0; i < COUNT; i++)
    {
      if (dist(playerX, playerY, enemy.Xs[i], enemy.Ys[i])<20)
      
      {
        if (enemy.colour[i] == 100)
        {
          screen = 2;
        }
        
        if (enemy.colour[i] == 255)
        {
          score+=100;
          enemy.Ys[i]=0;
          enemy.Xs[i]=random(0,800);
        }
      }
    }
    if (screen == 2)
    {
      background(0);
      textSize(50);
      text ("You Lose", 325, 400);
    }
  }
}

void keyPressed()
{
  if (keyCode == RIGHT)
  {
    playerX+=10;
  }
  if (keyCode == LEFT)
  {
    playerX-=10;
  }
  if (keyCode == DOWN)
  {
    playerY+=10;
  }
  if (keyCode == UP)
  {
    playerY-=10;
  }
}
