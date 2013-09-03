class AddKmToSpot < ActiveRecord::Migration
  def change
    add_column :spots, :km, :integer
  end
end
