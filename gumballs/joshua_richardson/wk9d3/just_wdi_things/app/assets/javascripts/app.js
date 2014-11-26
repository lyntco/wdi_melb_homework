App.quotes = new App.Quotes();

App.quotes.fetch().done(function() {

  _.each(App.quotes, function(quote, index) {
    var view = new App.QuoteItemView({ model: quote });
    $('#sidebar ul').append(view.render().el);
  });
});

$('#newQuote button').on('click', function() {

  var quoteVal = $('#newQuote input').val();
  console.log(quoteVal);

  // clear the input after grabbing the value
  $('#newQuote input').val('');

  // creates an instance of quote model
  var quote = new App.Quote({ body: quoteVal, author: 'blah' });

  // pass the quote model instance to the view
  var view = new App.QuoteItemView({ model: quote });
  $('#sidebar ul').append(view.render().el);
});
