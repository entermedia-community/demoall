	var lastlocation = 0;

	document.getElementById('topvideo').addEventListener('loadedmetadata', 
			function() {
			  //this.currentTime = 100;
			  this.volume = 0; 
			  this.play();		  
			}, false);
		document.getElementById('topvideo').addEventListener('timeupdate',
			function() {				
				if(  window.pageYOffset < 400)
				{
					if( this.currentTime > 9 )
					{
					 	this.currentTime = 3;
					}	
				}
				else
				{
					if( this.currentTime < 9 || this.currentTime > 32)
					{
					 	this.currentTime = 9;
					}	
					//pause?
				}
			},false);

	
	
	window.onscroll = function()
	{
		lastlocation = window.pageYOffset;
		check2();
		check3();
		check4();
		checkcontact();
	}
	check2 = function()
	{
		if(lastlocation > 600 && lastlocation < 1600)
		{
			document.getElementById('secondvideo').play();
		}
	}
	check3 = function()
	{
		if(lastlocation > 1600 && lastlocation < 2200)
		{
			document.getElementById('thirdvideo').play();
		}
	}
	check4 = function()
	{
		if(lastlocation > 2200 && lastlocation < 2800)
		{
			document.getElementById('fourthvideo').play();
		}
	}
	checkcontact = function()
	{
		if(lastlocation > 2800 )
		{
			document.getElementById('contactvideo').play();
		}
	}

	/*
	document.getElementById('thirdvideo').addEventListener('loadedmetadata', 
		function() {
		  this.volume = 0; 
		  this.play();
		  checksecond();
		}, false);
	*/
	document.getElementById('secondvideo').addEventListener('timeupdate', 
			function() {
				//loop the last part
				if( this.currentTime >= 20 )
				{
					this.currentTime = 0;	
				}
			}, false);
	
