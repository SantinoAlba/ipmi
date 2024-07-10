//Comision 1 (Jose Luis Bugiolachi)//
//Santino Albarracin//
//https://youtu.be/K8GS4m4Sr10//

PImage miImagen;
int tam;
int cant = 10;
boolean cambiarColor = false;
boolean cambiarCuadrado = false;
boolean movimientoActivado = false;
int cuadradoX;
int cuadradoY;
int cuadradoWidth = 200;
int cuadradoHeight = 200;
int velocidadMovimiento = 2;
int centerY;
color colorAleatorio;
int ultimoCambio;
boolean sobreCentro = false;

void setup() {
  size(800, 400);
  tam = width / cant;
  centerY = height / 2;

  miImagen = loadImage("imagen TP3.png");
  miImagen.resize(width / 2, height);

  cuadradoX = width - 300;  
  cuadradoY = height / 2 - 100;  

  ultimoCambio = millis();
}

void draw() {
  background(0);

 
  for (int x = 400; x < 800; x++) {
    float colorValue = map(abs(x - 600), 0, 200, 0, 255);
    if (sobreCentro) {
      float distancia = dist(mouseX, mouseY, x, centerY);
      float desBlanco = map(distancia, 0, 200, 255, 0);
      fill(255, 255, 255, desBlanco);
    } else {
      fill(0, 0, colorValue);
    }
    rect(x, 0, 1, height);
  }

 
  image(miImagen, 0, 0);

 
  fill(obtenerColorCuadrado());  
  rect(cuadradoX, cuadradoY, cuadradoWidth, cuadradoHeight);

 
  if (movimientoActivado) {
    cuadradoX += velocidadMovimiento;

    if (cuadradoX <= 400 || cuadradoX + cuadradoWidth >= 800) {
      velocidadMovimiento *= -1;  
    }
  }

 
  for (int l = 0; l <= height; l += 5) {
    for (int x = 400; x < 800; x++) {
      float centro = abs(600 - x);
      float blanco = map(centro, 0, 200, 255, 255);
      float rojo = map(centro, 0, 200, 255, 0);
      boolean dentroCuadrado = x >= cuadradoX && x < cuadradoX + cuadradoWidth && l >= cuadradoY && l < cuadradoY + cuadradoHeight;

      if ((l / 5) % 2 == 0) {
        if (dentroCuadrado) {
          fill(obtenerColorCuadrado()); 
        } else {
          fill(255, 0);
        }
      } else {
        if (cambiarColor) {
          fill(rojo, 0, 0);
        } else {
          fill(blanco);
        }
      }

      noStroke();
      rect(x, l, 1, 5);
    }
  }
}

void mouseMoved() {
  sobreCentro = (mouseX >= 400 && mouseX <= 800 && abs(mouseX - 600) <= 200);
}

void mousePressed() {
  if (mouseX >= cuadradoX && mouseX <= cuadradoX + cuadradoWidth &&
      mouseY >= cuadradoY && mouseY <= cuadradoY + cuadradoHeight) {
    movimientoActivado = !movimientoActivado;
    cambiarCuadrado = true;
    colorAleatorio = color(random(255), random(255), random(255));
  }
}

void keyPressed() {
  if (key == 'R' || key == 'r') {
    cambiarCuadrado = false;
    movimientoActivado = false;
    cuadradoX = width - 300;
    sobreCentro = false;
  }
}


color obtenerColorCuadrado() {
  if (cambiarCuadrado == true) {
    return colorAleatorio;
  } else {
    return color(0, 0, 255); 
  }
  
}
