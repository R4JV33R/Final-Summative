class Enemy
{
  float Xs [] = new float [COUNT];
  float Ys [] = new float [COUNT];
  float colour [] = new float [COUNT];
  boolean colorTrue[] = new boolean[COUNT];
  //default Constructor
  Enemy()
  {
    for (int i=0; i < COUNT; i++)
    {
      Xs[i]=random(0, 800);
      Ys[i]=random(0, 800);
      colour[i] =  random (0, 1);
      if ( colour[i] > 0.5)
      {
        colour[i] = 100;
      } else 
      {
        colour[i] = 255;
      }
    }
  }


  void render()
  {
    for (int i=0; i < COUNT; i++)
    {



      fill (colour [i], 0, 0);
      ellipse(Xs[i], Ys[i], 40, 40);
    }
  }

  void move()
  {
    for (int i=0; i<COUNT; i++)
    {
      //speed and position of 
      Ys[i] = Ys[i] + 2;


      // repeating
      if (Ys[i] > height)
      {
        Ys[i] = 0;
        Xs[i] = random(width);
      }
    }
  }
}
