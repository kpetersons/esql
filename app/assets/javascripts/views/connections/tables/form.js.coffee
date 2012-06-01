Esql.TablesFormView = Ember.View.extend (
  classNames: ['modal']  
  templateName:         'templates/connections/tables/form'
  
  didInsertElement: ->
    @$().modal()
    
  confirmSaveConnection: (e)->
    @closeModal()
      
  cancelSaveConnection: ->
    @closeModal()
  
  closeModal: ->
    @$().modal('hide').remove()         
)