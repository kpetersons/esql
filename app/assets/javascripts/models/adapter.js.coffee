Esql.Adapter = DS.Model.extend
  # == Attributes
  id:         DS.attr('number')
  name:       DS.attr('string')
  
  # == Relationships
  connections: DS.belongsTo('Esql.Connection')  
  
  # == URL
  url: 'adapter'

  
