void loadSong(){
  if(song != null && song.isPlaying()){
    song.pause();
  }
   index = int(random(0, songNames.length));
  File f = new File("C:/users/Goo/Music/" + songNames[index]);
  if(!f.isFile() && !played()){
    songsPlayed.add(songNames[index]);
  }else{
    if(!played()){
      songsPlayed.add(songNames[index]);
      song = minim.loadFile("C:/users/Goo/Music/" + songNames[index]);
      nowPlaying = songNames[index]; 
      song.play();
    }
  }
}
