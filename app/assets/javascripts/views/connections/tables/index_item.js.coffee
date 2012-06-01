Esql.TablesIndexItemView = Ember.View.extend (
  
  templateName:         'templates/connections/tables/index_item'
  tagName:        'li'
  classNames:     ['']

  didInsertElement: ->
    
 
  showTableDetails: (e)-> 
    console.log 'table', @get('table'), 'table name', @get('table').get('tableName'), 'table connection', @get('table').get('connection_id')
)