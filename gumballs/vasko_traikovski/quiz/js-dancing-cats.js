var movePixels = 10;
var delayMs = 50;
var catTimer = null;
var imgBlack = document.getElementsByTagName('img')[0];
var imgDance = document.getElementsByTagName('img')[1];
var currentLeft = parseInt(imgDance.style.left);
imgDance.style.left = ( currentLeft + 0 ) + 'px';

function catWalk() {
  // var img = document.getElementsByTagName('img')[0];
  if (currentLeft > (window.innerWidth / 2)) {
    img = imgDance
    // console.log(img)
    console.log("a: "+currentLeft)
  } else {
    img = imgBlack
        // console.log(img)
    console.log("b: "+currentLeft)
  }
  currentLeft = parseInt(img.style.left);

  img.style.left = (currentLeft + movePixels) + 'px';
  if (currentLeft > (window.innerWidth - img.width)) {
    img.style.left = '0px';
    img = imgBlack
  }
}

function startCatWalk() {
  if (catTimer === null)
    catTimer = window.setInterval(catWalk, delayMs);
}

function speedCatWalk() {
  stopCatWalk()
  catTimer = window.setInterval(catWalk, delayMs / 4);
}

function stopCatWalk() {
  if (catTimer) {
    clearInterval(catTimer);
    catTimer = null;
  }

}

document.getElementById("start-button").addEventListener('click', startCatWalk);
document.getElementById("speed-button").addEventListener('click', speedCatWalk);
document.getElementById("stop-button").addEventListener('click', stopCatWalk);