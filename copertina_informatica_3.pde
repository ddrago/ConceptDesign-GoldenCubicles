float dimensione = 51;
int rotazione;

void setup() {
  size(600, 920);
  background(46,5,36);
  strokeWeight(1.5);
  noLoop();
}

void draw() {
  for (int j=0; j<11; j++)
  {

    for (int i=0; i<7; i++)
      {
        push();
        translate(62, 63);
        translate(i*(dimensione+dimensione/2+3), j*(dimensione+ dimensione/2+3));
        
        if (j%2 == 0)
        {
          stroke(255,215,0);
        }
        else
        {
          stroke(255,250,164);
        }
        
        rotazione = int(random(4));

        rotate(PI*rotazione/2);
        noFill();
        beginShape();
        vertex(-dimensione/2, dimensione/2); 
        vertex(-dimensione/2, -dimensione/2);
        vertex(dimensione/2, -dimensione/2);
        vertex(dimensione/2, dimensione/2);
        endShape();

        pop();
      } 
  } 
} 
