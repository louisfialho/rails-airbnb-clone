class Removereferencesfromreviews < ActiveRecord::Migration[6.0]
  def change
    remove_reference(:reviews, :users, index: true, foreign_key: true)
    remove_reference(:reviews, :flats, index: true, foreign_key: true)
  end
end
