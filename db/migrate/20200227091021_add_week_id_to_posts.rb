class AddWeekIdToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :week, :integer
  end
end
