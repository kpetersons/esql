Esql.adaptersController = Ember.ArrayController.create
  content: Esql.store.findAll(Esql.Adapter)
  
  adapters: (->
    @get('content').recordCache
  ).property()
