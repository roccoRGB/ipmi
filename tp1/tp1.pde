PImage imagen;
void setup()
{
  size(800, 400);
  colorMode(HSB, 360, 100, 100, 100);
  imagen = loadImage("referenciaTP1.jpeg");
}

void draw()
{
  background(100);
  //imagen
  image(imagen, 0, 20);
  //degrade de fondo
  strokeWeight(0);
  fill(0,0,80);
  rect(400, 20, 125, 255);
  fill(0,0,76);
  rect(525, 20, 139, 255);
  fill(0,0,70);
  rect(664, 20, 146, 255);
  //mesa
  fill(360,100,26);
  rect(400, 275, 400, 95);
  //detalle en la mesa
  fill(30,13,65);
  quad(641, 275, 667, 275, 763, 369, 701, 369);
  //sombra perfume
  fill(0, 0, 0, 50);
  quad(644, 228, 695, 231, 733, 275, 662, 275);
  beginShape();
  vertex(662, 275);
  vertex(733, 275);
  vertex(685, 289);
  vertex(670, 290);
  vertex(637, 302);
  vertex(631, 291);
  vertex(644, 277);
  vertex(662, 275);
  endShape(CLOSE);
  //perfume
  fill(40,100,70);
  quad(582, 289, 626, 289, 632, 301, 579, 301);
  quad(561, 186, 569, 191, 637, 303, 633, 303);
  rect(579, 300, 55, 3);
  fill(0,0,0);
  quad(550, 111, 605, 107, 635, 225, 588, 215);
  triangle(567, 188, 613, 195, 633, 298);
  //caja
  fill(20,100,80);
  rect(413, 255, 80, 30);
  fill(0,0,100);
  quad(433, 245, 503, 245, 492, 255, 413, 255);
  fill(100,100, 30);
  quad(493, 255, 503, 245, 503, 275, 493, 285);
  fill(0, 0, 20);
  rect(413, 261, 46, 18);
  //sombra tornillo
  fill(0, 0, 0, 50);
  triangle(757, 276, 761, 276, 752, 260); 
  //tornillo
  fill(0, 0, 20);
  triangle(755, 276, 759, 276, 752, 263);
  //sombra caja
  fill(0, 0, 0, 50);
  beginShape();
  vertex(503, 249);
  vertex(524, 275);
  vertex(519, 281);
  vertex(493,285);
  vertex(493, 266);
  vertex(505, 249);
  endShape(CLOSE);
  
  strokeWeight(1);
  line(654, 278, 730, 369);

}
