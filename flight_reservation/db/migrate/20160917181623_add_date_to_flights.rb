class AddDateToFlights < ActiveRecord::Migration
  def change
    add_column :flights, :origin, :string
    add_column :flights, :destination, :string
    add_column :flights, :datetime, :datetime
    add_column :flights, :price, :integer
  end
end
