class AddReferencesToFlats < ActiveRecord::Migration[6.0]
  def change
    add_reference :flats, :host, null: false, foreign_key: { to_table: :users }
  end
end
