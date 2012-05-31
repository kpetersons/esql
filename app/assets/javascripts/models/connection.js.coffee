Esql.Connection = DS.Model.extend

  # == Attributes
  id:         DS.attr('number')
  name:       DS.attr('string')
  username:   DS.attr('string')
  password:   DS.attr('string')
  
  # == Relationships
  adapter: DS.belongsTo('Esql.Adapter')

  # == URL  
  url: 'connection'

  
