Esql.connectionsController = Ember.ArrayController.create
  content: Esql.store.findAll(Esql.Connection)
  
  createConnection: (connection) ->
    connection = Esql.store.createRecord(Esql.Connection, connection)
    Esql.store.commit()
    
  updateConnection: (connection) ->
    Esql.store.updateRecord(Esql.Connection, connection)
    Esql.store.commit()    
