class CreateMonths < ActiveRecord::Migration[5.2]
  def change
    create_table :months do |t|
      t.integer :month
      t.integer :target
      t.text :text
      t.text :Feedback
      t.boolean :checkbox
      t.timestamps
    end
  end
end
