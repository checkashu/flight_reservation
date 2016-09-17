class AddDateToFlights < ActiveRecord::Migration
  def change
    add_column :flights, :date, :date
    add_column :flights, :origin, :string
    add_column :flights, :destination, :string
    add_column :flights, :time, :time
    add_column :flights, :price, :integer
  end
end
