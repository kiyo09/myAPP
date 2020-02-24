class CreateYears < ActiveRecord::Migration[5.2]
  def change
    create_table :years do |t|
      t.integer :year
      t.integer :title
      t.text :kgi
      t.text :kpi
      t.text :kdi
      t.timestamps
    end
  end
end
