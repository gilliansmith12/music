//sketch - import library - install minim -

//Libraries
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim; //creates object to access all functions
int numberOfSongs = 3;
AudioPlayer[] song = new AudioPlayer[numberOfSongs]; //creates "Play List" variable dholding extensions WAV, AIFF, AU, SND, and MP3
int currentSong = numberOfSongs-numberOfSongs; //Current Song is 0

void setup() {
  fullScreen();
  population();
  powerButton();
  textSetup();
  //
  minim = new Minim(this);
  song[currentSong] = minim.loadFile("media/Tropic Fuse - French Fuse.mp3");
  song[currentSong+1] = minim.loadFile("media/Oman Groomer - Mini Vandals.mp3");
  song[currentSong+2] = minim.loadFile("media/In Memory of Jean Talon - Mini Vandals.mp3");
  //song1.play(); //number in the bracket starts it ___ miliseconds in
} //End Setup

void draw() {
  powerButtonDraw();
} //End Draw

void keyPressed() {
  currentSong ++;
  if ( key == 'l' || key == 'L' ) song[currentSong].loop(0);
} //End KeyPressed

void mousePressed() {
  powerButtonMousePressed();
} //End MousePressed
