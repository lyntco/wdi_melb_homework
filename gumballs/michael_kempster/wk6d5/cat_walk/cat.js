var movePixels = 10;
var delayMs = 50;
var catTimer = null;
var goBack = false; // This changes the direction of travel of the cat depending on its direction (L->R is forward, R->L is back)
var pauseCat = false; // This allows the cat to be paused
var stopMultiTimeouts = false; // This prevents multiple indstances of the timeout being generated when the cat is paused
var stopMultiplePauses = false; // This prevents the cat dance from being invoked more than once (which prevents the cat from restarting)

function catWalk() {
  var img = document.getElementsByTagName('img')[0];
  var currentLeft = parseInt(img.style.left);

  if (pauseCat === false) {
    // Move the cat to the right or left according to the flag (false when at the left of the screen and true at the right)
    if (goBack === false) {
    	img.style.left = (currentLeft + movePixels) + 'px';
    } else {
    	img.style.left = (currentLeft - movePixels) + 'px';
    }
    // Reached the right of the screen so set goBack
    if (currentLeft > (window.innerWidth-img.width)) {
    	goBack = true;
      stopMultiplePauses = false;
      document.getElementById("imageid").style.transform="scale(-1, 1)";
    }
    // Reached the left if the screen so clear goBack
    if (currentLeft < 0) {
    	goBack = false;
      stopMultiplePauses = false;
      document.getElementById("imageid").style.transform="scale(1, 1)";
    }
    // When halfway show the dancing cat, note the hacky way of ensuring that the cat does not skip the middle of the browser window
    if ((currentLeft > (window.innerWidth-img.width)/2) && (stopMultiplePauses === false) && (goBack === false)) {
      document.getElementById("imageid").src="http://media.giphy.com/media/uU3oBlPJTx184/giphy.gif";
      pauseCat = true;
      stopMultiplePauses = true;
    }
    if ((currentLeft < (window.innerWidth-img.width)/2) && (stopMultiplePauses === false) && (goBack === true)) {
      document.getElementById("imageid").src="http://media.giphy.com/media/uU3oBlPJTx184/giphy.gif";
      pauseCat = true;
      stopMultiplePauses = true;
    }
  } else if (stopMultiTimeouts === false) {
    setTimeout(restartCatWalk, 3000);
    stopMultiTimeouts = true;
  }
}

function restartCatWalk() {
  document.getElementById("imageid").src="http://www.anniemation.com/clip_art/images/cat-walk.gif";
  pauseCat = false;
  stopMultiTimeouts = false;
}

function startCatWalk() {
	if (catTimer === null) {
  	catTimer = window.setInterval(catWalk, delayMs);
	}
}

function stopCatWalk() {
	movePixels = 10;
	clearInterval(catTimer);
	catTimer = null;
}

function speedCatWalk() {
	movePixels += 10;
}

function slowCatWalk() {
	if (movePixels > 10) {
	movePixels -= 10;
	}
}

// This does not work as expected - trying to change the delayMs variable instead of movePixels
// function speedCatWalk() {
//   window.setInterval(catWalk, delayMs / 2);
// }

// This does not work at all, still speeds the cat up
// function slowCatWalk() {
//   window.setInterval(catWalk, delayMs * 2);
// }

var start = document.getElementById('start-button');
start.addEventListener('click', startCatWalk);

var stop = document.getElementById('stop-button');
stop.addEventListener('click', stopCatWalk);

var speed = document.getElementById('speed-button');
speed.addEventListener('click', speedCatWalk);

var slow = document.getElementById('slow-button');
slow.addEventListener('click', slowCatWalk);