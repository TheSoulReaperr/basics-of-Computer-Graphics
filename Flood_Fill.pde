// Flood Fill Algorithm
color old = color(100,50,0);
color fill = color(35,40,45);
void setup() {
  size(200,200);
  background(255);
  fill(old);
  rect(50,50,100,100);
  Flood(51,51,old,fill);
}

void Flood(int x,int y,color b,color c) {
  color k = get(x,y);
  if(k == b) {
    set(x,y,c);
    Flood(x+1,y,b,c);
    Flood(x,y+1,b,c);
  }
}
