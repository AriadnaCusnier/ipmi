int pantalla = 0;
PImage img0;
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PImage img7;
PImage img8;
PImage img9;
PImage img10;
PImage img11;
PImage img12;
PImage img13;
PImage img14;
PFont fuenteTítulos;
PFont fuenteBotón;
PFont fuenteCuerpo;
int tiempoinicial = 8000;
int ultimocambio = 0; 
float posX= -640;
float opacidadTexto = 0;
float opacidadFondo3 = 0;
float opacidadReiko= 0;
float opacidadshuhei = 0;

void setup() {
  size(640,480);
  //tipos d fuentes
  fuenteTítulos=loadFont("SegoeUI-BoldItalic-48.vlw");
  fuenteBotón=loadFont("SegoeUI-Light-48.vlw");
  fuenteCuerpo=loadFont("Bahnschrift-48.vlw");
  //Carga de imágenes
img0=loadImage("img1.jpg");
img1=loadImage("1.jpeg");
img2=loadImage("2.jpeg");
img3=loadImage("3.jpeg");
img4=loadImage("4.png");
img5=loadImage("5.png");
img6=loadImage("6.png");
img7=loadImage("7.png");
img8=loadImage("8.jpeg");
img9=loadImage("9.jpeg");
img10=loadImage("10.jpeg");
img11=loadImage("11.png");
img12=loadImage("12.png");
img13=loadImage("13.png");
img14=loadImage("14.png");
}
void draw(){ background (0);
  {
  if (pantalla == 0 ) 
  {image (img2,0,0,640,480);//fondo
  //Título
textFont(fuenteTítulos);
textSize(45);
fill(0);
text("El bosque del Piano",150,150);
 
  noStroke(); 
if(mouseX > 220 && mouseX < 420 && mouseY > 269 && mouseY < 349){fill(168,222,69);} 
else{fill(26,77,28);};rect(220,269,200,80);
 textFont(fuenteBotón);
 textSize(25);
 fill(0);
  text("Conoce la historia",230,315);
}
else if (pantalla == 1 ){ background (0);
 image(img1, posX, 0, 640, 480); 
 if (posX<0) {posX = posX + 10;
 ultimocambio = millis();}
 
 //rectángulo x contraste
 noStroke();
 fill(168,222,69,opacidadTexto-30);
  rect(5,10,630,170);
 
 //textos d pantalla 1

 textFont(fuenteCuerpo);
 textSize(20);
 fill(0,0,0,opacidadTexto);
 text("El anime sigue a Kai Ichinose, un niño salido de una familia pobre.",10,40);  
 text("Al colegio se une un chico nuevo de buena familia, Shuhei Amamiya.",10,60);
 text("En su clase, para ser respetado, hay que ir a tocar un piano ",10,80);
 text("abandonado en el bosque y que se dice que está roto.",10,100);
 text("Kai, que dice ser el dueño del piano,", 10,120); 
 text(" resulta ser el único que puede tocarlo",10,140);
 text("y también tiene mucho talento.",10,160);
 
 //opacidad del texto
 if (posX == 0 && opacidadTexto < 255)
 { opacidadTexto = opacidadTexto +2;}
 if (posX == 0 && millis()-ultimocambio > 8000){posX = -640;
 pantalla = 2;
 opacidadTexto = 0;}
 } else if (pantalla == 2) {
 background(0);
 image(img2, posX, 0, 640, 480);
    
// Movimiento del fondo
    if (posX < 0) {
 posX = posX + 10;
 ultimocambio = millis();}
 
 //rectángulo x contraste
 noStroke();
 fill(168,222,69,opacidadTexto-30);
  rect(5,5,630,170);
 
// Textos de la pantalla 2
textFont(fuenteCuerpo);
textSize(20);
fill(0, 0, 0, opacidadTexto);
text("Kai es de 'el borde del bosque', una zona marginal y barrio rojo.", 10, 20);
text("Todo lo que conoce son las calles peligrosas de la zona roja", 10, 40);
text("o el denso bosque.", 10, 60);
text("Allí encuentra un piano de cola abandonado, que se convierte", 10, 80);
text("en su mayor tesoro.", 10, 100);
 text("El bosque es su refugio secreto, el lugar donde olvida la realidad", 10, 140);
text("del barrio marginal donde duerme y puede ser él mismo.", 10, 160);
    
 //opacidad d texto
if (posX == 0 && opacidadTexto < 255) {
  opacidadTexto = opacidadTexto + 2;
}
    
if (posX == 0 && millis() - ultimocambio > 8000) {
 posX = -640;          
 opacidadTexto = 0;    
 opacidadFondo3 = 0;
pantalla = 3;         
    }
  } // cierre d pantalla 2
  else if (pantalla == 3) {
    background(0);
    
//animación imágen
 tint(255, 255, 255, opacidadFondo3);
image(img10, 0, 0, 640, 480);
 noTint();
    
//opacidad fondo 3
    if (opacidadFondo3 < 255) 
{opacidadFondo3 = opacidadFondo3 + 3;
 ultimocambio = millis();}  
 
 //rectángulo x contraste
noStroke();
 fill(168, 222, 69, opacidadFondo3 - 30);
rect(5, 375, 630, 100); 
    
// Textos de pantalla 3
textFont(fuenteCuerpo);
textSize(19); // Bajado un pelín para que entre cómodo en la caja inferior
fill(0, 0, 0, opacidadFondo3); 
text("Su madre es la única figura familiar en la vida de Kai.", 15, 395);
text("El padre de Kai es completamente desconocido.", 15, 415);
text("Debido a el entorno de trabajo de su madre, nunca", 15, 435);
text("se menciona la identidad de su progenitor.", 15, 455);
 
 if (opacidadFondo3 >= 255 && millis() - ultimocambio > 8000) {
  posX = -640;
opacidadTexto = 0;
opacidadFondo3 = 0;
pantalla = 4;
    }
  } //cierre de pantalla 3
  else if (pantalla ==4) { background (0); 
  
  tint(255,255,255, opacidadFondo3);
  image(img0,0,0,640,480);
  noTint();
  
  if (opacidadFondo3 < 255) { opacidadFondo3 = opacidadFondo3 + 4;
  ultimocambio = millis ();}
  
  if (opacidadFondo3 >= 255) {
      
      tint(255, 255, 255, opacidadReiko);
      image(img4, 250, 90, 300, 400); 
      noTint(); 

      //Animación de Reiko
      if (opacidadReiko < 255) {
        opacidadReiko = opacidadReiko + 4;
        ultimocambio = millis();
      }}
      noStroke();
    fill(168, 222, 69, 150); 
    rect(5, 375, 630, 100); 
    
//textos d pantalla 4
textFont(fuenteCuerpo);
 textSize(20);
 fill(0); 
 text("Reiko lo tuvo cuando tenía 15 y trabaja como trabajadora sexual.", 15,395);
text("Reiko es retratada como una madre profundamente", 15, 415);
text("cariñosa, protectora y devota.",15,435);
 text("Le brinda a Kai un amor incondicional que lo mantiene.", 15, 455);
text("rescatado de la hostilidad de su entorno",15,475);
    if (opacidadFondo3 >= 255 && opacidadReiko >= 255 && millis() - ultimocambio > 8000) {
      posX = -640;           
      opacidadFondo3 = 0;    
      opacidadTexto = 0;     
      opacidadReiko = 0;
      pantalla = 5;
    }
else if (pantalla == 5) {

    tint(255, 255, 255, opacidadFondo3);
    image(img0, 0, 0, 640, 480); 

    if (opacidadFondo3 < 255) {
      opacidadFondo3 = opacidadFondo3 + 4;
      ultimocambio = millis();
    }

 
    if (opacidadFondo3 >= 255) {
      tint(255, 255, 255, opacidadshuhei);
      image(img14, 170, 20, 300, 440);
      noTint();

      if (opacidadshuhei < 255) {
        opacidadshuhei = opacidadshuhei + 4;
        ultimocambio = millis();
      }
    }

    noStroke();
    fill(168, 222, 69, 180);
    rect(10, 370, 620, 100);

    textFont(fuenteCuerpo);
    textSize(20);
    fill(0);
    text("Shuhei Amamiya llega al aula como el nuevo estudiante.", 20, 410);
    text("Hijo de un pianista famoso, su destino se cruzará con el de Kai.", 20, 440);

  
    if (opacidadFondo3 >= 255 && opacidadshuhei >= 255 && millis() - ultimocambio > 8000) {
      posX = -640;
      opacidadFondo3 = 0;
      opacidadTexto = 0;
      opacidadshuhei = 0;
      pantalla = 6;
    }
  } 




    if (opacidadFondo3 >= 255 && opacidadshuhei >= 255 && millis() - ultimocambio > 8000){
      posX = -640;
      opacidadFondo3 = 0;
      opacidadTexto = 0;
      opacidadshuhei = 0;
      pantalla = 6;
    } 

  } }}





void mousePressed() {
  if (pantalla == 0) {
    if (mouseX > 220 && mouseX < 420 && mouseY > 269 && mouseY < 349) {
      pantalla = 1;
      ultimocambio = millis();
    }
  }
}
