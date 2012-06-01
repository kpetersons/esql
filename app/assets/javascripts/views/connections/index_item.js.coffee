Esql.ConnectionsIndexItemView = Ember.View.extend (
  
  templateName:    'templates/connections/index_item'
  tagName:        'li'
  classNames:     ['']
 
  toggleConnectionDetails: (e)->
    @get('connection').set('isOpen', !@get('connection').get('isOpen'))
    console.log @get('connection').get('connectionTables')         
)