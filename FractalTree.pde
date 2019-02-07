private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
	
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0);   
	line(320,480,320,380);  
	drawBranches(320, 380, 50, branchAngle); 
	//drawBranches(??,??,??,??);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	if(branchLength < smallestBranch){
		return;
	}else{
		line(x,y,(float)(x + branchLength*Math.cos(angle)), (float)(y + branchLength*Math.sin(angle)));
		line(x,y,(float)(x - branchLength*Math.cos(angle)), (float)(y + branchLength*Math.sin(angle)));
		drawBranches((int)(x + branchLength*Math.cos(angle)), (int)(y + branchLength*Math.sin(angle)),branchLength/2, 2*angle);
		drawBranches((int)(x - branchLength*Math.cos(angle)), (int)(y + branchLength*Math.sin(angle)),branchLength/2, 2*angle);
	}
} 
