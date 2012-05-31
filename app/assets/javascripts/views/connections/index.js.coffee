Esql.ConnectionsIndexView = Ember.View.extend (
  
  templateName:         'templates/connections/index'
  connectionsBinding:   'Esql.connectionsController'  
  tagName: 'div'
  classNames: ['accordion']
  
  newConnection: ->
    console.log @
    Esql.ConnectionsFormView.create().appendTo($('body'))         
)