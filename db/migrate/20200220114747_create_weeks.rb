class CreateWeeks < ActiveRecord::Migration[5.2]
  def change
    create_table :weeks do |t|
      t.integer :week
      t.text :text
      t.text :Feedback
      t.boolean :checkbox
      t.timestamps
    end
  end
end
