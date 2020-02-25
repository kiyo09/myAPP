class AddMandaraIdToSubskills < ActiveRecord::Migration[5.2]
  def change
    add_column :subskills, :mandara_id, :integer
  end
end
