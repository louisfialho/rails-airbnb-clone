class RemoveAverageRatingFromFlats < ActiveRecord::Migration[6.0]
  def change
    remove_column :flats, :average_review
  end
end
