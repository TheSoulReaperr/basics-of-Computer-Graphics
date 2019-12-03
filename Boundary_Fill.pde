// Boundary Fill Algorithm
color border = color(0,0,0);
color fill = color(255,0,0);
void setup() {
  size(200,200);
  background(255);
  stroke(border);
  rect(50,50,100,100);
  Bound(51,51,border,fill);
}

void Bound(int x,int y,color b,color c) {
  color k = get(x,y);
  if(k != b && k !=c) {
    set(x,y,c);
    Bound(x+1,y,b,c);
    Bound(x,y+1,b,c);
  }
}
