// Scan Line Algorithm
color fill = color(35,40,45);
color border = color(0,0,0);
void setup() {
  size(200,200);
  background(255);
  stroke(border);
  rect(50,50,100,100);
  scan(51,150,fill,border);
}

void scan(int y1,int y2,color c,color b) {
  boolean inside = false;
  for(int y=y1;y<y2;y++) {
    for(int x=0;x<width;x++) {
      color k = get(x,y);
      if(k == b && inside)  inside = false;
      else if(k == b && !inside)  inside = true;
      if(inside) set(x,y,c);
    }
  }
}
