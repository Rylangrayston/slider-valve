tubedia = 5.5; //tube diameter
opening = tubedia*1.1;
width = opening*2;
length = width*5;

difference (){
	

	square([width,length],[width/2,length/2]);
	
	polygon(
		points = [[opening/2,0],[opening*3/2,0],[opening,length*.9]]
		);



	};	