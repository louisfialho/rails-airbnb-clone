class CreateFlats < ActiveRecord::Migration[6.0]
  def change
    create_table :flats do |t|
      t.string :title
      t.string :description
      t.string :lcation
      t.integer :price
      t.integer :average_review

      t.timestamps
    end
  end
end
