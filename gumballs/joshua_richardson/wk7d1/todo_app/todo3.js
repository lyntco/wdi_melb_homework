// var addTaskBtn = document.getElementById('add-task');
var $addTaskBtn = $('#add-task');

var $todoListElem = document.getElementById('todo-list');

$addTaskBtn.on('click', function() {

  var newTaskBody = document.getElementById('new-task-body'); // this one
  var listItemElem = document.createElement('li'); // this one

  listItemElem.appendChild( document.createTextNode(newTaskBody.value) ); // this

  listItemElem.addEventListener('click', function(event) { // this one
    console.log(event);
    // the event handler changed the context for me
    // this refers to the li being clicked

    if (this.getAttribute('class') === 'completed') { // this one
      this.setAttribute('class', ''); // this one
    } else {
      this.setAttribute('class', 'completed'); // this one
    }
  });

  // append the li back into the ul
  $todoListElem.appendChild(listItemElem); // this one

  // clear the input box value
  newTaskBody.value = ''; // this one
})