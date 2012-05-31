//= require_tree ./models
//= require 	 ./helpers/store
//= require_tree ./controllers
//= require_tree ./views
//= require_tree ./helpers
//= require_tree ./templates
//= require_tree ./states
//= require_self

// Esql.stateManager is useful for debugging,
// but don't use it directly in application code.
var stateManager = Esql.stateManager = Esql.StateManager.create();
Esql.initialize(stateManager);

jQuery(function() {
  stateManager.send('ready');
});