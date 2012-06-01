Esql.Table = DS.Model.extend
  # == Attributes
  id:         DS.attr('string')
  name:       DS.attr('string')
  
  # == Relationships
  connection: DS.belongsTo('Esql.Connection')  
  
  # == URL
  url: 'table' 