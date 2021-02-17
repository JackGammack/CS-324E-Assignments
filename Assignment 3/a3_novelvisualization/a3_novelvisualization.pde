//Set global variables
//Font class
PFont vollkorn;
PImage mushroom;

//3 Chosen colors put in an array
color yellow = color(255,247,0);
color blue = color(142,231,255);
color white = color(255);
color[] colorList = {yellow,blue,white};

//Easily changeable text size
int textSize = 24; //number of pixels tall

void setup() {
  size(700,600);
  
  //Make new font from .ttf file
  vollkorn = createFont("Vollkorn-Regular.ttf",textSize);
  textFont(vollkorn,textSize);
  
  mushroom = loadImage("mushroom.jpg");
  
  //Keeps the words from scrolling past the page
  noLoop();
}


void draw() {
  clear();
  image(mushroom,0,0);
  makeCloud();
}

void mousePressed() {
  redraw();
}

//Draws the words to the screen
void makeCloud() {
  
  //Go through each row
  for (float y = textSize; y < height; y += textSize) {
    for (float x = 0; x < width; x += 0){
      
      //Pick a random color of the 3
      fill(colorList[(int)random(colorList.length)]);
      
      //Record each word's length for next word's starting point
      String s = randomWord();
      float wordWidth = textWidth(s);
      //Write the word if it fits on the line
      if (x + wordWidth < width){
        text(s,x,y);
      }
      x+=wordWidth;
    }
  }
}

//Load in uniquewords.txt and return a random word
String randomWord() {
  String[] words = loadStrings("uniquewords.txt");
  int randIndex = (int)random(words.length);
  String thisWord = (words[randIndex] + " ");
  return thisWord;
}
