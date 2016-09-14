//weird when mouse < Y and when mouse < x

Bacteria [] colony;

void setup(){
	stroke(0,0,0,50);
 	colony = new Bacteria[30];
 	for(int i = 0; i<colony.length; i++){
 		colony[i] = new Bacteria();
 	}

 	size(500,500);
 }   
void draw()   
 {    
 	background(180);
 	for(int i = 0 ; i<colony.length ; i++){
 		colony[i].walk();
 		colony[i].show();
 	}
 }  


 void mousePressed(){
 }


 class Bacteria    
 {     
 	int myX, myY, r, g, b;

 	Bacteria()
 	{
 		myX = (int)(Math.random() * width);
 		myY = (int)(Math.random() * height);
 		r = (int)(Math.random()*155)+100;
 		g = (int)(Math.random()*155)+100;
 		b = (int)(Math.random()*155)+100;
 	}

 	void show(){
 		fill(r, g, b);
 		ellipse(myX, myY, 15, 15);
 	}


 	void walk(){

 		if(mouseX > myX){
			myX = myX + (int)(Math.random()*2);

 		}

 		if(mouseX < myX){
 			myX = myX - (int)(Math.random()*2);

 		}

 		if(mouseY > myY){
 			myY = myY + (int)(Math.random()*2);
 			//0,1
 		}

 		if(mouseY < myY){
 			//-1,0
 			myY = myY - (int)(Math.random()*2);
 		}

 		else{
 			//-1,0,1
 		myX = myX + (int)(Math.random()*5)-2;
 		myY = myY + (int)(Math.random()*5)-2;
 	}
 	}


 }    