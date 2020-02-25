class CreateMandaras < ActiveRecord::Migration[5.2]
  def change
    create_table :mandaras do |t|
      t.text :text
      t.boolean :checkbox
      t.timestamps
    end
  end
end
