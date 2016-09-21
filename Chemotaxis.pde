Bacteria [] colony;
int bgcolor = color(120);

void setup(){
	 noStroke();
 	colony = new Bacteria[40];
 	for(int i = 0; i<colony.length; i++){
 		colony[i] = new Bacteria();
 	}

 	size(500,500);
 }   
void draw()   
 {    
 	background(bgcolor);
 	for(int i = 0 ; i<colony.length ; i++){
 		colony[i].walk();
 		colony[i].show();

 	}
 }  

void keyPressed(){
	if(keyCode == 82){ //press R key to reset
	for(int i = 0 ; i<colony.length ; i++){ 
 		colony[i].myX = (int)(Math.random() * width);
 		colony[i].myY = (int)(Math.random() * height);		
	}
}
if(keyCode == 32){ //press space key to toggle ignore
	for(int i = 0 ; i<colony.length ; i++){ 
		if(colony[i].ignore == false){
 			colony[i].ignore = true;
 		}
 		else if(colony[i].ignore == true){
 			colony[i].ignore = false;
 		}
	}
}
}

 void mousePressed(){
 	for(int i = 0 ; i<colony.length ; i++){   //clicking changes between scared/not

 		if(colony[i].scared){
 			colony[i].scared = false; //attract 
 		}
 		else if(!colony[i].scared){
 			colony[i].scared = true;
 		}
 	}

 }


 class Bacteria    
 {     
 	int myX, myY, r, g, b;
 	boolean scared, ignore;

 	Bacteria()
 	{
 		myX = (int)(Math.random() * width);
 		myY = (int)(Math.random() * height);
 		g = (int)(Math.random()*155)+100;
 		b = (int)(Math.random()*155)+100;
 		scared = true;
 		ignore = false;
 	}

 	void show(){
 		fill(100, g, b);
 		ellipse(myX, myY, 15, 15);
 	}


 	void walk(){

 		if( (scared && ignore) || (!scared && ignore)){
 			//-1, 0, 1
 		myX = myX + (int)(Math.random()*3)-1;
 		myY = myY + (int)(Math.random()*3)-1;
 		}

 	else if(scared){

 		if(mouseX > myX){
			myX = myX - (int)(Math.random()*3);

 		}

 		else if(mouseX < myX){
 			myX = myX + (int)(Math.random()*3);
 			//0, 1, 2

 		}

 		if(mouseY > myY){
 			myY = myY - (int)(Math.random()*3);
 		}

 		else if(mouseY < myY){
 			myY = myY + (int)(Math.random()*3);
 		}

 		else{
 			//-1, 0, 1
 		myX = myX + (int)(Math.random()*3)-1;
 		myY = myY + (int)(Math.random()*3)-1;
 		}
 	}

 	else if(!scared){

 		if(mouseX > myX){
			myX = myX + (int)(Math.random()*3);

 		}

 		else if(mouseX < myX){
 			myX = myX - (int)(Math.random()*3);
 			//0, 1, 2

 		}

 		if(mouseY > myY){
 			myY = myY + (int)(Math.random()*3);
 		}

 		else if(mouseY < myY){
 			myY = myY - (int)(Math.random()*3);
 		}

 		else{
 			//-1, 0, 1
 		myX = myX + (int)(Math.random()*3)-1;
 		myY = myY + (int)(Math.random()*3)-1;
 		}

 	}

 		//do not go out of bounds
 		if(myX > 492){
 			myX = 492;
 		}
 		if( myX < 8){
 			myX = 8;
 		}

 		if(myY > 492){
 			myY = 492;
 		}
 		if(myY < 8){
 			myY = 8;
 		}
 	}


 }    