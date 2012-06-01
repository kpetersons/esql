Esql.Connection = DS.Model.extend

  # == Attributes
  id:         DS.attr('number')
  name:       DS.attr('string')
  username:   DS.attr('string')
  password:   DS.attr('string')
  
  # == Relationships
  adapter: DS.belongsTo('Esql.Adapter')
  tables: DS.hasMany('Esql.Table')

  # == URL  
  url: 'connection'
  
  # == Runtime attributes
  isOpen: false
  
  connectionTables: (->
    return Esql.store.find(Esql.Table, {connection_id: @get('id')})
  ).property()
  
