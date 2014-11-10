// $id        = function(i){return document.getElementById(i) }
// create     = function(tg,txt){
//   var el   = document.createElement(tg)
//   el.appendChild (document.createTextNode (txt));
//   return el
// }

// function addEl(parent,tg,txt){
//   return parent.appendChild( create(tg,txt) )
// }


// $id("add-task").addEventListener('click', function() {
//   var el = addEl( $id("todo-list"), "li", $id("new-task").value )
//   el.addEventListener("click", function(){this.style.textDecoration="line-through"});
// });

//------------------------------------
$id        = function(i){ return document.getElementById(i) }
create     = function(tg,txt){
  var el   = document.createElement(tg)
  el.appendChild (document.createTextNode (txt));
  return el
}

$id( "add-task" ).addEventListener( 'click', function() {
  $id( "todo-list" ).appendChild( create( "li", $id("new-task").value ) )
    .addEventListener( "click", function(){
      var Klass = (this.getAttribute('class')==="completed")? "":"completed"
      this.setAttribute("class",Klass)
    });
});