var button = document.getElementById('add-task');

var post_todo = function () {

  var newTask = document.getElementById('new-task-body').value;

  var node=document.createElement("LI");
  var textnode=document.createTextNode(newTask);
  node.appendChild(textnode);
  document.getElementById("todo-list").appendChild(node);

}

// crosses-out item
document.getElementById("todo-list").addEventListener("click", function(e) {
    // e.target will be the item that was clicked on
    e.target.style["text-decoration"] = "line-through";


    if (e.target.style["text-decoration"] === "line-through") {
      document.getElementById("todo-list").addEventListener("click", function(e) {
    // e.target will be the item that was clicked on
    e.target.style["text-decoration"] = "none";
    })
    }

})


button.addEventListener('click', post_todo);


