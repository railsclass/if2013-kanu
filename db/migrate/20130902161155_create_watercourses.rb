class CreateWatercourses < ActiveRecord::Migration
  def change
    create_table :watercourses do |t|
      t.string :name

      t.timestamps
    end
  end
end
