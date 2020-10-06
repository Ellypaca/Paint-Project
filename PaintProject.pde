//Paint Project
//Katelynn Bai
//Block 1-2 B


//Images
PImage Aya; //Pink Girl, Singer from Pastel Palettes
PImage Chisato; //Yellow-ish blonde Girl, Bassist from Pastel Palettes
PImage Hina; //Turquoise? Girl, Guitarist from Pastel Palettes
PImage Eve; //Lilac Girl, Keyboardist from Pastel Palettes
PImage Maya; //Brown-haired Girl, Drummer from Pastel Palettes

//for stamping the stamps
boolean AyaOn, ChisatoOn, HinaOn, EveOn, MayaOn;  
boolean PenOn;
//(Pastel) Palette
//^^^^^ a pun on the band Pastel Palettes from the BanG Dream Franchise
color AyaPink         = #FF88BB;
color HinaTeal        = #55DDEE;
color ChiYellow       = #FFEEAA;
color MayaGreen       = #99DD88;
color EveLilac        = #DDBBFF;
color KasumiRed       = #FF5522;
color HaguOrange      = #FF9922;
color KaoruPurple     = #AA33CC;

color White           = #FFFFFF;
color Black           = #000000;
//end colors

//variable for color selection
color selectedColor;

//varibales for determining the outline of the colors
boolean RedSelected, PinkSelected, OrangeSelected, YellowSelected, GreenSelected, TealSelected, PurpleSelected, LilacSelected, BlackSelected, WhiteSelected;


//variables for the slider
float sliderY;
float sliderR;
float Thickness;

float PictureW, PictureH;

//to check if the colors are "on" for the outline
boolean OnOff;

//to determine the color of the text
color textColor;

//START SETUP=========================================
void setup() {
  size(1000, 800);
  selectedColor = Black;
  background(255);

  sliderY = 370;
  sliderR = 1;



  Aya = loadImage("AyaChibi.png");
  Chisato = loadImage("ChisatoChibi.png");
  Hina = loadImage("HinaChibi.png");
  Eve = loadImage("EveChibi.png");
  Maya = loadImage("MayaChibi.png");
}
//END SETUP===========================================


//START DRAW==========================================
void draw() {


  //toolbar
  stroke(0);
  strokeWeight(2);
  fill(150);
  rect(0, 0, 200, 800);

  //because im too lazy to change every y-coordinate
  pushMatrix();
  translate(0, -20);

  //color buttons
  //Kasumi 
  tactile(60, 60, 25);
  if (RedSelected == true) {
    OnOrOff();
  }
  fill(KasumiRed);
  circle(60, 60, 50);
  strokeWeight(2);
  SwitchToStamp();



  //Aya
  tactile(140, 60, 25);
  if (PinkSelected == true) {
    OnOrOff();
  }
  fill(AyaPink);
  circle(140, 60, 50);
  strokeWeight(2);
  SwitchToStamp();



  //Hagu
  tactile(60, 130, 25);
  if (OrangeSelected == true) {
    OnOrOff();
  }
  fill(HaguOrange);
  circle(60, 130, 50);
  strokeWeight(2);
  SwitchToStamp();


  //Chisato
  tactile(140, 130, 25);
  if (YellowSelected == true) {
    OnOrOff();
  }
  fill(ChiYellow);
  circle(140, 130, 50);
  strokeWeight(2);
  SwitchToStamp();



  //Maya
  tactile(60, 200, 25);
  if (GreenSelected == true) {
    OnOrOff();
  }
  fill(MayaGreen);
  circle(60, 200, 50);
  strokeWeight(2);
  SwitchToStamp();



  //Hina 
  tactile(140, 200, 25);
  if (TealSelected == true) {
    OnOrOff();
  }
  fill(HinaTeal);
  circle(140, 200, 50);
  strokeWeight(2);
  SwitchToStamp();



  //Kaoru
  tactile(60, 270, 25);
  if (PurpleSelected == true) {
    OnOrOff();
  }
  fill(KaoruPurple);
  circle(60, 270, 50);
  strokeWeight(2);
  SwitchToStamp();



  //Eve 
  tactile(140, 270, 25);
  if (LilacSelected == true) {
    OnOrOff();
  }
  fill(EveLilac);
  circle(140, 270, 50);
  strokeWeight(2);
  SwitchToStamp();



  //Black
  tactile(60, 340, 25);
  if (BlackSelected == true) {
    OnOrOff();
  }
  fill(Black);
  circle(60, 340, 50);
  strokeWeight(2);
  SwitchToStamp();



  //White 
  tactile(140, 340, 25);
  if (WhiteSelected == true) {
    OnOrOff();
  }
  fill(White);
  circle(140, 340, 50);
  strokeWeight(2);
  SwitchToStamp();



  //code for the slider

  Thickness = map(sliderY, 365, 565, 5, 60);
  sliderR = map(sliderY, 365, 565, 5, 60);
  PictureW = map(sliderY, 365, 565, 10, 130);
  PictureH = map(sliderY, 365, 565, 13.23, 172);
  strokeWeight(2);
  SliderTactile(75, 365, 50, 200);
  triangle(100, 365, 75, 565, 125, 565);
  fill(selectedColor);
  circle(100, sliderY, sliderR);


  //code for the stamps
  //Aya Stamp
  StampTactile(70, 660, 60, 74);
  if (AyaOn == true) {
    strokeWeight(5);
    stroke(#DDFFEE);
  } else {
    strokeWeight(2);
    stroke(0);
  }
  SwitchToPen();
  rect(70, 680, 60, 73);
  image(Aya, 74, 680, 54, 72);


  //Chisato Stamp
  StampTactile(5, 660, 60, 74);
  if (ChisatoOn == true) {
    strokeWeight(5);
    stroke(#DDFFEE);
  } else {
    strokeWeight(2);
    stroke(0);
  }
  SwitchToPen();
  rect(5, 680, 60, 73);
  image(Chisato, 10, 682, 54, 70);


  //Hina Stamp
  StampTactile(135, 660, 60, 74);
  if (HinaOn == true) {
    strokeWeight(5);
    stroke(#DDFFEE);
  } else {
    strokeWeight(2);
    stroke(0);
  }
  SwitchToPen();
  rect(135, 680, 60, 73);
  image(Hina, 140, 682, 54, 70);
  popMatrix();


  //Maya Stamp
  StampTactile(105, 580, 60, 73);
  if (MayaOn == true) {
    strokeWeight(5);
    stroke(#DDFFEE);
  } else {
    strokeWeight(2);
    stroke(0);
  }
  SwitchToPen();
  rect(105, 580, 60, 73);
  image(Maya, 108, 583, 54, 68);


  //Eve Stamp
  if (EveOn == true) {
    strokeWeight(5);
    stroke(#DDFFEE);
  } else {
    strokeWeight(2);
    stroke(0);
  }
  SwitchToPen();
  StampTactile(39, 580, 60, 73);
  rect(39, 580, 60, 73);
  image(Eve, 44, 582, 50, 70);



  //Clear Canvas Button
  ClearTactile(50, 750, 100, 40);
  rect(50, 750, 100, 40);
  textAlign(CENTER, CENTER);
  textSize(25);
  fill(textColor);
  text("Clear", 100, 767 );
}

//END DRAW============================================


//START FUNCTIONS=====================================

//Start Tactile
void tactile(int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) < r) { 
    stroke(White);
  } else {
    stroke(Black);
  }
}

void SliderTactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(#B1C6AA);
  } else {
    fill(100);
  }
}

void StampTactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(#33DDAA);
  } else {
    fill(255);
  }
}

//i copied and pasted the StampTactile because I do not want those colors
void ClearTactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(Black);
    textColor = White;
  } else {
    fill(White);
    textColor = Black;
  }
}
//END TACTILE====


//Squiggly Lines and Stamps
void mouseDragged() {
  if (mouseX > 200 && AyaOn == false && ChisatoOn == false && HinaOn == false && MayaOn == false && EveOn == false || PenOn == true) {
    strokeWeight(Thickness);
    stroke (selectedColor);
    line(pmouseX, pmouseY, mouseX, mouseY);
  } else if (mouseX > 200 && AyaOn == true && PenOn == false) {
    image(Aya, mouseX, mouseY, PictureW, PictureH); //130, 172
  } else if (mouseX > 200 && ChisatoOn == true && PenOn == false) {
    image(Chisato, mouseX, mouseY, PictureW, PictureH); //110, 158
  } else if (mouseX > 200 && HinaOn == true && PenOn == false) {
    image(Hina, mouseX, mouseY, PictureW, PictureH); //223/2, 331/2
  } else if (mouseX > 200 && MayaOn == true && PenOn == false) {
    image(Maya, mouseX, mouseY, PictureW, PictureH); //160, 186
  } else if (mouseX > 200 && EveOn == true && PenOn == false) {
    image(Eve, mouseX, mouseY, PictureW, PictureH); //101, 168
  }
  //for the slider
  controlSlider();
}

//end lines

//changing color
void mouseReleased() {


  //KasumiRed button
  if (dist(60, 60, mouseX, mouseY) < 50) {
    ResetSelected();

    CheckOnOff();
    selectedColor = KasumiRed;
    RedSelected = true;
    PenOn = true;
  }
  //AyaPink button
  if (dist(140, 60, mouseX, mouseY) < 50) {
    ResetSelected();

    CheckOnOff();
    selectedColor = AyaPink;
    PinkSelected = true;
    PenOn = true;
  }
  //HaguOrange button
  if (dist(60, 130, mouseX, mouseY) < 50) {
    ResetSelected();

    CheckOnOff();
    selectedColor = HaguOrange;
    OrangeSelected = true;
    PenOn = true;
  }
  //ChiYellow button
  if (dist(140, 130, mouseX, mouseY) < 50) {
    ResetSelected();

    CheckOnOff();
    selectedColor = ChiYellow;
    YellowSelected = true;
    PenOn = true;
  }
  //MayaGreen button
  if (dist(60, 200, mouseX, mouseY) < 50) {
    ResetSelected();

    CheckOnOff();
    selectedColor = MayaGreen;
    GreenSelected = true;
    PenOn = true;
  }
  //HinaTeal button
  if (dist(140, 200, mouseX, mouseY) < 50) {
    ResetSelected();

    CheckOnOff();
    selectedColor = HinaTeal;
    TealSelected = true;
    PenOn = true;
  }
  //KaoruPurple button
  if (dist(60, 270, mouseX, mouseY) < 50) {
    ResetSelected();

    CheckOnOff();
    selectedColor = KaoruPurple;
    PurpleSelected = true;
    PenOn = true;
  }
  //EveLilac button
  if (dist(140, 270, mouseX, mouseY) < 50) {
    ResetSelected();

    CheckOnOff();
    selectedColor = EveLilac;
    LilacSelected = true;
    PenOn = true;
  }
  //Black button
  if (dist(60, 340, mouseX, mouseY) < 50) {
    ResetSelected();

    CheckOnOff();
    selectedColor = Black;
    BlackSelected = true;
    PenOn = true;
  }
  //White button
  if (dist(140, 340, mouseX, mouseY) < 50) {
    ResetSelected();
    CheckOnOff();
    selectedColor = White;
    WhiteSelected = true;
    PenOn = true;
  }


  //for the slider
  controlSlider();

  //for the stamps

  if (mouseX > 70 && mouseX < 130 && mouseY > 660 && mouseY < 734) {
    ResetStamp();

    if (AyaOn == true) {
      AyaOn = false;
    } else {
      AyaOn = true;
      PenOn = false;
    }
  }

  if (mouseX > 5 && mouseX < 65 && mouseY > 660 && mouseY < 734) {
    ResetStamp();

    if (ChisatoOn == true) {
      ChisatoOn = false;
    } else {
      ChisatoOn = true;
      PenOn = false;
    }
  }

  if (mouseX > 135 && mouseX < 195 && mouseY > 660 && mouseY < 734) {
    ResetStamp();

    if (HinaOn == true) {
      HinaOn = false;
    } else {
      HinaOn = true;
      PenOn = false;
    }
  }

  if (mouseX > 105 && mouseX < 165 && mouseY > 580 && mouseY < 653) {
    ResetStamp();

    if (MayaOn == true) {
      MayaOn = false;
    } else {
      MayaOn = true;
      PenOn = false;
    }
  }

  if (mouseX > 39 && mouseX < 99 && mouseY > 580 && mouseY < 653) {
    ResetStamp();

    if (EveOn == true) {
      EveOn = false;
    } else {
      EveOn = true;
      PenOn = false;
    }
  }


  //for the Clear Button
  //50, 750, 100, 40
  if (mouseX > 50 && mouseX < 150 && mouseY > 750 && mouseY < 790) {
    fill(White);
    rect(200, -2, 802, 802);
  }
}





//OTHER FUNCTIONS===========================================
void controlSlider() {
  if (75 < mouseX && mouseX <125 &&  365 < mouseY && mouseY < 565) {

    sliderY = mouseY;
  }
}



void CheckOnOff() {
  OnOff = !OnOff;
}


void OnOrOff() {
  if (OnOff == false) { 
    stroke(0);
    strokeWeight(2);
    OnOff = true;
  } else {
    stroke(255);
    strokeWeight(5);
  }
}


//resets the selected color
void ResetSelected() {
  RedSelected     = false;
  PinkSelected    = false;
  OrangeSelected  = false;
  YellowSelected  = false;
  GreenSelected   = false;
  TealSelected    = false;
  PurpleSelected  = false;
  LilacSelected   = false;
  BlackSelected   = false;
  WhiteSelected   = false;
}

//resets the stamp
void ResetStamp() {
  AyaOn     = false;
  ChisatoOn = false;
  HinaOn    = false;
  MayaOn    = false;
  EveOn     = false;
}

//to make it able to switch from stamp to pen
void SwitchToPen() {
  if (PenOn) {
    ResetStamp();
  }
}

//to make it able to switch from pen to stamp
void SwitchToStamp() {
  if (PenOn == false) {
    ResetSelected();
  }
}

//makes a new drawing area/clears
void ClearCanvas() {
}



//END FUNCTIONS======================================
