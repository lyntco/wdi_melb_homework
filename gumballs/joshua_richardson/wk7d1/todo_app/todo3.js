// var addTaskBtn = document.getElementById('add-task');
var $addTaskBtn = $('#add-task');
var $todoListElem = $('#todo-list');

$addTaskBtn.on('click', function(){

  var $newTaskBody = $('#new-task-body');

  var $listItemElem = $('<li>').html($newTaskBody.val());
  $todoListElem.append($listItemElem); //append appendTo

  $newTaskBody.val('');
})

  $todoListElem.on('click', 'li', function(){
    $(this).toggleClass('completed');
  });