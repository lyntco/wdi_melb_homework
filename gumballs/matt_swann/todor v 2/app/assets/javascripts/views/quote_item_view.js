var App = App || {};

App.Views.TaskItemView = Backbone.View.extend({

  tagName: 'li',
  events: {
    'click': 'selectTask',
    'click a': 'deleteTask'
  },


  initialize: function() {
    this.listenTo(this.model, 'change', this.render);
  },

  deleteTask: function(event)  {
    event.preventDefult();
    this.model.destroy();
    this.remove();
  },

  render: function() {
    var template = $('#taskItemView').html();
    var taskItemHTML = Handlebars.compile(template);
    this.$el.html(taskItemHTML( this.model.toJSON() ));
    return this;
  },

  selectTask: function() {
    this.$el.parent().find('li').addClass('completed');
    // this.$el.addClass('completed');
  }
});