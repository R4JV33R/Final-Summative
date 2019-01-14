class User
{
  float playerX;
  float playerY;
  
  User()
  {
    playerX=400;
    playerY=400;
  }
  
  void player()
  {
    fill (255,0,0);
   ellipse(playerX,playerY,20,20); 
  }  
}
