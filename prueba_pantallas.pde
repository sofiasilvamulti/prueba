String pantallaActual = "pantalla1"; // para pasar de pantalla, la pantalla actual sería la que se va a mostrar primera y pu se ="pantalla1" porque va a hacer la principal que se muestre
int segundos;
PImage pantalla1,pantalla2,pantalla3,logo;//cada imagen que subas la tenes que nombrar acá //acá nombras las tres o cuatro imagenes que vayas a usar

void setup(){
 size(640,480);//tamaño de pantalla
 
 pantallaActual = "pantalla1"; //pantalla principal
 //cargar las imagenes que vas a usar, acordarte de subir todas las imagenes a la carpeta data
 pantalla1 = loadImage("the last of us 2.jpg"); //nombre del archivo, hay que agregarle el .jpg
 pantalla2 = loadImage("images.jpg");
 pantalla3 = loadImage("the last of us 4.jpg");// le puse jpeg porque me saltaba asi el archivo de la imagen y no jpg
 //también podes seguir agregando imagenes que vayas a utilizar pero estas son más que nada las que se van a ver principalmente en todo el tamaño de la patalla osea 640, 480
 //por ejempo yo agregue el logo de la pelicula que no estaba en la imagen y la cargue igual, siguiendo los mismos pasos que te voy a mostrar
logo = loadImage("logo.png"); //no le asignas pantalla 1 o 2, porque va a ir sobre la pantalla que eligas
}

void draw(){
    if( pantallaActual.equals("pantalla1")){//acá escribir entre () que pantalla/imagen se va a ver primero
   image(pantalla1,0,0,width,height);//le asignas la imagen, donde empieza a cargarse osea el eje X y el eje Y y por utlimo el tamaño de la pantalla
   image(logo, 0, 120, 300, 300); //aca yo le agregue la imagen del logo también, te lo puse para que tengas una idea de como sería agregar imagenes encima de la pantalla también
//acá seguias haciendo cargando las pantallas pero cambiando lo que esta escrito dentro del () que sería la imagen que se va a visualizar, que asignaste en void setup
} else if(pantallaActual.equals("pantalla2")){
  image(pantalla2,0,0,width,height);
} else if(pantallaActual.equals("pantalla3")){
  image(pantalla3,0,0,width,height);
}
  //acá tenes que poner los segundos que se va a visualizar cada pantalla, sinceramente no la entendí muy bien esta parte tipo pfui cambiando los numeritos hasta que me quedara como yo queria, segui esta formula y despues anda cambiando los numeros, que es la duración de cada pantalla
  
if (frameCount%35 == 0) {
    segundos++;
  }
  if (segundos<3) {
    pantallaActual = "pantalla1";
  } else if (segundos>=3 && segundos<= 6) {
    pantallaActual = "pantalla2";
  } else if (segundos > 6 && segundos <9) {
    pantallaActual = "pantalla3";
  }
  }
