class AddMonthToWeeks < ActiveRecord::Migration[5.2]
  def change
    add_column :weeks, :month, :integer
  end
end
