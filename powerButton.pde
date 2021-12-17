//Global Variables
color purple = #FF03F3, yellow = #FFF703, resetColour = #FFFFFF, buttonColour;
float powerButtonX, powerButtonY, powerButtonWidth, powerButtonHeight;
float resetStroke = 1;
String powerButtonText = "POWER";

void powerButton() {
  //Population
  population();
  //
  rect(powerButtonX, powerButtonY, powerButtonWidth, powerButtonHeight);
} //End PowerButton

void powerButtonDraw() {
  //Hoverover
  if ( mouseX > powerButtonX && mouseY > powerButtonY && mouseX < powerButtonX+powerButtonWidth && mouseY < powerButtonY+powerButtonHeight ) {
    buttonColour = yellow;
    hoverOverButtonFill();
    } else {
      buttonColour = purple;
      hoverOverButtonFill();
    } // End Hoverover
  //Text
  textCode(powerButtonText, 50, powerButtonX, powerButtonY, powerButtonWidth, powerButtonHeight);
} //End PowerButtonDraw

void powerButtonMousePressed() {
  if ( mouseX > powerButtonX && mouseY > powerButtonY && mouseX < powerButtonX+powerButtonWidth && mouseY < powerButtonY+powerButtonHeight ) exit();
} //End PowerButtonMousePressed

void hoverOverButtonFill() {
  fill(buttonColour);
  noStroke();
  rect(powerButtonX, powerButtonY, powerButtonWidth, powerButtonHeight);
  stroke(resetStroke);
  fill(resetColour);
} //End HoverOverButtonFill
