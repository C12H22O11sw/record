
void setup(){

picRecord = loadImage("record.jpg");
size(picRecord.width,picRecord.height);  
    image(picRecord, 0, 0);
  /*    import ddf.minim.*;     //at the very top of your sketch
  Minim minim;        //as a member variable
  AudioPlayer song;      //as a member variable
  minim = new Minim(this);    //in the setup method
  song = minim.loadFile("awesomeTrack.mp3", 512);//in the setup method
song.play();*/
}
PImage picRecord;
  void rotateImage(PImage image, int amountToRotate) {
      translate(width/2, height/2);
      rotate(amountToRotate*TWO_PI/360);                              
      translate(-image.width/2, -image.height/2);
}
int angle = 0;
int speed = 0;
void draw(){

if(mousePressed){

speed++;

}
else if(speed>0){
   speed-=1; 
}
else{
//angle=0; 
}
angle+=speed;
rotateImage(picRecord,angle);
image(picRecord, 0,0);

}
