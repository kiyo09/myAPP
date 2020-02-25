class CreateSubskills < ActiveRecord::Migration[5.2]
  def change
    create_table :subskills do |t|
      t.references :mandara, foreign_key: true
      # -------------------------
      t.text :subskill2_1
      t.text :subskill2_2
      t.text :subskill2_3
      t.text :subskill2_4
      t.text :subskill2_6
      t.text :subskill2_7
      t.text :subskill2_8
      t.text :subskill2_9
      # -------------------------
      t.text :subskill3_1
      t.text :subskill3_2
      t.text :subskill3_3
      t.text :subskill3_4
      t.text :subskill3_6
      t.text :subskill3_7
      t.text :subskill3_8
      t.text :subskill3_9
      # -------------------------
      t.text :subskill4_1
      t.text :subskill4_2
      t.text :subskill4_3
      t.text :subskill4_4
      t.text :subskill4_6
      t.text :subskill4_7
      t.text :subskill4_8
      t.text :subskill4_9
      # -------------------------
      t.text :subskill5_1
      t.text :subskill5_2
      t.text :subskill5_3
      t.text :subskill5_4
      t.text :subskill5_6
      t.text :subskill5_7
      t.text :subskill5_8
      t.text :subskill5_9
      # -------------------------
      t.text :subskill6_1
      t.text :subskill6_2
      t.text :subskill6_3
      t.text :subskill6_4
      t.text :subskill6_6
      t.text :subskill6_7
      t.text :subskill6_8
      t.text :subskill6_9
      # -------------------------
      t.text :subskill7_1
      t.text :subskill7_2
      t.text :subskill7_3
      t.text :subskill7_4
      t.text :subskill7_6
      t.text :subskill7_7
      t.text :subskill7_8
      t.text :subskill7_9
      # -------------------------
      t.text :subskill8_1
      t.text :subskill8_2
      t.text :subskill8_3
      t.text :subskill8_4
      t.text :subskill8_6
      t.text :subskill8_7
      t.text :subskill8_8
      t.text :subskill8_9
      # -------------------------
      t.text :subskill9_1
      t.text :subskill9_2
      t.text :subskill9_3
      t.text :subskill9_4
      t.text :subskill9_6
      t.text :subskill9_7
      t.text :subskill9_8
      t.text :subskill9_9

      t.boolean :checkbox
      t.timestamps
    end
  end
end
