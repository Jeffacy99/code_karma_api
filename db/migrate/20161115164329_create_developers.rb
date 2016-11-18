# Developers table, only developers can earn karma points.
class CreateDevelopers < ActiveRecord::Migration[5.0]
  def change
    create_table :developers do |t|
      t.integer :karma_points, default: 0

      t.timestamps
    end
  end
end
