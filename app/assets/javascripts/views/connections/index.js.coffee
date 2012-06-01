Esql.ConnectionsIndexView = Ember.View.extend (
  
  templateName:         'templates/connections/index'
  connectionsBinding:   'Esql.connectionsController'  
  tagName: 'div'
  classNames: ['accordion']
  
  newConnection: ->
    Esql.ConnectionsFormView.create().appendTo($('body'))         
)