class ChangeDatatypeTitleOfYear < ActiveRecord::Migration[5.2]
  def change
    change_column :years, :title, 'string'
  end
end
