int sum = 0;
void setup()
{
	size(600,600);
	noLoop();
}
void draw()
{	
	background(0);
	for(int k = 0; k < 500; k+=100)
	{
		for ( int j = 50; j < 500; j+=100)
		{
			
			Die bob = new Die(j,k);
			bob.show();
			sum = sum + bob.numDots;
		}
	}
	fill(255);
	textSize(15);
	text("Total: " + sum, 250,550);
}
void mousePressed()
{
	redraw();
	sum = 0;
}
class Die //models one single dice cube
{
	int numDots,myX, myY;
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		roll();
	}
	void roll()
	{
		numDots = (int)(Math.random()*6+1);
	}
	void show()
	{
		fill(255);
		rect(myX,myY,100,100);
		if(numDots == 1)
		{
			fill(0);
			ellipse(myX+50,myY+50,10,10);
		}	
		else if(numDots == 2)
		{
			fill(0);
			ellipse(myX+30,myY+70,10,10);
			ellipse(myX+70,myY+30,10,10);
		}	
		else if(numDots == 3)
		{
			fill(0);
			ellipse(myX+27,myY+70,10,10);
			ellipse(myX+50,myY+50,10,10);
			ellipse(myX+73,myY+27,10,10);
		}	
		else if(numDots == 4)
		{
			fill(0);
			ellipse(myX+30,myY+30,10,10);
			ellipse(myX+30,myY+70,10,10);
			ellipse(myX+70,myY+30,10,10);
			ellipse(myX+70,myY+70,10,10);
		}	
		else if(numDots == 5)
		{
			fill(0);
			ellipse(myX+30,myY+30,10,10);
			ellipse(myX+30,myY+70,10,10);
			ellipse(myX+70,myY+30,10,10);
			ellipse(myX+70,myY+70,10,10);
			ellipse(myX+50,myY+50,10,10);
		}	
		else
		{
			fill(0);
			ellipse(myX+30,myY+30,10,10);
			ellipse(myX+30,myY+70,10,10);
			ellipse(myX+70,myY+30,10,10);
			ellipse(myX+70,myY+70,10,10);
			ellipse(myX+30,myY+50,10,10);
			ellipse(myX+70,myY+50,10,10);
		}
			
	}
}
