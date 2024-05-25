//Comision 1(Jose Bugiolachi)//
//Albarracin Santino//

PImage G1, G2, G3, G4;
PFont f;
int emp, time;
float x, x2, x3, x4;
boolean ok;

void setup() {
  size(640, 480);
  G1 = loadImage("op1.jpg");
  G2 = loadImage("op2.jpg");
  G3 = loadImage("op3.jpg");
  G4 = loadImage("op4.jpg");

  G1.resize(640, 480);
  G2.resize(640, 480);
  G3.resize(640, 480);
  G4.resize(640, 480);
  f = createFont("Algerian", 16, true);
  reset();
}

void reset() {
  x = 16;
  x2 = 16;
  x3 = 16;
  x4 = 16;
  emp = millis();
  time = 0;
}

void draw() {
  if (!ok) {
    background(0);
    fill(255);
    rectMode(CENTER);
    rect(width / 2, height / 2, 100, 50);
    fill(0);
    textFont(f, 16);
    textAlign(CENTER, CENTER);
    text("Inicio", width / 2, height / 2);
  } else {
    presentar();
    if (time > 32000) {
      ok = false;
    }
  }
}

void mousePressed() {
  if (mouseX > width / 2 - 50 && mouseX < width / 2 + 50 && mouseY > height / 2 - 25 && mouseY < height / 2 + 25 && !ok) {
    ok = true;
    reset();
  }
}

void presentar() {
  background(0);
  time = millis() - emp;

  if (time > 0 && time < 8000) {
    image(G1, 0, 0);
    textFont(f, x);
    textAlign(LEFT);
    fill(255, 255, 255);
    text("El cientifico J. Robert Oppenheimer", 30, height - 60);
    text("recordando la creacion de la bomba\natomica y sus pruebas", 30, height - 30);
    if (textWidth("El cientifico J. Robert Oppenheimer") < width - 30 && textWidth("recordando la creacion de la bomba\natomica") < width - 30) {
      x += 0.5;
    }
  } else if (time > 8000 && time < 16000) {
    image(G2, 0, 0);
    textFont(f, x2);
    fill(255);
    text("Albert Einstein advirtiendole sobre", 30, height - 60);
    text("lo que vendra despues de la creacion\nde la misma", 30, height - 30);
    if (textWidth("Albert Einstein advirtiendole sobre") < width - 30 && textWidth("lo que vendra despues de la creacion\nde la misma") < width - 30) {
      x2 += 0.5;
    }
  } else if (time > 16000 && time < 24000) {
    image(G3, 0, 0);
    textFont(f, x);
    fill(255);
    text("La Prueba", 30, height - 60);
    text("              es un exito", 30, height - 15);
    if (textWidth("La Prueba") < width - 30 && textWidth("              es un exito") < width - 30) {
      x += 0.5;
    }
  } else if (time > 24000 && time < 32000) {
    image(G4, 0, 0);
    textFont(f, x2);
    fill(255);
    text("El cientifico condecorado", 30, height - 80);
    text("muchos años despues,\nluego de la destruccion.", 30, height - 40);
    if (textWidth("El cientifico condecorado") < width - 30 && textWidth("muchos años despues,\nluego de la destruccion.") < width - 30) {
      x2 += 0.5;
    }
  }
}
