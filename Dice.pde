 Die bob;
          Die boo;
          Die bub;
          Die bib;
          Die bir;
          Die bor;
          Die bee;
          Die bun;
          int sum=0;
          
          
        void setup()
  {
      noLoop();
      size(600,600);
      
  }

  void draw()
  {
background(178,172,136);
int i=0;
while(i<10){
Die bob=new Die(i*60+5,i*20+10);
Die boo=new Die(i*60+5,i*20+70);
Die bub=new Die(i*60+5,i*20+130);
Die bib=new Die(i*60+5,i*20+190);
Die bir=new Die(i*60+5,i*20+250);
Die bor=new Die(i*60+65,i*20-30);
Die bee=new Die(i*60+5,i*20+310);
Die bun=new Die(i*60+5,i*20+370);
bob.show();
boo.show();
bub.show();
bib.show();
bir.show();
bor.show();
bee.show();
bun.show();
bob.roll();
boo.roll();
bub.roll();
bib.roll();
bir.roll();
bor.roll();
bee.roll();
bun.roll();
sum+=bob.dot;
sum+=boo.dot;
sum+=bub.dot;
sum+=bib.dot;
sum+=bir.dot;
sum+=bor.dot;
sum+=bee.dot;
sum+=bun.dot;



i++;




  }
  fill(0);
textSize(25);
text("Total Sum:"+sum, 50,530);
}
 
  void mousePressed()
  {
      redraw();
      sum=0;
  }
  class Die //models one single dice cube
  {
      int myX,myY,dot;
      //define # between 1 and 6
      
      Die(int x, int y) //constructor
      {
          myX=x;
          myY=y;
          dot=(int)((Math.random()*6)+1);
          
      }
      void roll()
      {
      
          if(dot==1){
            fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
            ellipse(myX+25,myY+25,10,10);
          }else if(dot==2){
            fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
            ellipse(myX+35,myY+15,10,10);
   
            ellipse(myX+15,myY+35,10,10);
          }
          else if(dot==3){
            fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
            ellipse(myX+35,myY+15,10,10);
            ellipse(myX+15,myY+35,10,10);
            ellipse(myX+25,myY+25,10,10);
          }else if(dot==4){
            fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
            ellipse(myX+35,myY+15,10,10);
            ellipse(myX+15,myY+35,10,10);
            ellipse(myX+15,myY+15,10,10);
            ellipse(myX+35,myY+35,10,10);
          }else if(dot==5){
            fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
            ellipse(myX+35,myY+15,10,10);
            ellipse(myX+15,myY+35,10,10);
            ellipse(myX+15,myY+15,10,10);
            ellipse(myX+35,myY+35,10,10);
            ellipse(myX+25,myY+25,10,10);
          }else if(dot==6){
            fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
            ellipse(myX+35,myY+15,10,10);
            ellipse(myX+15,myY+35,10,10);
            ellipse(myX+15,myY+15,10,10);
            ellipse(myX+35,myY+35,10,10);
            ellipse(myX+15,myY+25,10,10);
            ellipse(myX+35,myY+25,10,10);
          }
      }
      void show()
      {
          stroke(0, 0, 0);
          fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
          rect(myX,myY,50,50,10);
      }
  }

