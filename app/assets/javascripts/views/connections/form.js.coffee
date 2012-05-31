Esql.ConnectionsFormView = Ember.View.extend (
  classNames: ['modal']  
  templateName:         'templates/connections/form'
  
  didInsertElement: ->
    @$().modal()
    
  confirmSaveConnection: (e)->
    e.preventDefault()
    console.log 'adapter id', @get('adapter_id'), 'adapter', @get('adapter'), 'this',  @
    Esql.connectionsController.createConnection
      name: @get('name')
      username: @get('username')
      password: @get('password')
      adapter:  @get('adapter')
    
    @closeModal()
      
  cancelSaveConnection: ->
    @closeModal()
  
  closeModal: ->
    @$().modal('hide').remove()         
)