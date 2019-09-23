int ballx=50;
int speedx=8;
float xspeed = 2.8;  // Speed of the shape
float yspeed = 2.2;  // Speed of the shape
int xdirection = 1;  // Left or Right
int ydirection = 1;  // Top to Bottom
int rad = 60;        // Width of the shape
float xpos, ypos;    // Starting position of shape 
void setup(){
size(500,500);
frameRate(60);
  xpos = width/2;
  ypos = height/2;
  
} // end set up

void draw(){
background(255,255,0);
rectMode(CENTER);
fill(0,0,255);
rect(width/2, height/2,width-50,height-50);
fill(255,0,0);



if ((ballx > width-35)||(ballx <35)){
switchdirection();
} // end of the if ballx

ballx = ballx + speedx;
  xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );

  if (xpos > width-rad || xpos < rad) {
    xdirection *= -1;
  }
  if (ypos > height-rad || ypos < rad) {
    ydirection *= -1;
  }

 ellipse(xpos, ypos, rad, rad);

} // end draw