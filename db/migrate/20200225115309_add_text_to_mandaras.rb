class AddTextToMandaras < ActiveRecord::Migration[5.2]
  def change
    add_column :mandaras, :text, :text
  end
end
