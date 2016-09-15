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
 	background(120);
 	for(int i = 0 ; i<colony.length ; i++){
 		colony[i].walk();
 		colony[i].show();
 	}
 }  


 void mousePressed(){
 	for(int i = 0 ; i<colony.length ; i++){   //clicking resets bacteria position
 		colony[i].myX = (int)(Math.random() * width);
 		colony[i].myY = (int)(Math.random() * height);
 	}

 }


 class Bacteria    
 {     
 	int myX, myY, r, g, b;

 	Bacteria()
 	{
 		myX = (int)(Math.random() * width);
 		myY = (int)(Math.random() * height);
 		g = (int)(Math.random()*155)+100;
 		b = (int)(Math.random()*155)+100;
 	}

 	void show(){
 		fill(100, g, b);
 		ellipse(myX, myY, 15, 15);
 	}


 	void walk(){

 		if(mouseX > myX){
			myX = myX + (int)(Math.random()*3);

 		}

 		else if(mouseX < myX){
 			myX = myX - (int)(Math.random()*3);
 			//0, 1, 2

 		}

 		if(mouseY > myY){
 			myY = myY + (int)(Math.random()*3);
 			//try -1, 0, 1, 2
 		}

 		else if(mouseY < myY){
 			myY = myY - (int)(Math.random()*3);
 		}

 		else{
 			//-2, -1, 0, 1, 2
 		myX = myX + (int)(Math.random()*5)-2;
 		myY = myY + (int)(Math.random()*5)-2;
 	}
 	}


 }    