class AddYearToMonths < ActiveRecord::Migration[5.2]
  def change
    add_column :months, :year, :integer
  end
end
