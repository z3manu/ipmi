PImage img;
void setup(){
    size (800,400);
    background(255);
    img=loadImage("manzanaV.png");
    strokeWeight(1);
    
}
void draw(){
  background(255);
  image(img,0,0,400,400);
        fill(166,203,2,255);
        noStroke();
        circle(605,226,200);
        circle(652,226,200);
          ellipse(679,195,180,220);
          ellipse(579,195,180,220);
          ellipse(604,226,180,220);
          ellipse(652,226,180,220);
    noStroke();
    //tallo
    fill(146,159,115,255);
    ellipse(603,93,59,142);
    fill(255);
    ellipse(595,98,59,142);
    //parte izq manzana
     fill(166,203,2,255);
     ellipse(579,195,180,220);
    //luces manzana
     fill(200,215,8,255);
      circle(612,225,180);
      circle(626,225,180);
    //sombra tallo
     fill(147,180,1,255);
     ellipse(623,114,50,25);
     fill(166,203,2,255);
     ellipse(620,110,49,20);
     //linea tallo
   strokeWeight(7);
   stroke(150,162,126,255);
   line(627,99,625,118);
   line(628,99,626,118);
}
void mouseClicked(){
  println(mouseX,mouseY);
}
