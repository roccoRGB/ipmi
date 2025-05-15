//VARIABLES
PImage fondo1;
PImage fondo2;
PImage fondo3;
PImage fondo4;
PImage pote;
int tickTimer;
PFont constantia;
PFont cambria;
PFont corbel;
String GG = "GUILTY GEAR";
int posXTitle;
int posYText1;
int posXText1;
int fadeCount;
int posXCredit;
int posYCredit;
int poteY;
int textPoteY;
int textSlideR;
int textSlideL;
int textSlideRR;
int textSlideLR;

void setup()
{
  size(640, 480);
  colorMode(HSB, 360, 100, 100, 100);
  background(0);
  frameRate(60);
  textAlign(CENTER, CENTER);
  fondo1 = loadImage("fondo1.gif");
  fondo2 = loadImage("fondo2.jpg");
  fondo3 = loadImage("fondo3.jpeg");
  fondo4 = loadImage("fondo4.png");
  pote = loadImage("Potemkin.png");
  poteY = 582;
  constantia = loadFont("Constantia-Bold-48.vlw");
  cambria = loadFont("CambriaMath-48.vlw");
  corbel = loadFont("Corbel-20.vlw");
  posYCredit = 10;
  textPoteY = 481;
  textSlideR = 0;
  textSlideL = 640;
  textSlideRR = 0;
  textSlideLR= 640;
}
void draw()
{
  //cuenta segundos
  tickTimer = frameCount/60;
  println(tickTimer);
  //-----------------eventos-----------------
  //Pantalla negra con titulo que se desliza
  if (tickTimer < 1 && tickTimer < 2)
  {
    if (posXTitle <= width/2)
    {
      background(0);
      posXTitle = posXTitle + 10;
      textFont(cambria);
      fill(360, 100, 100, 100);
      text(GG, posXTitle, 80);
    }
  }
  //Se revela el primer fondo, descienden los créditos
  if (tickTimer >= 1 && tickTimer < 7)
  {
    image(fondo1, 0, 0, 640, 480);
    fill(360, 100, 100, 100);
    textFont(cambria);
    text(GG, posXTitle, 80);
    textFont(constantia);
    fill(360, 100, 100, 100);
    text("by Rocco Busnelli", width/2, posYCredit);
    posYCredit += 1;
    textSlideR = 0;
    textSlideL = 640;
  }
  //Fade in primer texto
  if (tickTimer >= 8 && tickTimer < 17)
  {
    image(fondo1, 0, 0, 640, 480);
    textAlign(LEFT, CENTER);
    textFont(corbel);
    fill(0, 0, 100, fadeCount);
    text("Guilty Gear es una serie de videojuegos de lucha desarrollada por\n Arc System Works, conocida por su jugabilidad técnica, gráficos\n estilo anime y una banda sonora destacada.\n \nLa serie es famosa por su profundo sistema de combate y\npersonajes únicos, y es considerada una de las más influyentes en el\n género de lucha.", 15, height/2);
    if (fadeCount < 100)
    {
      fadeCount += 1;
    }
  }
  if (tickTimer >= 17 && tickTimer < 24)
  {
    //Potemkin nos trae el texto
    image(fondo2, 0, 0, 640, 480);
    textFont(corbel);
    textAlign(CENTER, CENTER);
    image(pote, 280, poteY, 100, fadeCount);
    poteY -= 3;
    text("Guilty Gear fue lanzado en 1998 para arcade, creado por\n Daisuke Ishiwatari, quien también es el director y compositor principal\nde la serie.\n \nEl juego destacó por su estilo gráfico de animación 2D\n inspirado en el anime y una jugabilidad que combinaba rapidez\ncon una alta curva de dificultad.\n \nEl éxito del primer juego llevó a la creación de\n múltiples secuelas y versiones mejoradas.", 324, textPoteY);
    if (textPoteY > 240)
    {
      textPoteY -= 3;
    }
    if (tickTimer > 24)
    {
      //Fade out
      if (fadeCount > 0)
      {
        fadeCount -=2;
      }
    }
  }

  if (tickTimer >= 24 && tickTimer < 29)
  {
    //juego con el escalado para hacer textos gigantes que se desplazan en los laterals
    image(fondo3, 0, 0, 640, 480);
    slidingTexts("REFERENTE EN LA COMUNIDAD DE JUEGOS DE LUCHA");
    textAlign(CENTER, CENTER);
    textFont(constantia);
    textSize(18);
    fill(0, 100, 0, 100);
    text("A lo largo de los años, Guilty Gear ha sido un referente en el mundo de\n los juegos de lucha, influyendo en otras franquicias y siendo un favorito\n en los torneos competitivos.", width/2, height/2);
  }
  if (tickTimer >= 29 && tickTimer < 35)
  {
    image(fondo3, 0, 0, 640, 480);
    slidingTextsReverse("ACLAMADO POR LAS CRÍTICAS");
    textAlign(CENTER, CENTER);
    textFont(constantia);
    textSize(18);
    fill(0, 100, 0, 100);
    text("La serie ha evolucionado constantemente, con títulos recientes\n como Guilty Gear Strive (2021) que han recibido críticas positivas\n por su accesibilidad y gráficos en 3D.", width/2, height/2);
  }
  if (tickTimer >= 35 && tickTimer < 40)
  {
    image(fondo3, 0, 0, 640, 480);
    slidingTexts("TÍTULO PRINCIPAL");
    textAlign(CENTER, CENTER);
    textFont(constantia);
    textSize(18);
    fill(0, 100, 0, 100);
    text("Guilty Gear sigue siendo una de las franquicias más importantes\ndentro del género de lucha\n tanto para jugadores casuales como competitivos.", width/2, height/2);
  }
  if (tickTimer >= 41)
  {
    image(fondo4, 0 , 0, 640, 480);
    
  }
}

//FUNCIONES CUSTOM PARA TEXTOS DESLIZANTES
void slidingTexts(String slidingText)
{
  textAlign(RIGHT, CENTER);
  textFont(cambria);
  textSize(60);
  fill(0, 0, 100, 100);
  text(slidingText, textSlideR, 120);
  textSlideR += 10;
  textAlign(LEFT, CENTER);
  text(slidingText, textSlideL, 360);
  textSlideL -= 10;
}
void slidingTextsReverse(String slidingTextR)
{
  textAlign(LEFT, CENTER);
  textFont(cambria);
  textSize(60);
  fill(0, 0, 100, 100);
  text(slidingTextR, textSlideLR, 120);
  textSlideL -= 10;
  textAlign(RIGHT, CENTER);
  text(slidingTextR, textSlideRR, 360);
  textSlideR += 10;
}
