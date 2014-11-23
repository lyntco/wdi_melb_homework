var makeList = function() {
	var task = document.getElementById('new-task-body').value;

	// var listItem = document.createElement('li');
	// var listContent = document.createTextNode(task);
	// listItem.appendChild(listContent);

	// document.getElementById('todo-list').appendChild(listItem);

	var newCheckbox = document.createElement("input");
	newCheckbox.setAttribute('type', 'checkbox');
	newCheckbox.setAttribute('id', 'newCheckbox');

	var newLabel = document.createElement('label');
	newLabel.htmlFor = 'newCheckbox';
	newLabel.appendChild(document.createTextNode(" " + task));
	
};


document.getElementById('add-task').addEventListener('click', makeList);


	if (document.getElementById('newCheckbox') != null) {

document.getElementById('newCheckbox').addEventListener('click', function() {
	console.log('change');
});
// document.getElementsByTagName('li').addEventListener('click', function() {
// 	console.log('clicked');
// });

// if (document.getElementsByTagName('li')[0].textContent == 'hello') {
// 	document.getElementsByTagName('li')[0].style.setProperty("text-decoration", "line-through");
// }





// document.addEventListener('click', function(event) {

// 	console.log(event.target);

// });





// if (document.getElementById('newCheckbox') != null) {

// document.getElementById('newCheckbox').addEventListener('click', function() {
// 	console.log('change');
// });

// };

	// var newCheckbox = document.createElement("input");
	// newCheckbox.setAttribute('type', 'checkbox');
	// newCheckbox.setAttribute('id', 'newCheckbox');

	// var newLabel = document.createElement('label');
	// newLabel.htmlFor = 'newCheckbox';
	// newLabel.appendChild(document.createTextNode(" " + task));

