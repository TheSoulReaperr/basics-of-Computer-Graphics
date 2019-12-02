// Bresenhams Circle Drawing
// Could only draw half of a quadrant
void setup() {
  size(200,200);
  background(255);
  Circle(50,100,100);
}

void Circle(int r,int x,int y) {
  translate(x,y);
  int xi=0,yi=r;
  int di = 2*(1-r);
  while(yi > 0) {
    point(xi,yi);
    if(di<0) {
      int p = 2*di + 2*yi -1;
      if(p<=0) {
        xi++;
        di += 2*xi + 1;
      } else {
        xi++;
        yi--;
        di += 2*xi - 2*yi + 2;
      }
    } else if(di > 0) {
      int p = 2*di - 2*xi -1;
      if(p<=0) {
        xi++;
        yi--;
        di += 2*xi - 2*yi + 2;
      } else {
        yi--;
        di += 2*yi + 1;
      }
    }
  }
}
