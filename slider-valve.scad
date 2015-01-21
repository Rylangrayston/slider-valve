tubedia = 5.5; //tube diameter
opening = tubedia*1.1;
width = opening*2;
length = width*5;

endStopperDiameter = width / 5;
resolution = 20;
sheetThickness = 3;

sliderHoleSize = width * .9;

module hoseClamp()
{

union()
	{
	difference()
		{
		square([width,length]);
		polygon(points = [[opening/2,0],[opening*3/2,0],[opening,length*.9]]);
		};
	circle(endStopperDiameter, $fn = resolution);
	translate([width,0,0])
		circle(endStopperDiameter, $fn = resolution);
	}	

}


module slider()
{
	difference()
	{
	square([width+sheetThickness*2,sheetThickness * 3]);
	translate([width/2 + sheetThickness,sheetThickness*1.5,0])
	square([sliderHoleSize,sheetThickness], center = true);
	}

}

translate([0, - sheetThickness *4,0])
slider();
hoseClamp();

