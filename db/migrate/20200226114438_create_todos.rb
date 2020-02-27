class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.integer :user_id
      t.text :todo1
      t.boolean :checkbox1
      t.text :todo3
      t.boolean :checkbox3
      t.text :todo5
      t.boolean :checkbox5
      t.timestamps
    end
  end
end
