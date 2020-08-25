class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :text
      t.integer :rating
      t.references :users, null: false, foreign_key: true
      t.references :flats, null: false, foreign_key: true

      t.timestamps
    end
  end
end
