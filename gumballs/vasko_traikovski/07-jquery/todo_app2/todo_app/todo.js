

// $( "#add-task" ).on( 'click', function() {
//   $( "<li>" ) .append( $("#new-task").val() )
//               .appendTo( '#todo-list')
//               .on(       "click", function(){
//                 $(this).toggleClass("completed");
//               });
// });

$( "#add-task" ).on( 'click', function() {
    $( "<li>" ) .append( $("#new-task").val() )
                .appendTo( '#todo-list');
$( '#todo-list').on(     "click", 'li', function(){
                $(this).toggleClass("completed");
              });
});