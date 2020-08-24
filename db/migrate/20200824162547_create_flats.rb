class CreateFlats < ActiveRecord::Migration[6.0]
  def change
    create_table :flats do |t|
      t.string :title
      t.string :description
      t.string :location
      t.integer :price
      t.string :average_rating

      t.timestamps
    end
  end
end
