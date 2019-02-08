private double fractionLength = .8; 
private int smallestBranch = 5; 
private double branchAngle = .4;  
int[] colors = {#7293A0,#45B69C,#21D19F,#A0A4B8,#D8DDEF};
public void setup() 
{   
	size(640,480);    
	background(0);   
} 
public void draw() {} 
public void mouseClicked(){
	drawBranches(mouseX, 480, 50*Math.random() + 50, 0); 
}
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	if(branchLength < smallestBranch){
		return;
	}else{
		stroke(colors[(int)branchLength%5]);
		line(x,y,(float)(x + branchLength*Math.sin(angle)), (float)(y - branchLength*Math.cos(angle)));
		drawBranches((int)(x + branchLength*Math.sin(angle)), (int)(y - branchLength*Math.cos(angle)),branchLength*fractionLength, angle + branchAngle);
		drawBranches((int)(x + branchLength*Math.sin(angle)), (int)(y - branchLength*Math.cos(angle)),branchLength*fractionLength, angle - branchAngle);
	}
} 
