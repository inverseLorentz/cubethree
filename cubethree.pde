void setup() {
  size(1280, 720);
  textSize(30);
  textAlign(LEFT,TOP);
}
color[] colours = {color(255, 255, 255),
                   color(0, 255, 0),
                   color(255, 0, 0),
                   color(0, 0, 255),
                   color(255, 128, 0),
                   color(255, 255, 0)}; // white green red blue orange yellow
int[] cube = {0,0,0,0,0,0,0,0,0,
              1,1,1,1,1,1,1,1,1,
              2,2,2,2,2,2,2,2,2,
              3,3,3,3,3,3,3,3,3,
              4,4,4,4,4,4,4,4,4,
              5,5,5,5,5,5,5,5,5};
int temp;
int randtemp;
void draw() {
  strokeWeight(1);
  // U
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      fill(colours[cube[i*3+j]]);
      rect(430+j*70,45+i*70,70,70);
      
      fill(0);
      //text(i*3+j,430+j*70,45+i*70); // lines like this print the index of the sticker on the sticker
    }
  }
  
  // F
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      fill(colours[cube[i*3+j+9]]);
      rect(430+j*70,255+i*70,70,70);
      
      fill(0);
      //text(i*3+j+9,430+j*70,255+i*70);
    }
  }
  
  // R
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      fill(colours[cube[i*3+j+18]]);
      rect(640+j*70,255+i*70,70,70);
      
      fill(0);
      //text(i*3+j+18,640+j*70,255+i*70);
    }
  }
  
  // B
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      fill(colours[cube[i*3+j+27]]);
      rect(850+j*70,255+i*70,70,70);
      
      fill(0);
      //text(i*3+j+27,850+j*70,255+i*70);
    }
  }
  
  // L
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      fill(colours[cube[i*3+j+36]]);
      rect(220+j*70,255+i*70,70,70);
      
      fill(0);
      //text(i*3+j+36,220+j*70,255+i*70);
    }
  }
  
  // D
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      fill(colours[cube[i*3+j+45]]);
      rect(430+j*70,465+i*70,70,70);
      
      fill(0);
      //text(i*3+j+45,430+j*70,465+i*70);
    }
  }
  
  // draw faces
  noFill();
  strokeWeight(5);
  rect(430,45,210,210);
  rect(220,255,210,210);
  rect(430,255,210,210);
  rect(640,255,210,210);
  rect(850,255,210,210);
  rect(430,465,210,210);
}

void mouseClicked() {
  if (mouseX > 430 && mouseX < 430+210 && mouseY > 255 && mouseY < 255+210) {
    if (mouseButton == RIGHT) {
      f();
    } else {
      fi();
    }
  } else if (mouseX > 430 && mouseX < 430+210 && mouseY > 45 && mouseY < 45+210) {
    if (mouseButton == RIGHT) {
      u();
    } else {
      ui();
    }
  } else if (mouseX > 640 && mouseX < 640+210 && mouseY > 255 && mouseY < 255+210) {
    if (mouseButton == RIGHT) {
      r();
    } else {
      ri();
    }
  } else if (mouseX > 640+210 && mouseX < 640+210+210 && mouseY > 255 && mouseY < 255+210) {
    if (mouseButton == RIGHT) {
      b();
    } else {
      bi();
    }
  } else if (mouseX > 430 && mouseX < 430+210 && mouseY > 255+210 && mouseY < 255+210+210) {
    if (mouseButton == RIGHT) {
      d();
    } else {
      di();
    }
  } else if (mouseX > 430-210 && mouseX < 430 && mouseY > 255 && mouseY < 255+210) {
    if (mouseButton == RIGHT) {
      l();
    } else {
      li();
    }
  }
}

void cycleCube(int a, int b, int c, int d) {
  // cycles a -> b -> c -> d
  temp = cube[a];
  cube[a] = cube[d];
  cube[d] = cube[c];
  cube[c] = cube[b];
  cube[b] = temp;
}

void fi() {
  cycleCube(7,41,46,21);
  cycleCube(6,44,47,18);
  cycleCube(8,38,45,24);
  cycleCube(9,15,17,11);
  cycleCube(10,12,16,14);
}

void f() {
  cycleCube(7,21,46,41);
  cycleCube(6,18,47,44);
  cycleCube(8,24,45,38);
  cycleCube(9,11,17,15);
  cycleCube(10,14,16,12);
}

void ui() {
  cycleCube(10,19,28,37);
  cycleCube(9,18,27,36);
  cycleCube(11,20,29,38);
  cycleCube(0,6,8,2);
  cycleCube(1,3,7,5);
}

void u() {
  cycleCube(10,37,28,19);
  cycleCube(9,36,27,18);
  cycleCube(11,38,29,20);
  cycleCube(0,2,8,6);
  cycleCube(1,5,7,3);
}

void ri() {
  cycleCube(5,14,50,30);
  cycleCube(8,17,53,27);
  cycleCube(2,11,47,33);
  cycleCube(18,24,26,20);
  cycleCube(19,21,25,23);
}

void r() {
  cycleCube(5,30,50,14);
  cycleCube(8,27,53,17);
  cycleCube(2,33,47,11);
  cycleCube(18,20,26,24);
  cycleCube(19,23,25,21);
}

void bi() {
  cycleCube(1,23,52,39);
  cycleCube(2,26,51,36);
  cycleCube(0,20,53,42);
  cycleCube(27,33,35,29);
  cycleCube(28,30,34,32);
}

void b() {
  cycleCube(1,39,52,23);
  cycleCube(2,36,51,26);
  cycleCube(0,42,53,20);
  cycleCube(27,29,35,33);
  cycleCube(28,32,34,30);
}

void di() {
  cycleCube(16,43,34,25);
  cycleCube(17,44,35,26);
  cycleCube(15,42,33,24);
  cycleCube(45,51,53,47);
  cycleCube(46,48,52,50);
}

void d() {
  cycleCube(16,25,34,43);
  cycleCube(17,26,35,44);
  cycleCube(15,24,33,42);
  cycleCube(45,47,53,51);
  cycleCube(46,50,52,48);
}

void li() {
  cycleCube(3,32,48,12);
  cycleCube(0,35,45,9);
  cycleCube(6,29,51,15);
  cycleCube(36,42,44,38);
  cycleCube(37,39,43,41);
}

void l() {
  cycleCube(3,12,48,32);
  cycleCube(0,9,45,35);
  cycleCube(6,15,51,29);
  cycleCube(36,38,44,42);
  cycleCube(37,41,43,39);
}

void keyPressed() {
  // perform random move
  randtemp = int(random(12));
  if (randtemp == 0) {fi();}
  else if (randtemp == 1) {f();}
  else if (randtemp == 2) {ui();}
  else if (randtemp == 3) {u();}
  else if (randtemp == 4) {ri();}
  else if (randtemp == 5) {r();}
  else if (randtemp == 6) {bi();}
  else if (randtemp == 7) {b();}
  else if (randtemp == 8) {di();}
  else if (randtemp == 9) {d();}
  else if (randtemp == 10) {li();}
  else if (randtemp == 11) {l();}
}
