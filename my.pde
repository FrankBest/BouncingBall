float x=100;
float yin=100;
float y;
float exceso;
float vx=5;
float gravedad=0.8;
float vy=0;
float diametro= 20;
float m1=random(500);
float n1=random(150,300);
float m2=random(500);
float n2=random(300,450);
float m3=random(500);
float n3=random(450,300);
float m4=random(600);
float n4=random(150);
int score=0;

void setup(){
  y=200;
  size(600,600);
  background(0);
  stroke (255);
  fill(255);
  smooth();
  frameRate(20);


}
void draw(){
  background(10);
  stroke(255);
  textSize(24);
  text(score,20,20);
  fill(255,0,0);
  stroke(255,0,0);
  ellipse(m4,n4,10,10);
  fill(255);
  stroke(255);
  ellipse(x,y,diametro,diametro);
  strokeWeight(5);
  line(m1,n1,m1+100,n1);
  line(m2,n2,m2+100,n2);
  line(m3,n3,m3+100,n3);
  y=y+vy;
  vy=vy+gravedad;  
  //rebote
  if ((keyPressed == true) && (key == 'd'))
  {
  x=x+vx;
  }
  if ((keyPressed == true) && (key == 'a'))
  {
  x=x-vx;
  }
  
  if(y>height-diametro/2){
    vy=-vy+gravedad;
    y=height-diametro/2;
  }  
  
  if(y<diametro/2){
    vy=-vy;
    y=diametro/2;
  }  
    if(x>width-diametro/2){
    x=width-diametro/2;
  }
  if(x<diametro/2){
    x=diametro/2;
  }
  
  if ((x>m4-10) && (x<m4+10) && (y>n4-10) && (y<n4+10))
  {
  m4=random(600);
  n4=random(150);
  score=score+1;
  }
  
  
  
  if((y>n1-diametro/2) && (y<n1+diametro/2) && (x>m1-diametro/2) && (x<m1+100+diametro/2))
  {
    if( vy>0 )
    {
      y=n1-diametro;
    }
    if( vy<0 )
    {
      y=n1+diametro;
    }
    vy=-vy;
  }
  
  
  if((y>n2-diametro/2) && (y<n2+diametro/2) && (x>m2-diametro/2) && (x<m2+100+diametro/2))
  {
    if( vy>0 )
    {
      y=n2-diametro;
    }
    if( vy<0 )
    {
      y=n2+diametro;
    }
    vy=-vy;
  }
  
  
  if((y>n3-diametro/2) && (y<n3+diametro/2) && (x>m3-diametro/2) && (x<m3+100+diametro/2))
  {
    if( vy>0 )
    {
      y=n3-diametro;
    }
    if( vy<0 )
    {
      y=n3+diametro;
    }
    vy=-vy;
  }
  
}
