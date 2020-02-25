class AddSubtitleToMandaras < ActiveRecord::Migration[5.2]
  def change
    add_column :mandaras, :subtext1, :text
    add_column :mandaras, :subtext2, :text
    add_column :mandaras, :subtext3, :text
    add_column :mandaras, :subtext4, :text
    add_column :mandaras, :subtext6, :text
    add_column :mandaras, :subtext7, :text
    add_column :mandaras, :subtext8, :text
    add_column :mandaras, :subtext9, :text
  end
end
