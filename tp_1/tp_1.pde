//Tp1 Comision 1//
//Albarracin Santino//

void setup() {
  size(800, 400);
}

void draw() {

  //Fondo//
  background(0, 0, 0);
  fill(0, 50, 0);
  triangle(0, 0, 100, 0, 150, 110);
  triangle(0, 0, 100, 0, 150, 110);
  triangle(200, 0, 250, 0, 300, 150);
  triangle(150, 50, 220, 50, 280, 150);
  triangle(0, 0, 50, 0, 0, 110);
  triangle(0, 50, 100, 150, 0, 110);
  triangle(600, 0, 680, 0, 700, 110);
  triangle(500, 0, 570, 0, 500, 110);
  triangle(500, 150, 600, 150, 480, 290);
  triangle(300, 0, 400, 0, 420, 150);
  triangle(780, 0, 760, 0, 800, 100);
  triangle(471, 0, 410, 0, 457, 64);
  triangle(529, 0, 598, 0, 592, 85);
  triangle(663, 0, 729, 0, 728, 64);
  triangle(88, 0, 137, 0, 140, 31);
  triangle(471, 0, 410, 0, 457, 64);
  triangle(235, 0, 273, 0, 283, 31);

  //Fondo 2//
  stroke(69, 50, 46);
  line(191, 49, 100, -30);
  line(194, 50, 123, -39);
  line(318, 22, 210, -31);
  line(311, 13, 108, -62);
  line(0, 192, 28, 122);
  line(-14, 189, 10, 116);
  line(501, 43, 446, -39);
  line(499, 50, 412, -87);
  line(595, 58, 615, 17);
  line(593, 80, 620, 23);
  line(729, 44, 924, -467);
  line(806, 48, 760, -41);
  line(541, 149, 562, 42);
  line(549, 150, 566, 49);
  line(511, 149, 562, 42);
  line(411, 78, 421, 15);

  //Alas//
  fill(139, 117, 90);
  triangle(200, 150, 320, 150, 255, 240);
  triangle(370, 270, 320, 150, 255, 240);
  triangle(370, 270, 320, 150, 380, 170);

  triangle(464, 187, 547, 194, 435, 288);
  triangle(425, 286, 549, 191, 497, 292);
  triangle(495, 293, 549, 192, 637, 224);

  triangle(402, 335, 469, 191, 465, 117);
  triangle(372, 171, 416, 121, 402, 173);

  fill(213, 186, 152);
  quad(448, 190, 465, 129, 415, 119, 393, 193);


  //Cuerpo//
  fill(213, 186, 152);
  quad(471, 188, 440, 288, 370, 273, 371, 168);
  quad(391, 391, 441, 288, 404, 280, 386, 368);
  quad(370, 386, 370, 274, 404, 280, 386, 368);
  triangle(372, 168, 470, 188, 410, 250);
  triangle(410, 250, 372, 168, 370, 270);
  triangle(410, 250, 470, 188, 440, 290);
  triangle(410, 250, 370, 270, 440, 290);


  //Ojos//
  fill(213, 186, 152);
  circle(418, 139, 17);
  circle(451, 146, 17);

  fill(0, 0, 0);
  circle(420, 139, 17);
  circle(453, 146, 17);

  fill(255, 255, 255);
  circle(423, 139, 3);
  circle(455, 143, 3);


  //Boca//
  fill(135, 116, 110);
  triangle(439, 160, 435, 144, 422, 157);
  triangle(444, 161, 436, 144, 433, 159);
  fill(255, 192, 203);
  triangle(438, 152, 435, 144, 429, 151);
  fill(0, 0, 0);
  quad(444, 165, 444, 162, 422, 158, 420, 161);


  //Orejas//
  fill(139, 117, 90);
  quad(455, 129, 481, 131, 487, 121, 478, 109);
  quad(423, 123, 411, 94, 397, 106, 400, 119);

  fill(214, 184, 153);
  quad(465, 126, 477, 128, 483, 121, 477, 114);
  quad(416, 119, 410, 101, 402, 107, 403, 116);


  //Partes de alas//
  fill(213, 186, 152);
  triangle(197, 150, 275, 169, 372, 168);
  triangle(639, 223, 469, 187, 548, 216);
  triangle(197, 150, 321, 150, 372, 168);
  triangle(639, 223, 469, 187, 552, 191);


  //Detalles//
  fill(135, 116, 110);
  line(446, 136, 457, 117);
  line(429, 134, 421, 110);
  fill(213, 186, 152);
  triangle(348, 168, 370, 269, 372, 168);
  triangle(447, 270, 469, 187, 491, 196);

  noStroke();
  fill(0, 0, 0);
  circle(148, 246, 216);
  circle(278, 268, 74);

  circle(656, 438, 431);
  circle(335, 276, 66);

  circle(482, 300, 30);
  circle(456, 296, 28);

  stroke(69, 50, 46);
  line(290, 160, 322, 151);
  line(275, 169, 292, 159);

  line(552, 190, 555, 205);
  line(550, 216, 554, 206);

  fill(213, 186, 152);
  quad(471, 188, 440, 288, 370, 273, 371, 168);

  quad(391, 391, 441, 288, 404, 280, 386, 368);
  quad(370, 386, 370, 274, 404, 280, 386, 368);
}
