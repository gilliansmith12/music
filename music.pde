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
AudioPlayer song1; //creates "Play List" variable dholding extensions WAV, AIFF, AU, SND, and MP3

void setup() {
  fullScreen();
  population();
  powerButton();
  textSetup();
  //
  minim = new Minim(this);
  song1 = minim.loadFile("media/Tropic Fuse - French Fuse.mp3");
  //song1.play(); //number in the bracket starts it ___ miliseconds in
} //End Setup

void draw() {
  powerButtonDraw();
} //End Draw

void keyPressed() {
  if ( key == 'p' || key == 'P' ) {
    if ( song1.isPlaying() ) {
      song1.pause();
      } else if ( song1.position() >= song1.length()-1000 ) {
        song1.rewind();
        song1.play();
        } else {
          song1.play();
        }
      }
  // Play - Stop
  if ( key == 's' ) {
    if ( song1.isPlaying() ) {
      song1.pause();
      song1.rewind();
      } else {
        song1.rewind();
      }
  }
  // Fast Forward
  if ( key == 'f' ) {
    song1.skip(5000);
  }
  // Fast Rewind
  if ( key == 'r' ) {
    song1.skip(-5000);
  }
  // Mute
  if ( key == 'm' ) {
    if ( song1.isMuted() ) {
      song1.unmute();
      } else {
        song1.mute();
      }
    }
} //End KeyPressed

void mousePressed() {
  powerButtonMousePressed();
} //End MousePressed
