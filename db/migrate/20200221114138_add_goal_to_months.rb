class AddGoalToMonths < ActiveRecord::Migration[5.2]
  def change
    add_column :months, :goal, :text
  end
end
