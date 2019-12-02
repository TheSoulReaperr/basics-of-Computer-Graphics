//Bresenhams Line Drawing Algorithm
// Only works for lines with slope  < 1
void setup() {
  size(200,200);
  background(255);
  Line(50,150,150,50);
}

void Line(int x1,int y1,int x2,int y2) {
  point(x1,y1);
  while(x1!=x2 && y1!= y2) {
    float dx = x2-x1;
    float dy = y2-y1;
    float d2y = dy*2;
    float d2xy = d2y - dx;
    float p = d2y - dx;
    if(p<0) {
      x1++;
      p = p+d2y;
    } else {
      x1++;
      y1++;
      p = d2xy;
    }
    point(x1,y1);
  }
}
