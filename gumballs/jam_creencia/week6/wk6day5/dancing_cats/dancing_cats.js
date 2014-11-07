 

var movePixels = 10;
var delayMs = 50;
var catTimer = null;
function catWalk() {

  var img = document.getElementsByTagName('img')[0];
  var currentLeft = parseInt(img.style.left);
  img.style.left = (currentLeft + movePixels) + 'px';
  if (currentLeft > (window.innerWidth-img.width)) {
    movePixels -= 1;
    img.src = 'back.gif';

  };

  if (currentLeft < 0) {
  	movePixels += 1;
  	img.src = 'http://www.anniemation.com/clip_art/images/cat-walk.gif'

  }

}



function startCatWalk() {
  catTimer = window.setInterval(catWalk, delayMs);
}

function stopCatWalk() {
  window.clearInterval(catTimer);

}

function fasterCatWalk() {
	window.clearInterval(catTimer);
	delayMs -= 20;
	catTimer = window.setInterval(catWalk, delayMs);
}


var startBtn = document.getElementById('start-button');

startBtn.addEventListener('click', startCatWalk);

var stopBtn = document.getElementById('stop-button');

stopBtn.addEventListener('click', stopCatWalk );

var speedBtn = document.getElementById('speed-button');

speedBtn.addEventListener('click', fasterCatWalk)