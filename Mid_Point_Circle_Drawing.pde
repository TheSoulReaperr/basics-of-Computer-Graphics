//Mid-Point Circle Drawing Algorithm

void setup() {
  size(200,200);
  background(255);
  Mid(50,100,100);
}

void Mid(int r,int xc,int yc) {
  translate(xc,yc);
  for(int i=0;i<8;i++) {
    int x=0,y=r;
    rotate(PI/4);
    point(0,r);
    int p = 1-r;
    while(x<y) {
      if(p<0) {
        x++;
        p += 2*x +1;
      } else {
        x++;
        y--;
        p += 2*x + 1 - 2*y;
      }
      point(x,y);
    }    
  }
}
