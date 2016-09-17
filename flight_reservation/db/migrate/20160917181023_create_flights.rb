class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :number 
    end
  end
end
