Esql.TablesIndexView = Ember.View.extend (
  
  templateName:         'templates/connections/tables/index'  
  tagName: ''
  classNames: []
  
  didInsertElement: ->
    console.log 'self', @, 'tables', @get('tables')
  
  newConnection: ->
    Esql.TablesFormView.create().appendTo($('body'))
)