
var $addTaskBtn = $('#add-task');

var $todoListElem = $('#todo-list');

$addTaskBtn.on('click', function() {
  var $newTaskBody = $('#new-task-body'); 

  var $listItemElem = $('<li></li>').html($newTaskBody.val()); 

  $todoListElem.on('click', 'li', function() {

    $(this).toggleClass('completed');
  });

  // append the li back into the ul
  $todoListElem.append($listItemElem);

  // clear the input box value
  $newTaskBody.val(''); 
})