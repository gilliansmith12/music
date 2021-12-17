//Global Variables
PFont font;
color white = #FFFFFF, black = #000000;

void textSetup() {
  rect(powerButtonX, powerButtonY, powerButtonWidth, powerButtonHeight);
  population();
} //End textQuitButton

void textCode(String powerButtonText, int size, float powerButtonX, float powerButtonY, float powerButtonWidth, float powerButtonHeight) {
  fill(black); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(font, size); //Change the number until it fits, largest font size
  //textFont() has option to combine font declaration with textSize()
  //Drawing Text
  text(powerButtonText, powerButtonX, powerButtonY, powerButtonWidth, powerButtonHeight);
  fill(white); //reset
} //End Text()
