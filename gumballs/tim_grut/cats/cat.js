var movePixels = 10;
var delayMs = 50;
var catTimer = null;
function catWalk() {
  var img = document.getElementsByTagName('img')[0];
  var currentLeft = parseInt(img.style.left);
  img.style.left = (currentLeft + movePixels) + 'px';
  if (currentLeft > (window.innerWidth-img.width) {
    movePixels = -10
    // img.style.left = '0px';
  }
  else if (currentLeft <= 0) {

    movePixels = 10
  }
  else if (currentLeft == (window.innerWidth-img.width)/2

}
function startCatWalk() {
  delayMs = 50
  clearInterval(catTimer)
  catTimer = window.setInterval(catWalk, delayMs);
}

document.getElementById('start-button').addEventListener('click',startCatWalk)
document.getElementById('stop-button').addEventListener('click',function() {
  clearInterval(catTimer);

  })

document.getElementById('speed-button').addEventListener('click',fastCatWalk)



function fastCatWalk() {
  delayMs -= 5
  clearInterval(catTimer);
  catTimer = window.setInterval(catWalk, delayMs);
}