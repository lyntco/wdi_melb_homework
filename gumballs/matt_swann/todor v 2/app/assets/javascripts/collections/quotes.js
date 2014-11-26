var App = App || {};

App.Collections.Tasks = Backbone.Collection.extend({
  model: App.Models.Task,
  url: '/tasks'

});