class Particle{
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  float r,g,b;
  float rad;
  
  Particle(PVector l){
    location = l.get();
    velocity = new PVector(random(PI),random(-PI));
    acceleration = new PVector(0,0.05);
    lifespan = 255.0;
    r = random(100,200);
    g = 200;
    b = random(0,0);
    rad = random(-TWO_PI, PI);
  }
  
  
  void run(){
    update();
    display();
  }
  
  void display(){
    noStroke();
    fill(r,g,b,lifespan);
    ellipse(location.x/2, location.y, rad,rad);
    
    fill(r,g,random(-b, b),lifespan);    
   ellipse(location.x+100, location.y+10, rad,rad);
    
    fill(r,random(-g, g),b,lifespan);    
    ellipse( location.y+10,location.x-100, rad,rad);

    fill(random(-r,r),random(-g, g),b,lifespan);    
   ellipse( location.y*5,location.x-10, rad,rad);
    
    noStroke();
    fill(r,g,b,lifespan);
   ellipse(location.x, location.y, rad,rad);
    
    fill(r,g,random(-b, b),lifespan);    
   ellipse(location.y+10, location.x+100,  rad,rad);
  }
  
  void update(){
    velocity.add(acceleration);
    location.add(velocity);
    lifespan -= 2.0;
  }
  
  boolean isDead(){
    if(lifespan<0.0){
      return true;
    }
    else{
      return false;
    }
  }
}
