PImage miImagen; // Variable para almacenar la imagen

int tam;
int cant = 10;
boolean cambiarColor = false;
boolean cambiarCuadrado = false;
int centerY;

void setup() {
  size(800, 400);
  tam = width / cant;
  centerY = height / 2;
  
  // Cargar la imagen
  miImagen = loadImage("imagen TP3.png");
  miImagen.resize(width / 2, height); // Redimensionar la imagen para que ocupe todo el lado izquierdo
}

void draw() {
  background(255);

  // Mostrar la imagen en el lado izquierdo
  image(miImagen, 0, 0);

  // Dibujar el cuadrado solo si el ratón está en la mitad derecha de la pantalla
  float cuadradoX = constrain(mouseX - 100, width / 2, width - 200); // Nuevo tamaño del cuadrado
  float cuadradoY = constrain(mouseY - 100, 0, height - 200); // Nuevo tamaño del cuadrado
  if (mouseX > width / 2) {
    if (cambiarCuadrado) {
      fill(255, 0, 0); // Rojo
    } else {
      fill(0, 0, 255); // Azul
    }
    rect(cuadradoX, cuadradoY, 200, 200); // Ajuste: tamaño del cuadrado a 200x200
  }

  // Dibujar las líneas en el lado derecho
  for (int l = 0; l <= height; l += 5) {
    for (int x = 400; x < 800; x++) {
      float centro = abs(600 - x);
      float azul = map(centro, 0, 200, 0, 255);
      float rojo = map(centro, 0, 200, 255, 0);

      boolean dentroCuadrado = mouseX > width / 2 && x >= cuadradoX && x < cuadradoX + 200 && l >= cuadradoY && l < cuadradoY + 200;

      if ((l / 5) % 2 == 0) { 
        if (dentroCuadrado) {
          if (cambiarCuadrado) {
            fill(255, 0, 0); // Rojo
          } else {
            fill(0, 0, 255); // Azul
          }
        } else if (mouseX >= 400 && mouseY >= l && mouseY < l + 5) {
          fill(random(255), random(255), random(255)); // Color aleatorio
        } else {
          fill(255, 0); // Transparente
        }
      } else {
        if (cambiarColor) {
          fill(rojo, 0, 0); // Rojo gradiente
        } else {
          fill(0, 0, azul); // Azul gradiente
        }
      }

      noStroke();
      rect(x, l, 1, 5);
    }
  }
}

void mousePressed() {
  cambiarColor = !cambiarColor;
  cambiarCuadrado = !cambiarCuadrado;
}
