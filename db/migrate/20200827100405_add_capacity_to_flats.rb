class AddCapacityToFlats < ActiveRecord::Migration[6.0]
  def change
    add_column :flats, :capacity, :integer
  end
end
