// import gui library
import controlP5.*;

// Create public gui holder
ControlP5 cp5;

int num = 50;
int threshold = 100;
int RED = 120;
int BLUE = 254;
int GREEN = 207;
int BGR = 10;
int BGG = 20;
int BGB = 30;
boolean showCircles = true;

Circle c1;
ArrayList<Circle> particles = new ArrayList<Circle>();



void setup() {
  size(1920, 1080);
  background(255);



  for (int i = 0; i < num; i++) {
    c1 = new Circle();
    particles.add(c1);
  }

  // instantiate slider
  cp5 = new ControlP5(this);
 
  cp5.addSlider("threshold")
    .setPosition(20, 20)
    .setRange(0, 1000); 
    
    cp5.addSlider("num")
    .setPosition(20,40)
    .setRange(0, 50);
    
     cp5.addSlider("RED")
    .setPosition(20,60)
    .setRange(0, 256);
    
    cp5.addSlider("BLUE")
    .setPosition(20,80)
    .setRange(0, 256);
    
     cp5.addSlider("GREEN")
    .setPosition(20,100)
    .setRange(0, 256);
    
         cp5.addSlider("BGR")
    .setPosition(20,120)
    .setRange(0, 255);
    
             cp5.addSlider("BGB")
    .setPosition(20,140)
    .setRange(0, 255);
    
             cp5.addSlider("BGG")
    .setPosition(20,160)
    .setRange(0, 255);
}



void draw() {
  background(BGR, BGG, BGB);

  for (int i = 0; i < num; i++) {

    for (int j = 0; j < num; j++) {
      if (i != j) {
        float dist = dist(particles.get(i).pos.x, particles.get(i).pos.y, particles.get(j).pos.x, particles.get(j).pos.y );

        if (dist < threshold) {
          float alpha = map(dist, 0, threshold, 255, 0);
          stroke(RED, GREEN, BLUE, alpha);
          line(particles.get(i).pos.x, particles.get(i).pos.y, particles.get(j).pos.x, particles.get(j).pos.y);
        }
      }
    }
    
    particles.get(i).updateCircle();
    particles.get(i).drawCircle();
  }
}