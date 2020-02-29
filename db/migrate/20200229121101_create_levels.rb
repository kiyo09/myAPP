class CreateLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :levels do |t|
      t.integer :user_id
      t.integer :post_id
      t.integer :level
      t.timestamps
    end
  end
end
