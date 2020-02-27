class AddNumToMonths < ActiveRecord::Migration[5.2]
  def change
    add_column :months, :num, :integer
  end
end
