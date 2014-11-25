App.quotes = [
{ body: 'bundle', author: '<Sete></Sete>'},
{ body: 'sub', author: 'ji'},
{ body: 'productive tuesday'},
{ body: 'kissing symbols'}
];

_.each(App.quotes, function(quote, index) {
  var view = new App.QuoteItemView({ model: quote });
  $('#sidebar ul').append(view.render().el);
});

