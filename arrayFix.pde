void arrayFixError () {
  if ( currentSong == numberOfSongs - 1 ) {
    currentSong = numberOfSongs - numberOfSongs;
    } else {
    currentSong ++;
  }
} //End ArrayFixError

void arrayFixError2 () {
  if ( currentSong == numberOfSongs - numberOfSongs ) {
    currentSong = numberOfSongs - 1;
    } else {
    currentSong --;
  }
} //End ArrayFixError
