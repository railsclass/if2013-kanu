class AddWatercourseIdToSpot < ActiveRecord::Migration
  def change
    add_column :spots, :watercourse_id, :integer
  end
end
