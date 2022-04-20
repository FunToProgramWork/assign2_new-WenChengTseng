PImage bgImg;
PImage soilImg;
PImage lifeImg;
PImage groundhogIdleImg;
PImage cabbageImg;
PImage soldierImg;
PImage startNormalImg;
PImage titleImg;
int x = 0;
int xPos = 320;
int yPos = 80;
void setup() {
	size(640, 480, P2D);
  bgImg = loadImage("img/bg.jpg");
  soilImg = loadImage("img/soil.png");
  lifeImg = loadImage("img/life.png");
  groundhogIdleImg = loadImage("img/groundhogIdle.png");
  cabbageImg = loadImage("img/cabbage.png");
  soldierImg = loadImage("img/soldier.png");

}

void draw() {
  
  image(bgImg,0,0);
  strokeWeight(15.0);
  stroke(124,204,25);
  line(0,155,680,155);
  image(soilImg,0,160);
  image(lifeImg,10,10);
  image(lifeImg,80,10);
  image(groundhogIdleImg,xPos,yPos);
  image(cabbageImg,560,160);
  image(soldierImg,x,320);
  x=x+1;
  if(x>640){
    x = -80;
  }
  strokeWeight(5.0);
  stroke(255,255,0);
  ellipse(590,50,120,120);
  fill(253,184,19);

}

void keyPressed(){
 if(keyPressed){
    if(key == 'w'){
      yPos -= 80;
    }
    if(key == 's'){
      yPos += 80;
    }
    if(key == 'a'){
      xPos -= 80;
    }
    if(key == 'd'){
      xPos += 80;
    }
  }
}
void keyReleased(){
}
