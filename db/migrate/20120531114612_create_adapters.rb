class CreateAdapters < ActiveRecord::Migration
  def change
    create_table :adapters do |t|
      t.string :name

      t.timestamps
    end
    
    change_table :db_connections do |t|
      t.references :adapter
    end    
  end
end
