class AddUserIdToMandaras < ActiveRecord::Migration[5.2]
  def change
    add_column :mandaras, :user_id, :integer
  end
end
