class ChangeLocationInFlats < ActiveRecord::Migration[6.0]
  def change
    rename_column :flats, :lcation, :location
  end
end
