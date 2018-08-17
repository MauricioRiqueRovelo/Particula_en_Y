class Particula{
  //atributos;
  float px;
  float py;
  float t;
  float r,g,b;
  float dx;
  float dy;

  
  //Constructor
  Particula(float px_, float py_, float t_, float r_,float g_, float b_, float dx_, float dy_){
    px = px_;
    py = py_;
    t = t_;
    r = r_;
    g = g_;
    b = b_;
    dx = dx_;
    dy = dy_;
  }
  
  // Métodos
  void display(){
    noStroke();
    fill(r, g, b);
    ellipse(px, py, t, t);
  }
  
  void mover(){
    px += dx;
    py += dy;
    rebota();
  }
  
  void rebota(){
    if (px > 400){
      dx *= -1;
    }
    else if (px < 0){
      dx *= -1;
    }
    else if (py > 400){
      dy *= -1;
    }
    else if (py < 0){
      dy *= -1;
    }
  }
}
  
//varibles globales
Particula uno;
Particula dos;
Particula tres;
Particula cuatro;
Particula cinco;
Particula seis;
Particula siete;
Particula ocho;
Particula nueve;
Particula diez;



void setup(){
  size(400, 400);
  uno = new Particula (200, 200, 100, 255, 0, 0, 0.5, 1);
  dos = new Particula (0, 300, 30, 0, 255, 100, 2, 3);
  tres = new Particula (150, 100, 75, 0, 255, 255, 1, 2);
  cuatro = new Particula (25, 25, 40, 100, 100, 100, 4, 0.75);
  cinco = new Particula (75, 80, 50, 255, 80, 255, 2.5, 1);
  seis = new Particula (100, 100, 200, 125, 125, 255, 5, 2);
  siete = new Particula (300, 50, 80, 0, 0, 255, 2, 2);
  ocho = new Particula (250, 350, 125, 0, 0, 0, 3.5, 0.5);
  nueve = new Particula (0, 0, 100, 255, 75, 122, 1, 1);
  diez = new Particula (400, 50, 75, 255, 127, 0, 1, 4);
}

void draw(){
  background(255);
  uno.display();
  uno.mover();
  dos.display();
  dos.mover();
  tres.display();
  tres.mover();
  cuatro.display();
  cuatro.mover();
  cinco.display();
  cinco.mover();
  seis.display();
  seis.mover();
  siete.display();
  siete.mover();
  ocho.display();
  ocho.mover();
  nueve.display();
  nueve.mover();
  diez.display();
  diez.mover();
  
}
