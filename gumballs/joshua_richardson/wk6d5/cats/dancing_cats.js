var movePixels = 10;
var delayMs = 50;
var catTimer = null;

function catWalk() {
    var img = document.getElementsByTagName('img')[0];
    var currentLeft = parseInt(img.style.left);
    img.style.left = (currentLeft + movePixels) + 'px';
    if (currentLeft > (window.innerWidth-img.width)) {
      movePixels = -10;
  } else if (currentLeft <= 0) {
      movePixels = 10;
  } else {

  }
};

function startCatWalk() {
  if (catTimer === null) {
  catTimer = window.setInterval(catWalk, delayMs);
}
};

function goFaster() {
  movePixels  *= 2;
};

function stopCatWalk() {
  movePixels = 5;
  clearInterval(catTimer);
  catTimer = null;
};

document.getElementById("start-button").addEventListener("click", startCatWalk);
document.getElementById("speed-button").addEventListener("click", goFaster);
document.getElementById("stop-button").addEventListener("click", stopCatWalk);

