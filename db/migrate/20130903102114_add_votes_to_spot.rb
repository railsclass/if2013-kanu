class AddVotesToSpot < ActiveRecord::Migration
  def change
    add_column :spots, :votes, :integer
  end
end
