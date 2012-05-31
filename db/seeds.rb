# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Adapter.transaction do
  ['postgresql', 'mysql2'].each do |item|
    adapter = Adapter.where(:name => item).first
    unless adapter
      Adapter.new({:name => item}).save()
    end
  end
end