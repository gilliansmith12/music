void musicPlayerButtons() {
  //Power Button, Quit Button
  powerButton();
  //
  //Play / Pause Button
  if ( song1.isPlaying() ) {
    song1.pause();
    } else if ( song1.isPlaying() ) {
      song1.rewind();
      song1.play();
      } else {
        song1.play();
      }
  //Stop Button
  //Forward / Reverse Button
  //Next Button
  //Previous Button
  //Loop: repeat single song button, repeat all songs button, repeat finite times button, repeat infinite times button
  //Volume Up Button
  //Volume Down Button
  //Media Button
}// End MusicPlayerButtons
