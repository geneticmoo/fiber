//some changes monster class
//comment line 2
Monster monster;

void setup() {
    size(400, 400);
    monster = new Monster();
}
    
void draw() {
    background(0);
    stroke(255);
    fill(255,0,0);
    
    monster.draw(width/2, height/2);
}



class Creature{
  void draw(){
    ellipse(width/2,height/2,50,50);
  }  
}

class Monster extends Creature{
  
  void draw(int mx, int my){
    float phase = frameCount * 0.015;       // determine a ‘phase’ for the sine function
    float x = sin(phase);                   // we will use this value for animating radius and lineWidth
    float radius = map(x, -1, 1, 40, 100);  // determine the radius
    float lineWidth = map(x, -1, 1, 0, 5);  // and the lineWidth
    strokeWeight(lineWidth);                // set the lineWidth
    
    pushMatrix();
    translate(mx,my);
    rect(0, 0, radius, radius);  // draw a circle with the radius
    ellipse(radius*0.2,radius*0.2,20,20);
    ellipse(radius*0.7,radius*0.2,20,20);
    rect(radius*0.2,radius*0.5,100,20);
    fill(255);
    rect(radius*0.2+30,radius*0.5,70,20);
    popMatrix();
  }
}


