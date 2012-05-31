class CreateDbConnections < ActiveRecord::Migration
  def change
    create_table :db_connections do |t|
      t.string :name
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
