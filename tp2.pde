PFont fuente;
PImage presentacion, fonal, pistola,boton; //pistola=mazo
int Px=500;
int X, Y;


void setup() {
  noCursor();
  X=5;
  Y=5;
  size(500, 500);
  fuente=loadFont("fuente.vlw");//fuente
  textFont(fuente, 30);//eleccion de fuente y tamaño
  fonal=loadImage("fonal.jpg");//pantalla final
  presentacion=loadImage("presentacion.png");//imagen
  pistola=loadImage("pistola.png");//mouse
  boton=loadImage("boton.png");
  textMode(CENTER);
}

void draw() {
  background(0);
  image(presentacion, 0, 0, Px, 500);
  Px--;
  if (Px<-1) {
    background(0);
  }//pantalla 1
  println(Px);
  if (Px<-2) {
    if (Px<-125) {
      text("associate producer \n ARTHUR W.FORNEY", 100, 150);
      text("executive Story Editor \n ROBERT STUART NATHAN", 75, 300);
    }
  }
  if (Px<-200) {
    background(0);
  }//pantalla 2
  if (Px<-250) {
    text("director of pothography \n CONSTANTINE MARKIS", 75, 225);
  }
  if (Px<-325) {
    background(0);
  }//pantalla 3
  if (Px<-400) {
    text("production designer \n RICHARD BIANCHI", 75, 120);
    text("costume designer \n JHON BOXER", 100, 225);
    text("camera operator \n PHIL OETIKER", 100, 325);
  }
  if (Px<-475) {
    background(0);
  }//pantalla 4
  if (Px<-550) {
    text("casting by \n LYNN KRESSEL", 100, 120);
    text("casting associate \n SUZANNE RYAN", 75, 240);
    text("technical advisors \n WILLIAM N. FORDES \n MICHAEL STRUK", 75, 375);
  }
  if (Px<-625) {
    background(0);
  }//pantalla 5
  if (Px<-700) {
    text("unit production manager \n JEFREY HAYES", 75, 240);
  }
  if (Px<-775) {
    background(0);
  }//pantalla final
  if (Px<-850) {
    image(fonal, 0, 0, width, height);
  }
  image(boton,450,5,50,50);
  image(pistola, mouseX, mouseY, 40, 40);
}

void mousePressed() {
  if (mouseX>450 && mouseY>-50) {
    Px=500;
  }
}
