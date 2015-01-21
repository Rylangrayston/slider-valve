tubedia = 5.5; //tube diameter
opening = tubedia*1.1;
width = opening*2;
length = width*5;

endStopperDiameter = width / 5;
resolution = 20;

union()
	{
	difference()
		{
		square([width,length]);
		polygon(points = [[opening/2,0],[opening*3/2,0],[opening,length*.9]]);
		};
	#circle(endStopperDiameter, $fn = resolution);
	translate([width,0,0])
		circle(endStopperDiameter, $fn = resolution);
	}	