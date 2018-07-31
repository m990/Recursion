void setup(){
  size(1000, 1000);
}

void draw(){
  drawCircle(100, 100);
  drawSquare(100, 100, 100, 100);
  drawTriangle(500, 500, 600, 500, 600, 550);
}

void drawCircle(int w, int h){
  ellipse(100, 100, w, h);
  if (w > 10) drawCircle(w-10, h-10);
}

void drawSquare(int x, int y, int w, int h){
  rect(x, y, w, h);
  if (w > 10) drawSquare(x+5, y+5, w-10, h-10);
}
void drawTriangle(int x1, int x2, int x3, int y1, int y2, int y3){
  triangle(x1, x2, x3, y1, y2, y3);
  if (x1 > x1+90) drawTriangle(--x1, --x2, --x3, --y1, --y2, --y3);
}