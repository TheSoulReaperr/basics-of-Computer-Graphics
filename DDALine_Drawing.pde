
void setup() {
  size(200,200);
  background(255);
  dda(50,150,150,50);
}

void dda(int x1,int y1,int x2, int y2) {
  int dx = x2-x1;
  int dy = y2-y1;
  float xc,yc,x=x1,y=y1;
  int steps = 0;
  if(abs(dx)>abs(dy)) 
    steps = abs(dx);
  else steps = abs(dy);
  xc = dx/steps;
  yc = dy/steps;
  point(x,y);
  for(int i=0;i<steps;i++) {
    x+=xc;
    y+=yc;
    point(x,y);
  }
}
