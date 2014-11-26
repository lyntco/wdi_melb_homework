App.tasks = new App.Collections.Tasks();
App.tasks.fetch().done(function(){
App.tasks.each(function(task, index){
    var view = new App.Views.TaskItemView({ model: task});
    $('#sidebar ul').append(view.render().el);
  });
});

$('#newTask button').on('click', function() {

  var taskVal = $('#newTask input').val();
  console.log(taskVal);

  // clear the input after grabbing the value
  $('#newTask input').val('');

  var task = new App.Models.Task({ description: taskVal });

App.tasks.create(task);

  var view = new App.Views.TaskItemView({ model: task });
  $('#sidebar ul').append(view.render().el);
});