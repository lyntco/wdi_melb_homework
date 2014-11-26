var App = App || {};

App.QuoteItemView = Backbone.View.extend({

  tagName: 'li',
  events: {
    'click': 'selectQuote'
  },

  initialize: function() {
    this.listenTo(this.model, 'change', this.render);
  },

  bundle: function() {
    console.log('works');
  },

  hey: function() {
    console.log('sdfsdf');
  },

  render: function() {
    var template = $('#quoteItemView').html();
    var quoteItemHTML = Handlebars.compile(template);

    this.$el.html(quoteItemHTML( this.model.toJSON() ));
    return this;
  },

  selectQuote: function() {
    this.$el.parent().find('li').removeClass('highlight');
    this.$el.addClass('highlight');
    $('#quote').find('p').hide().html(this.model.get("body")).fadeIn();
  }
});