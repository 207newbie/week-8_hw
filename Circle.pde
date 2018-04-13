class Circle {
  PVector pos;
  PVector velocity;
  
  int radius;
  
  int red = 123;
  int blue = 254;
  int green = 207;
  
  
  Circle() {
    radius = 3;
    pos = new PVector(random(width),random(height));
    velocity = new PVector(random(3) - 1,random(3) - 1);

 }
 
   
 
  void updateCircle() {
    pos.x += velocity.x;
    pos.y += velocity.y;
     
    if (pos.x > (width + radius)) {
      pos.x = 0 -radius;
    }
     
    if (pos.x < (0 - radius)) {
      pos.x = width + radius;
    }
     
    if (pos.y > (height + radius)) {
      pos.y = 0 - radius;
    }
     
    if (pos.y < (0 - radius)) {
      pos.y = height + radius;
    }
    
      
  
  if (radius < 1.9) {
    radius = radius + radius/8;
  }
  
 if (radius > 3.5) {
   radius = radius - radius/8;
 }
  }
  
  
   void drawCircle() {
    noStroke();
    float rr = abs(sin(millis()*0.1)*255);
    float gg = abs(sin(millis()*0.1)*255);
    float bb = abs(sin(millis()*0.1)*255);
    print(rr);
    fill(rr, gg, bb);
    ellipse(pos.x, pos.y, radius, radius);
    

if (red < 124) {
  red = red - 1;
}
if (red > 50) {
  red = red +1;
}
if (blue < 90) {
  blue = blue + 1;
}
if (blue > 90) {
  blue = blue - 1;
}
if (green > 240) {
  green = green -1;
}
if (green < 121) {
  green = green + 1;
}

println (radius);

}
   
}