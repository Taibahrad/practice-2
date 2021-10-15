PFont font;
PImage img;
int fontSize = 45;
String message1 = "Hi BROTHER";
String message2 = "Hi SISTER";
int colorRange = 60;
int colorOffset = 200;

void setup() {
  size(800, 600, P2D);
  frameRate(60);

  img = loadImage("garden.jpg");

  font = createFont("Times New Roman", fontSize);
  textFont(font, fontSize);
  textAlign(CENTER);
  
  // These will draw only once
  background(colorOffset + random(0, colorRange), colorOffset + random(0, colorRange), colorOffset +  random(0, colorRange));
  image(img, 0, 0);  
}

void draw() {  
  if (mousePressed) {
    if (mouseX < width/2) {
      fill(200, 107, 50);
      text(message1, mouseX, mouseY);
    } else {
      fill(100, 255, 205);
      text(message2, mouseX, mouseY);
    }
  }
  
  line(width/2, 0, width/2, height);
  println(mouseX);
  
  surface.setTitle("" + frameRate);
}
