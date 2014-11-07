

	document.getElementsByTagName('body')[0].style.fontFamily="Arial, sans-serif";

	document.getElementById('nickname').innerHTML='Jam';

	document.getElementById('favorites').innerHTML='Chocolate & Fried Chicken';

	document.getElementById('hometown').innerHTML='Manila';

	document.getElementsByTagName('li').className='listitem';

	var listitems = document.getElementsByTagName('li');

	for (i=0; i<listitems.length; i++) {
		var listitem = listitems[i];

		listitem.className='listitem';
	}

	var listItemToRed = document.getElementsByClassName("listitem");

	for (i=0; i<listItemToRed.length; i++) {
		var listitem = listItemToRed[i];

		listitem.style.color="red";
	}

	var image = document.createElement("IMG");
	image.src = 'http://coolspotters.com/files/photos/103996/smuckers-strawberry-jam-profile.jpg';
	document.getElementById("nickname").appendChild(image);



