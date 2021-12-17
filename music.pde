//sketch - import library - install minim -

//Libraries

//Global Variables
Minim minim; //creates object to access all functions
AudioPlayer song1; //creates "Play List" variable dholding extensions WAV, AIFF, AU, SND, and MP3

void setup() {
  fullScreen();
  population();
  powerButton();
  textSetup();
  //
  minim = new Minim(this);
  song1 = minim.loadFile("Tropic Fuse - French Fuse.mp3");
  song1.play(); //number in the bracket starts it ___ miliseconds in
} //End Setup

void draw() {
  powerButtonDraw();
} //End Draw

void mousePressed() {
  powerButtonMousePressed();
} //End MousePressed
