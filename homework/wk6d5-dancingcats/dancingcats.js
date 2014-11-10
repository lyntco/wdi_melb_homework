var movePixels = 10;
var delayMs = 50;
var catTimer = null;
var reverse = false;

function catWalk() {
  var img = document.getElementsByTagName('img')[0]; //gets the first image on the doc, saves it to variable
  var currentLeft = parseInt(img.style.left); //change css left to an integer

  if (reverse === false) {
  img.style.left = (currentLeft + movePixels) + 'px'
  } //add 10 to the css position and then add px back in to the css
  else {
    img.style.left = (currentLeft - movePixels) + 'px'
    };
  if (currentLeft > (window.innerWidth-img.width)) {
  reverse = true;
  }
  else if (currentLeft < 10) {
    reverse = false;
  }
}

function startCatWalk() {
  if (catTimer === null) {
    movePixels = 10;
  catTimer = window.setInterval(catWalk, delayMs);}
};

function stopCatWalk() {
  window.clearInterval(catTimer);
  catTimer = null;
};

function speedCatWalk() {
  movePixels = (movePixels + 100);
};

var startButton = document.getElementById('start-button');

startButton.addEventListener('click', startCatWalk);

var stopButton = document.getElementById('stop-button');

stopButton.addEventListener('click', stopCatWalk);

var speedButton = document.getElementById('speed-button');
 window.clearInterval(catTimer);
speedButton.addEventListener('click', speedCatWalk);
